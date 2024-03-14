package com.android.quickstep;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import android.view.IRemoteAnimationFinishedCallback;
import android.view.IRemoteAnimationRunner;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.ViewRootImpl;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.window.BackEvent;
import android.window.BackMotionEvent;
import android.window.BackProgressAnimator;
import android.window.IOnBackInvokedCallback;
import com.android.internal.view.AppearanceRegion;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.QuickstepTransitionManager;
import com.android.launcher3.Utilities;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.quickstep.LauncherBackAnimationController;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
/* loaded from: classes.dex */
public class LauncherBackAnimationController {
    private static final int CANCEL_TRANSITION_DURATION = 233;
    private static final float MAX_SCRIM_ALPHA_DARK = 0.8f;
    private static final float MAX_SCRIM_ALPHA_LIGHT = 0.2f;
    private static final float MIN_WINDOW_SCALE = 0.85f;
    private static final int SCRIM_FADE_DURATION = 233;
    private static final float UPDATE_SYSUI_FLAGS_THRESHOLD = 0.2f;
    private IRemoteAnimationFinishedCallback mAnimationFinishedCallback;
    private IOnBackInvokedCallback mBackCallback;
    private RemoteAnimationTarget mBackTarget;
    private final Interpolator mCancelInterpolator;
    private final QuickstepLauncher mLauncher;
    private boolean mOverridingStatusBarFlags;
    private final QuickstepTransitionManager mQuickstepTransitionManager;
    private float mScrimAlpha;
    private ValueAnimator mScrimAlphaAnimator;
    private SurfaceControl mScrimLayer;
    private final int mWindowMaxDeltaY;
    private final float mWindowScaleEndCornerRadius;
    private final int mWindowScaleMarginX;
    private final float mWindowScaleStartCornerRadius;
    private final Matrix mTransformMatrix = new Matrix();
    private final Rect mStartRect = new Rect();
    private final RectF mCancelRect = new RectF();
    private final RectF mCurrentRect = new RectF();
    private final PointF mInitialTouchPos = new PointF();
    private SurfaceControl.Transaction mTransaction = new SurfaceControl.Transaction();
    private boolean mSpringAnimationInProgress = false;
    private boolean mAnimatorSetInProgress = false;
    private float mBackProgress = 0.0f;
    private boolean mBackInProgress = false;
    private BackProgressAnimator mProgressAnimator = new BackProgressAnimator();

    /* renamed from: com.android.quickstep.LauncherBackAnimationController$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends IOnBackInvokedCallback.Stub {

        /* renamed from: d */
        public static final /* synthetic */ int f5491d = 0;
        final /* synthetic */ Handler val$handler;

        public AnonymousClass1(Handler handler) {
            LauncherBackAnimationController.this = r1;
            this.val$handler = handler;
        }

        public /* synthetic */ void lambda$onBackCancelled$0() {
            LauncherBackAnimationController.this.mProgressAnimator.onBackCancelled(new Q(2, LauncherBackAnimationController.this));
        }

        public /* synthetic */ void lambda$onBackInvoked$1() {
            LauncherBackAnimationController.this.startTransition();
            LauncherBackAnimationController.this.mProgressAnimator.reset();
        }

        public /* synthetic */ void lambda$onBackProgressed$2(BackMotionEvent backMotionEvent) {
            LauncherBackAnimationController.this.mProgressAnimator.onBackProgressed(backMotionEvent);
        }

        public /* synthetic */ void lambda$onBackStarted$3(BackEvent backEvent) {
            LauncherBackAnimationController.this.mBackProgress = backEvent.getProgress();
            LauncherBackAnimationController launcherBackAnimationController = LauncherBackAnimationController.this;
            launcherBackAnimationController.mBackProgress = 1.0f - ((1.0f - LauncherBackAnimationController.this.mBackProgress) * ((1.0f - LauncherBackAnimationController.this.mBackProgress) * (1.0f - launcherBackAnimationController.mBackProgress)));
            LauncherBackAnimationController launcherBackAnimationController2 = LauncherBackAnimationController.this;
            launcherBackAnimationController2.updateBackProgress(launcherBackAnimationController2.mBackProgress, backEvent);
        }

        public /* synthetic */ void lambda$onBackStarted$4(BackMotionEvent backMotionEvent) {
            LauncherBackAnimationController.this.startBack(backMotionEvent);
            LauncherBackAnimationController.this.mProgressAnimator.onBackStarted(backMotionEvent, new BackProgressAnimator.ProgressCallback() { // from class: com.android.quickstep.S
                public final void onProgressUpdate(BackEvent backEvent) {
                    LauncherBackAnimationController.AnonymousClass1.this.lambda$onBackStarted$3(backEvent);
                }
            });
        }

        public void onBackCancelled() {
            this.val$handler.post(new Q(0, this));
        }

        public void onBackInvoked() {
            this.val$handler.post(new Q(1, this));
        }

        public void onBackProgressed(BackMotionEvent backMotionEvent) {
            this.val$handler.post(new P(this, backMotionEvent, 1));
        }

        public void onBackStarted(BackMotionEvent backMotionEvent) {
            this.val$handler.post(new P(this, backMotionEvent, 0));
        }
    }

    public LauncherBackAnimationController(QuickstepLauncher quickstepLauncher, QuickstepTransitionManager quickstepTransitionManager) {
        this.mLauncher = quickstepLauncher;
        this.mQuickstepTransitionManager = quickstepTransitionManager;
        this.mWindowScaleEndCornerRadius = QuickStepContract.supportsRoundedCornersOnWindows(quickstepLauncher.getResources()) ? quickstepLauncher.getResources().getDimensionPixelSize(R.dimen.swipe_back_window_corner_radius) : 0.0f;
        this.mWindowScaleStartCornerRadius = QuickStepContract.getWindowCornerRadius(quickstepLauncher);
        this.mWindowScaleMarginX = quickstepLauncher.getResources().getDimensionPixelSize(R.dimen.swipe_back_window_scale_x_margin);
        this.mWindowMaxDeltaY = quickstepLauncher.getResources().getDimensionPixelSize(R.dimen.swipe_back_window_max_delta_y);
        this.mCancelInterpolator = AnimationUtils.loadInterpolator(quickstepLauncher, R.interpolator.standard_interpolator);
    }

    private void applyTransform(RectF rectF, float f4) {
        float width = rectF.width() / this.mStartRect.width();
        this.mTransformMatrix.reset();
        this.mTransformMatrix.setScale(width, width);
        this.mTransformMatrix.postTranslate(rectF.left, rectF.top);
        if (this.mBackTarget.leash.isValid()) {
            this.mTransaction.setMatrix(this.mBackTarget.leash, this.mTransformMatrix, new float[9]);
            this.mTransaction.setWindowCrop(this.mBackTarget.leash, this.mStartRect);
            this.mTransaction.setCornerRadius(this.mBackTarget.leash, f4);
        }
        this.mTransaction.apply();
    }

    public void customizeStatusBarAppearance(boolean z4) {
        AppearanceRegion appearanceRegion;
        if (this.mOverridingStatusBarFlags == z4) {
            return;
        }
        this.mOverridingStatusBarFlags = z4;
        boolean z5 = (this.mLauncher.getWindow().getDecorView().getSystemUiVisibility() & 8192) == 0;
        if (this.mOverridingStatusBarFlags) {
            appearanceRegion = new AppearanceRegion(z5 ? 0 : 8, this.mBackTarget.windowConfiguration.getBounds());
        } else {
            appearanceRegion = null;
        }
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).customizeStatusBarAppearance(appearanceRegion);
    }

    public void finishAnimation() {
        this.mBackTarget = null;
        this.mBackInProgress = false;
        this.mBackProgress = 0.0f;
        this.mTransformMatrix.reset();
        this.mCancelRect.setEmpty();
        this.mCurrentRect.setEmpty();
        this.mStartRect.setEmpty();
        this.mInitialTouchPos.set(0.0f, 0.0f);
        this.mAnimatorSetInProgress = false;
        this.mSpringAnimationInProgress = false;
        this.mOverridingStatusBarFlags = false;
        IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback = this.mAnimationFinishedCallback;
        if (iRemoteAnimationFinishedCallback != null) {
            try {
                iRemoteAnimationFinishedCallback.onAnimationFinished();
            } catch (RemoteException e4) {
                Log.w("ShellBackPreview", "Failed call onBackAnimationFinished", e4);
            }
            this.mAnimationFinishedCallback = null;
        }
        ValueAnimator valueAnimator = this.mScrimAlphaAnimator;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.mScrimAlphaAnimator.cancel();
        this.mScrimAlphaAnimator = null;
    }

    public /* synthetic */ void lambda$resetPositionAnimated$0(ValueAnimator valueAnimator) {
        updateCancelProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public /* synthetic */ void lambda$startTransitionAnimations$1(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (this.mScrimLayer.isValid()) {
            this.mTransaction.setAlpha(this.mScrimLayer, floatValue * this.mScrimAlpha);
            this.mTransaction.apply();
        }
    }

    public void resetPositionAnimated() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mCancelRect.set(this.mCurrentRect);
        ofFloat.setDuration(233L);
        ofFloat.setInterpolator(this.mCancelInterpolator);
        ofFloat.addUpdateListener(new O(this, 0));
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.LauncherBackAnimationController.3
            {
                LauncherBackAnimationController.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                LauncherBackAnimationController.this.customizeStatusBarAppearance(false);
                LauncherBackAnimationController.this.finishAnimation();
            }
        });
        ofFloat.start();
    }

    public void resetScrim() {
        removeScrimLayer();
        this.mScrimAlpha = 0.0f;
    }

    public void startBack(BackMotionEvent backMotionEvent) {
        this.mBackInProgress = true;
        RemoteAnimationTarget departingAnimationTarget = backMotionEvent.getDepartingAnimationTarget();
        if (departingAnimationTarget == null) {
            return;
        }
        this.mTransaction.show(departingAnimationTarget.leash).setAnimationTransaction();
        this.mBackTarget = departingAnimationTarget;
        this.mInitialTouchPos.set(backMotionEvent.getTouchX(), backMotionEvent.getTouchY());
        this.mStartRect.set(departingAnimationTarget.windowConfiguration.getMaxBounds());
        this.mCurrentRect.set(this.mStartRect);
        addScrimLayer();
        this.mTransaction.apply();
    }

    public void startTransition() {
        if (this.mBackTarget == null) {
            finishAnimation();
        } else if (this.mLauncher.isDestroyed()) {
        } else {
            if (this.mLauncher.hasSomeInvisibleFlag(8)) {
                this.mLauncher.addForceInvisibleFlag(4);
                this.mLauncher.getStateManager().moveToRestState();
            }
            AbstractFloatingView.closeAllOpenViewsExcept(this.mLauncher, false, AbstractFloatingView.TYPE_REBIND_SAFE);
            float f4 = this.mBackProgress;
            float f5 = this.mWindowScaleStartCornerRadius;
            float f6 = this.mWindowScaleEndCornerRadius;
            String[] strArr = Utilities.EMPTY_STRING_ARRAY;
            Pair createWallpaperOpenAnimations = this.mQuickstepTransitionManager.createWallpaperOpenAnimations(new RemoteAnimationTarget[]{this.mBackTarget}, false, this.mCurrentRect, w.f.a(f6, f5, f4, f5), this.mBackInProgress);
            startTransitionAnimations((RectFSpringAnim) createWallpaperOpenAnimations.first, (AnimatorSet) createWallpaperOpenAnimations.second);
            this.mLauncher.clearForceInvisibleFlag(15);
        }
    }

    private void startTransitionAnimations(RectFSpringAnim rectFSpringAnim, AnimatorSet animatorSet) {
        this.mAnimatorSetInProgress = animatorSet != null;
        this.mSpringAnimationInProgress = rectFSpringAnim != null;
        if (rectFSpringAnim != null) {
            rectFSpringAnim.addAnimatorListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.LauncherBackAnimationController.4
                {
                    LauncherBackAnimationController.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    LauncherBackAnimationController.this.mSpringAnimationInProgress = false;
                    LauncherBackAnimationController.this.tryFinishBackAnimation();
                }
            });
        }
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.LauncherBackAnimationController.5
            {
                LauncherBackAnimationController.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                LauncherBackAnimationController.this.mAnimatorSetInProgress = false;
                LauncherBackAnimationController.this.tryFinishBackAnimation();
            }
        });
        new ValueAnimator();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        this.mScrimAlphaAnimator = ofFloat;
        ofFloat.addUpdateListener(new O(this, 1));
        this.mScrimAlphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.LauncherBackAnimationController.6
            {
                LauncherBackAnimationController.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                LauncherBackAnimationController.this.resetScrim();
            }
        });
        this.mScrimAlphaAnimator.setDuration(233L).start();
        animatorSet.start();
    }

    public void tryFinishBackAnimation() {
        if (this.mSpringAnimationInProgress || this.mAnimatorSetInProgress) {
            return;
        }
        finishAnimation();
    }

    public void updateBackProgress(float f4, BackEvent backEvent) {
        if (!this.mBackInProgress || this.mBackTarget == null) {
            return;
        }
        float width = this.mStartRect.width();
        float height = this.mStartRect.height();
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        float f5 = (((-0.14999998f) * f4) + 1.0f) * width;
        float f6 = (height / width) * f5;
        float a4 = w.f.a(height, f6, 0.5f, ((float) Math.sin(((backEvent.getTouchY() - this.mInitialTouchPos.y) / height) * 3.141592653589793d * 0.5d)) * this.mWindowMaxDeltaY * f4);
        float f7 = backEvent.getSwipeEdge() == 1 ? this.mWindowScaleMarginX * f4 : (width - (this.mWindowScaleMarginX * f4)) - f5;
        this.mCurrentRect.set(f7, a4, f5 + f7, f6 + a4);
        float f8 = this.mWindowScaleStartCornerRadius;
        applyTransform(this.mCurrentRect, w.f.a(this.mWindowScaleEndCornerRadius, f8, f4, f8));
        customizeStatusBarAppearance(f4 > 0.2f);
    }

    private void updateCancelProgress(float f4) {
        if (this.mBackTarget == null) {
            return;
        }
        RectF rectF = this.mCurrentRect;
        RectF rectF2 = this.mCancelRect;
        float f5 = rectF2.left;
        Rect rect = this.mStartRect;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        float a4 = w.f.a(rect.left, f5, f4, f5);
        float f6 = rectF2.top;
        float a5 = w.f.a(rect.top, f6, f4, f6);
        float f7 = rectF2.right;
        float a6 = w.f.a(rect.right, f7, f4, f7);
        float f8 = rectF2.bottom;
        rectF.set(a4, a5, a6, ((rect.bottom - f8) * f4) + f8);
        float f9 = this.mBackProgress;
        float f10 = this.mWindowScaleStartCornerRadius;
        float a7 = w.f.a(this.mWindowScaleEndCornerRadius, f10, f9, f10);
        applyTransform(this.mCurrentRect, w.f.a(f10, a7, f4, a7));
    }

    public void addScrimLayer() {
        ViewRootImpl viewRootImpl = this.mLauncher.getDragLayer().getViewRootImpl();
        SurfaceControl surfaceControl = viewRootImpl != null ? viewRootImpl.getSurfaceControl() : null;
        boolean isDarkTheme = Utilities.isDarkTheme(this.mLauncher);
        SurfaceControl build = new SurfaceControl.Builder().setName("Back to launcher background scrim").setCallsite("LauncherBackAnimationController").setColorLayer().setParent(surfaceControl).setOpaque(false).setHidden(false).build();
        this.mScrimLayer = build;
        float[] fArr = {0.0f, 0.0f, 0.0f};
        this.mScrimAlpha = isDarkTheme ? MAX_SCRIM_ALPHA_DARK : 0.2f;
        this.mTransaction.setColor(build, fArr).setAlpha(this.mScrimLayer, this.mScrimAlpha).show(this.mScrimLayer);
    }

    public void registerBackCallbacks(Handler handler) {
        this.mBackCallback = new AnonymousClass1(handler);
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).setBackToLauncherCallback(this.mBackCallback, new IRemoteAnimationRunner.Stub() { // from class: com.android.quickstep.LauncherBackAnimationController.2
            {
                LauncherBackAnimationController.this = this;
            }

            public void onAnimationCancelled() {
            }

            public void onAnimationStart(int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback) {
                int length = remoteAnimationTargetArr.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        break;
                    }
                    RemoteAnimationTarget remoteAnimationTarget = remoteAnimationTargetArr[i5];
                    if (1 == remoteAnimationTarget.mode) {
                        LauncherBackAnimationController.this.mBackTarget = remoteAnimationTarget;
                        break;
                    }
                    i5++;
                }
                LauncherBackAnimationController.this.mAnimationFinishedCallback = iRemoteAnimationFinishedCallback;
            }
        });
    }

    public void removeScrimLayer() {
        SurfaceControl surfaceControl = this.mScrimLayer;
        if (surfaceControl == null) {
            return;
        }
        if (surfaceControl.isValid()) {
            this.mTransaction.remove(this.mScrimLayer).apply();
        }
        this.mScrimLayer = null;
    }

    public void unregisterBackCallbacks() {
        if (this.mBackCallback != null) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).clearBackToLauncherCallback(this.mBackCallback);
        }
        this.mProgressAnimator.reset();
        this.mBackCallback = null;
    }
}
