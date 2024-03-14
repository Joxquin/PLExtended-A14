package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.FloatProperty;
import android.util.Log;
import android.util.Pair;
import android.util.Size;
import android.view.CrossWindowBlurListeners;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationDefinition;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.window.RemoteTransition;
import android.window.TransitionFilter;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAnimationRunner;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.taskbar.LauncherTaskbarUIController;
import com.android.launcher3.testing.shared.ResourceUtils;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.ActivityOptionsWrapper;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.window.RefreshRateTracker;
import com.android.launcher3.views.FloatingIconView;
import com.android.launcher3.views.ScrimView;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.quickstep.LauncherBackAnimationController;
import com.android.quickstep.RemoteAnimationTargets;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.TaskAnimationManager;
import com.android.quickstep.TaskViewUtils;
import com.android.quickstep.util.MultiValueUpdateListener;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.quickstep.util.StaggeredWorkspaceAnim;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.SurfaceTransactionApplier;
import com.android.quickstep.util.TaskRestartedDuringLaunchListener;
import com.android.quickstep.views.FloatingWidgetView;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.animation.C0622c;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.BlurUtils;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.wm.shell.startingsurface.IStartingWindowListener;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class QuickstepTransitionManager implements DeviceProfile.OnDeviceProfileChangeListener {
    private static final boolean ENABLE_SHELL_STARTING_SURFACE = SystemProperties.getBoolean("persist.debug.shell_starting_surface", true);
    public static final Interpolator NAV_FADE_IN_INTERPOLATOR = new PathInterpolator(0.0f, 0.0f, 0.0f, 1.0f);
    public static final Interpolator NAV_FADE_OUT_INTERPOLATOR = new PathInterpolator(0.2f, 0.0f, 1.0f, 1.0f);
    private LauncherAnimationRunner.RemoteAnimationFactory mAppLaunchRunner;
    private LauncherBackAnimationController mBackAnimationController;
    private final float mClosingWindowTransY;
    private DeviceProfile mDeviceProfile;
    protected final DragLayer mDragLayer;
    private final AnimatorListenerAdapter mForceInvisibleListener;
    protected final Handler mHandler;
    private WallpaperOpenLauncherAnimationRunner mKeyguardGoingAwayRunner;
    protected final QuickstepLauncher mLauncher;
    private RemoteTransition mLauncherOpenTransition;
    private final float mMaxShadowRadius;
    private final Interpolator mOpeningInterpolator;
    private final Interpolator mOpeningXInterpolator;
    private final StartingWindowListener mStartingWindowListener;
    private LinkedHashMap mTaskStartParams;
    private WallpaperOpenLauncherAnimationRunner mWallpaperOpenRunner;
    private WallpaperOpenLauncherAnimationRunner mWallpaperOpenTransitionRunner;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.QuickstepTransitionManager$14  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass14 extends AnimationSuccessListener {
        final /* synthetic */ int val$cuj;

        /* renamed from: com.android.launcher3.QuickstepTransitionManager$14$1  reason: invalid class name */
        /* loaded from: classes.dex */
        final class AnonymousClass1 implements ViewTreeObserver.OnDrawListener {
            boolean mHandled = false;

            public AnonymousClass1() {
            }

            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                if (this.mHandled) {
                    return;
                }
                this.mHandled = true;
                AnonymousClass14 anonymousClass14 = AnonymousClass14.this;
                InteractionJankMonitorWrapper.begin(QuickstepTransitionManager.this.mDragLayer, anonymousClass14.val$cuj);
                QuickstepTransitionManager.this.mDragLayer.post(new I0(1, this));
            }
        }

        public AnonymousClass14(int i4) {
            this.val$cuj = i4;
        }

        @Override // com.android.launcher3.anim.AnimationSuccessListener, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
            InteractionJankMonitorWrapper.cancel(this.val$cuj);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            QuickstepTransitionManager.this.mDragLayer.getViewTreeObserver().addOnDrawListener(new AnonymousClass1());
            super.onAnimationStart(animator);
        }

        @Override // com.android.launcher3.anim.AnimationSuccessListener
        public final void onAnimationSuccess(Animator animator) {
            InteractionJankMonitorWrapper.end(this.val$cuj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.QuickstepTransitionManager$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends AnimatorListenerAdapter {

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f4485d;
        final /* synthetic */ Pair val$launcherContentAnimator;

        public /* synthetic */ AnonymousClass3(Pair pair, int i4) {
            this.f4485d = i4;
            this.val$launcherContentAnimator = pair;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            switch (this.f4485d) {
                case 0:
                    ((Runnable) this.val$launcherContentAnimator.second).run();
                    return;
                default:
                    ((Runnable) this.val$launcherContentAnimator.second).run();
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.QuickstepTransitionManager$4  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass4 extends AnimatorListenerAdapter {

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f4486d;
        final /* synthetic */ Object val$appsView;

        public /* synthetic */ AnonymousClass4(Object obj, int i4) {
            this.f4486d = i4;
            this.val$appsView = obj;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            switch (this.f4486d) {
                case 0:
                    ((View) this.val$appsView).setLayerType(0, null);
                    return;
                default:
                    ((RemoteAnimationTargets) this.val$appsView).release();
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.QuickstepTransitionManager$5  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass5 extends AnimatorListenerAdapter {

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f4487d;
        final /* synthetic */ QuickstepTransitionManager this$0;
        final /* synthetic */ Object val$openingTargets;
        final /* synthetic */ Object val$v;

        public /* synthetic */ AnonymousClass5(QuickstepTransitionManager quickstepTransitionManager, Object obj, Object obj2, int i4) {
            this.f4487d = i4;
            this.this$0 = quickstepTransitionManager;
            this.val$v = obj;
            this.val$openingTargets = obj2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            switch (this.f4487d) {
                case 0:
                    View view = (View) this.val$v;
                    if (view instanceof BubbleTextView) {
                        ((BubbleTextView) view).setStayPressed(false);
                    }
                    LauncherTaskbarUIController taskbarUIController = this.this$0.mLauncher.getTaskbarUIController();
                    if (taskbarUIController != null) {
                        taskbarUIController.showEduOnAppLaunch();
                    }
                    ((RemoteAnimationTargets) this.val$openingTargets).release();
                    return;
                default:
                    super.onAnimationEnd(animator);
                    return;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            switch (this.f4487d) {
                case 0:
                    LauncherTaskbarUIController taskbarUIController = this.this$0.mLauncher.getTaskbarUIController();
                    if (taskbarUIController == null || !taskbarUIController.shouldShowEduOnAppLaunch()) {
                        return;
                    }
                    Settings.Secure.putInt(this.this$0.mLauncher.getContentResolver(), "launcher_taskbar_education_showing", 1);
                    return;
                default:
                    QuickstepTransitionManager quickstepTransitionManager = this.this$0;
                    ((RectFSpringAnim) this.val$v).start(quickstepTransitionManager.mLauncher, quickstepTransitionManager.mDeviceProfile, (PointF) this.val$openingTargets);
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class AnimOpenProperties {
        public final int cropCenterXEnd;
        public final int cropCenterXStart;
        public final int cropCenterYEnd;
        public final int cropCenterYStart;
        public final int cropHeightEnd;
        public final int cropHeightStart;
        public final int cropWidthEnd;
        public final int cropWidthStart;
        public final float dX;
        public final float dY;
        public final float finalAppIconScale;
        public final float iconAlphaStart;
        public final float initialAppIconScale;

        public AnimOpenProperties(Resources resources, Rect rect, RectF rectF, View view, int i4, int i5, boolean z4, boolean z5) {
            float f4;
            float min = Math.min(rect.height(), rect.width());
            float width = min / rectF.width();
            float height = min / rectF.height();
            float f5 = 1.0f;
            if ((view instanceof BubbleTextView) && !(view.getParent() instanceof DeepShortcutView)) {
                FastBitmapDrawable icon = ((BubbleTextView) view).getIcon();
                if (icon instanceof FastBitmapDrawable) {
                    f4 = icon.getAnimatedScale();
                    this.initialAppIconScale = f4;
                    this.finalAppIconScale = Math.max(width, height);
                    this.dX = (rect.centerX() - i4) - rectF.centerX();
                    this.dY = (rect.centerY() - i5) - rectF.centerY();
                    if (z4 && !z5) {
                        f5 = 0.0f;
                    }
                    this.iconAlphaStart = f5;
                    int dimenByName = ResourceUtils.getDimenByName(108, resources, "starting_surface_icon_size");
                    this.cropCenterXStart = rect.centerX();
                    this.cropCenterYStart = rect.centerY();
                    this.cropWidthStart = dimenByName;
                    this.cropHeightStart = dimenByName;
                    this.cropWidthEnd = rect.width();
                    this.cropHeightEnd = rect.height();
                    this.cropCenterXEnd = rect.centerX();
                    this.cropCenterYEnd = rect.centerY();
                }
            }
            f4 = 1.0f;
            this.initialAppIconScale = f4;
            this.finalAppIconScale = Math.max(width, height);
            this.dX = (rect.centerX() - i4) - rectF.centerX();
            this.dY = (rect.centerY() - i5) - rectF.centerY();
            if (z4) {
                f5 = 0.0f;
            }
            this.iconAlphaStart = f5;
            int dimenByName2 = ResourceUtils.getDimenByName(108, resources, "starting_surface_icon_size");
            this.cropCenterXStart = rect.centerX();
            this.cropCenterYStart = rect.centerY();
            this.cropWidthStart = dimenByName2;
            this.cropHeightStart = dimenByName2;
            this.cropWidthEnd = rect.width();
            this.cropHeightEnd = rect.height();
            this.cropCenterXEnd = rect.centerX();
            this.cropCenterYEnd = rect.centerY();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class AppLaunchAnimationRunner implements LauncherAnimationRunner.RemoteAnimationFactory {
        private final RunnableList mOnEndCallback;
        private final View mV;

        public AppLaunchAnimationRunner(View view, RunnableList runnableList) {
            this.mV = view;
            this.mOnEndCallback = runnableList;
        }

        @Override // com.android.launcher3.LauncherAnimationRunner.RemoteAnimationFactory, com.android.systemui.animation.v
        public final void onAnimationCancelled() {
            this.mOnEndCallback.executeAllAndDestroy();
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x006d  */
        @Override // com.android.launcher3.LauncherAnimationRunner.RemoteAnimationFactory, com.android.systemui.animation.v
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onAnimationStart(int r16, android.view.RemoteAnimationTarget[] r17, android.view.RemoteAnimationTarget[] r18, android.view.RemoteAnimationTarget[] r19, com.android.launcher3.LauncherAnimationRunner.AnimationResult r20) {
            /*
                r15 = this;
                r0 = r15
                r4 = r17
                android.animation.AnimatorSet r10 = new android.animation.AnimatorSet
                r10.<init>()
                com.android.launcher3.QuickstepTransitionManager r11 = com.android.launcher3.QuickstepTransitionManager.this
                boolean r12 = com.android.launcher3.QuickstepTransitionManager.l(r11, r4)
                android.view.View r1 = r0.mV
                boolean r2 = r1 instanceof com.android.launcher3.widget.LauncherAppWidgetHostView
                boolean r3 = r11.isLaunchingFromRecents(r1, r4)
                r13 = 1
                com.android.launcher3.uioverrides.QuickstepLauncher r14 = r11.mLauncher
                if (r2 == 0) goto L32
                com.android.launcher3.QuickstepTransitionManager r2 = com.android.launcher3.QuickstepTransitionManager.this
                r3 = r1
                com.android.launcher3.widget.LauncherAppWidgetHostView r3 = (com.android.launcher3.widget.LauncherAppWidgetHostView) r3
                r1 = r2
                r2 = r10
                r4 = r17
                r5 = r18
                r6 = r19
                r7 = r12
                com.android.launcher3.QuickstepTransitionManager.i(r1, r2, r3, r4, r5, r6, r7)
                r1 = 27
                com.android.launcher3.QuickstepTransitionManager.g(r11, r10, r1)
                goto L54
            L32:
                if (r3 == 0) goto L56
                android.view.View r2 = r0.mV
                com.android.launcher3.statemanager.StateManager r7 = r14.getStateManager()
                android.view.View r1 = r14.getOverviewPanel()
                r8 = r1
                com.android.quickstep.views.RecentsView r8 = (com.android.quickstep.views.RecentsView) r8
                com.android.launcher3.statehandlers.DepthController r9 = r14.getDepthController()
                r1 = r10
                r3 = r17
                r4 = r18
                r5 = r19
                r6 = r12
                com.android.quickstep.TaskViewUtils.composeRecentsLaunchAnimator(r1, r2, r3, r4, r5, r6, r7, r8, r9)
                r1 = 7
                com.android.launcher3.QuickstepTransitionManager.g(r11, r10, r1)
            L54:
                r1 = r13
                goto L6b
            L56:
                com.android.launcher3.QuickstepTransitionManager r1 = com.android.launcher3.QuickstepTransitionManager.this
                android.view.View r3 = r0.mV
                r2 = r10
                r4 = r17
                r5 = r18
                r6 = r19
                r7 = r12
                com.android.launcher3.QuickstepTransitionManager.h(r1, r2, r3, r4, r5, r6, r7)
                r1 = 8
                com.android.launcher3.QuickstepTransitionManager.g(r11, r10, r1)
                r1 = 0
            L6b:
                if (r12 == 0) goto L74
                android.animation.AnimatorListenerAdapter r2 = com.android.launcher3.QuickstepTransitionManager.c(r11)
                r10.addListener(r2)
            L74:
                com.android.launcher3.util.RunnableList r0 = r0.mOnEndCallback
                java.util.Objects.requireNonNull(r0)
                com.android.launcher3.i r2 = new com.android.launcher3.i
                r2.<init>(r0, r13)
                r0 = r20
                r0.setAnimation(r10, r14, r2, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.QuickstepTransitionManager.AppLaunchAnimationRunner.onAnimationStart(int, android.view.RemoteAnimationTarget[], android.view.RemoteAnimationTarget[], android.view.RemoteAnimationTarget[], com.android.launcher3.LauncherAnimationRunner$AnimationResult):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class ContainerAnimationRunner implements LauncherAnimationRunner.RemoteAnimationFactory {
        private final com.android.systemui.animation.v mDelegate;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.android.launcher3.QuickstepTransitionManager$ContainerAnimationRunner$1  reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass1 extends com.android.systemui.animation.g {
            @Override // com.android.systemui.animation.d
            public final boolean isBelowAnimatingWindow() {
                return true;
            }
        }

        private ContainerAnimationRunner(C0622c c0622c) {
            this.mDelegate = c0622c;
        }

        public static ContainerAnimationRunner a(View view, StartingWindowListener startingWindowListener, final RunnableList runnableList) {
            com.android.systemui.animation.j jVar;
            View view2 = view;
            while (true) {
                if (view2.getBackground() != null && (view2 instanceof com.android.systemui.animation.t)) {
                    break;
                } else if (!(view2.getParent() instanceof View)) {
                    view2 = null;
                    break;
                } else {
                    view2 = (View) view2.getParent();
                }
            }
            if (view2 != null) {
                view = view2;
            }
            kotlin.jvm.internal.h.e(view, "view");
            if (view instanceof com.android.systemui.animation.t) {
                if (view.getParent() instanceof ViewGroup) {
                    jVar = new com.android.systemui.animation.j(view);
                } else {
                    Log.e("ActivityLaunchAnimator", "Skipping animation as view " + view + " is not attached to a ViewGroup", new Exception());
                    jVar = null;
                }
                if (jVar == null) {
                    return null;
                }
                return new ContainerAnimationRunner(new C0622c(new AnonymousClass1(jVar), new J0(startingWindowListener), new com.android.systemui.animation.e() { // from class: com.android.launcher3.QuickstepTransitionManager.ContainerAnimationRunner.2
                    @Override // com.android.systemui.animation.e
                    public final void onLaunchAnimationEnd() {
                        RunnableList.this.executeAllAndDestroy();
                    }
                }, com.android.systemui.animation.f.f6063d, false));
            }
            throw new IllegalArgumentException("An ActivityLaunchAnimator.Controller was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected.");
        }

        @Override // com.android.launcher3.LauncherAnimationRunner.RemoteAnimationFactory, com.android.systemui.animation.v
        public final void onAnimationCancelled() {
            this.mDelegate.onAnimationCancelled();
        }

        @Override // com.android.launcher3.LauncherAnimationRunner.RemoteAnimationFactory, com.android.systemui.animation.v
        public final void onAnimationStart(int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, LauncherAnimationRunner.AnimationResult animationResult) {
            this.mDelegate.onAnimationStart(i4, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, animationResult);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class LaunchDepthController extends DepthController {
        public LaunchDepthController(QuickstepLauncher quickstepLauncher) {
            super(quickstepLauncher);
            setCrossWindowBlursEnabled(CrossWindowBlurListeners.getInstance().isCrossWindowBlurEnabled());
            this.stateDepth.setValue(quickstepLauncher.getDepthController().stateDepth.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class SpringAnimRunner implements RectFSpringAnim.OnUpdateListener {
        private final RemoteAnimationTarget[] mAppTargets;
        private final float mEndRadius;
        private final float mStartRadius;
        private final SurfaceTransactionApplier mSurfaceApplier;
        private final Rect mTmpRect;
        private final Rect mWindowTargetBounds;
        private final Matrix mMatrix = new Matrix();
        private final Point mTmpPos = new Point();
        private final Rect mCurrentRect = new Rect();

        public SpringAnimRunner(QuickstepTransitionManager quickstepTransitionManager, RemoteAnimationTarget[] remoteAnimationTargetArr, RectF rectF, Rect rect, float f4) {
            Rect rect2 = new Rect();
            this.mWindowTargetBounds = rect2;
            this.mTmpRect = new Rect();
            this.mAppTargets = remoteAnimationTargetArr;
            this.mStartRadius = f4;
            this.mEndRadius = Math.max(1.0f, rectF.width()) / 2.0f;
            this.mSurfaceApplier = new SurfaceTransactionApplier(quickstepTransitionManager.mDragLayer);
            rect2.set(rect);
        }

        public final float getCornerRadius(float f4) {
            String[] strArr = Utilities.EMPTY_STRING_ARRAY;
            float f5 = this.mEndRadius;
            float f6 = this.mStartRadius;
            return w.f.a(f5, f6, f4, f6);
        }

        @Override // com.android.quickstep.util.RectFSpringAnim.OnUpdateListener
        public void onUpdate(RectF rectF, float f4) {
            Rect rect;
            float min;
            SurfaceTransaction surfaceTransaction = new SurfaceTransaction();
            RemoteAnimationTarget[] remoteAnimationTargetArr = this.mAppTargets;
            for (int length = remoteAnimationTargetArr.length - 1; length >= 0; length--) {
                RemoteAnimationTarget remoteAnimationTarget = remoteAnimationTargetArr[length];
                SurfaceTransaction.SurfaceProperties forSurface = surfaceTransaction.forSurface(remoteAnimationTarget.leash);
                Rect rect2 = remoteAnimationTarget.localBounds;
                Point point = this.mTmpPos;
                if (rect2 != null) {
                    point.set(rect2.left, rect2.top);
                } else {
                    Point point2 = remoteAnimationTarget.position;
                    point.set(point2.x, point2.y);
                }
                int i4 = remoteAnimationTarget.mode;
                Matrix matrix = this.mMatrix;
                if (i4 == 1) {
                    rectF.round(this.mCurrentRect);
                    Rect rect3 = this.mWindowTargetBounds;
                    int height = rect3.height();
                    int width = rect3.width();
                    Rect rect4 = this.mTmpRect;
                    if (height > width) {
                        min = Math.min(1.0f, rectF.width() / rect3.width());
                        rect4.set(0, 0, rect3.width(), rect3.height() - (rect3.height() - ((int) (rect.height() * (1.0f / min)))));
                    } else {
                        min = Math.min(1.0f, rectF.height() / rect3.height());
                        rect4.set(0, 0, rect3.width() - (rect3.width() - ((int) (rect.width() * (1.0f / min)))), rect3.height());
                    }
                    float f5 = min;
                    matrix.setScale(f5, f5);
                    matrix.postTranslate(rect.left, rect.top);
                    forSurface.setMatrix(matrix).setWindowCrop(rect4).setAlpha(f4 > 0.0f ? f4 >= 0.85f ? 0.0f : Utilities.mapToRange(f4, 0.0f, 0.85f, 1.0f, 0.0f, y0.e.f12959w) : 1.0f).setCornerRadius(getCornerRadius(f4) / f5);
                } else if (i4 == 0) {
                    matrix.setTranslate(point.x, point.y);
                    forSurface.setMatrix(matrix).setAlpha(1.0f);
                }
            }
            this.mSurfaceApplier.scheduleApply(surfaceTransaction);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class StartingWindowListener extends IStartingWindowListener.Stub {
        private int mBackgroundColor;
        private QuickstepTransitionManager mTransitionManager;

        public StartingWindowListener() {
        }

        public final int getBackgroundColor() {
            int i4 = this.mBackgroundColor;
            return i4 == 0 ? QuickstepTransitionManager.this.mLauncher.getScrimView().getBackgroundColor() : i4;
        }

        @Override // com.android.wm.shell.startingsurface.IStartingWindowListener
        public final void onTaskLaunching(int i4, int i5, int i6) {
            this.mTransitionManager.mTaskStartParams.put(Integer.valueOf(i4), Pair.create(Integer.valueOf(i5), Integer.valueOf(i6)));
            this.mBackgroundColor = i6;
        }

        public final void setTransitionManager(QuickstepTransitionManager quickstepTransitionManager) {
            this.mTransitionManager = quickstepTransitionManager;
        }
    }

    /* loaded from: classes.dex */
    public final class WallpaperOpenLauncherAnimationRunner implements LauncherAnimationRunner.RemoteAnimationFactory {
        private final boolean mFromUnlock;

        public WallpaperOpenLauncherAnimationRunner(boolean z4) {
            this.mFromUnlock = z4;
        }

        @Override // com.android.launcher3.LauncherAnimationRunner.RemoteAnimationFactory, com.android.systemui.animation.v
        public final void onAnimationStart(int i4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, LauncherAnimationRunner.AnimationResult animationResult) {
            QuickstepTransitionManager quickstepTransitionManager = QuickstepTransitionManager.this;
            boolean isDestroyed = quickstepTransitionManager.mLauncher.isDestroyed();
            QuickstepLauncher quickstepLauncher = quickstepTransitionManager.mLauncher;
            if (isDestroyed) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.play(quickstepTransitionManager.getFallbackClosingWindowAnimators(remoteAnimationTargetArr));
                animationResult.setAnimation(animatorSet, quickstepLauncher.getApplicationContext(), null, true);
                return;
            }
            if (quickstepLauncher.hasSomeInvisibleFlag(8)) {
                quickstepLauncher.addForceInvisibleFlag(4);
                quickstepLauncher.getStateManager().moveToRestState();
            }
            Pair createWallpaperOpenAnimations = quickstepTransitionManager.createWallpaperOpenAnimations(remoteAnimationTargetArr, this.mFromUnlock, new RectF(quickstepTransitionManager.getWindowTargetBounds(remoteAnimationTargetArr, QuickstepTransitionManager.getRotationChange(remoteAnimationTargetArr))), QuickStepContract.getWindowCornerRadius(quickstepTransitionManager.mLauncher), false);
            TaskViewUtils.createSplitAuxiliarySurfacesAnimator(remoteAnimationTargetArr3, false, null);
            quickstepLauncher.clearForceInvisibleFlag(15);
            animationResult.setAnimation((AnimatorSet) createWallpaperOpenAnimations.second, quickstepLauncher, null, true);
        }
    }

    public QuickstepTransitionManager(Context context) {
        StartingWindowListener startingWindowListener = new StartingWindowListener();
        this.mStartingWindowListener = startingWindowListener;
        this.mForceInvisibleListener = new AnimatorListenerAdapter() { // from class: com.android.launcher3.QuickstepTransitionManager.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                QuickstepTransitionManager.this.mLauncher.clearForceInvisibleFlag(2);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                QuickstepTransitionManager.this.mLauncher.addForceInvisibleFlag(2);
            }
        };
        QuickstepLauncher quickstepLauncher = (QuickstepLauncher) Launcher.getLauncher(context);
        this.mLauncher = quickstepLauncher;
        this.mDragLayer = quickstepLauncher.mDragLayer;
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mDeviceProfile = quickstepLauncher.getDeviceProfile();
        this.mBackAnimationController = new LauncherBackAnimationController(quickstepLauncher, this);
        Resources resources = quickstepLauncher.getResources();
        this.mClosingWindowTransY = resources.getDimensionPixelSize(R.dimen.closing_window_trans_y);
        this.mMaxShadowRadius = resources.getDimensionPixelSize(R.dimen.max_shadow_radius);
        quickstepLauncher.addOnDeviceProfileChangeListener(this);
        if (supportsSSplashScreen()) {
            this.mTaskStartParams = new LinkedHashMap() { // from class: com.android.launcher3.QuickstepTransitionManager.2
                @Override // java.util.LinkedHashMap
                public final boolean removeEldestEntry(Map.Entry entry) {
                    return size() > 5;
                }
            };
            startingWindowListener.setTransitionManager(this);
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(quickstepLauncher)).setStartingWindowListener(startingWindowListener);
        }
        this.mOpeningXInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.app_open_x);
        this.mOpeningInterpolator = AnimationUtils.loadInterpolator(context, R.interpolator.emphasized_interpolator);
    }

    private static boolean areAllTargetsTranslucent(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        boolean z4 = true;
        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
            if (remoteAnimationTarget.mode == 0) {
                z4 &= remoteAnimationTarget.isTranslucent;
            }
            if (!z4) {
                break;
            }
        }
        return z4;
    }

    public static void g(QuickstepTransitionManager quickstepTransitionManager, Animator animator, int i4) {
        quickstepTransitionManager.getClass();
        animator.addListener(new AnonymousClass14(i4));
    }

    private ObjectAnimator getBackgroundAnimator() {
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        boolean z4 = quickstepLauncher.getStateManager().getState() != LauncherState.OVERVIEW && BlurUtils.supportsBlursOnWindows();
        LaunchDepthController launchDepthController = new LaunchDepthController(quickstepLauncher);
        ObjectAnimator duration = ObjectAnimator.ofFloat(launchDepthController.stateDepth, MultiPropertyFactory.MULTI_PROPERTY_VALUE, LauncherState.BACKGROUND_APP.getDepth(quickstepLauncher)).setDuration(500L);
        if (z4) {
            ViewRootImpl viewRootImpl = quickstepLauncher.mDragLayer.getViewRootImpl();
            duration.addListener(AnimatorListeners.forEndCallback(new I0(3, new SurfaceControl.Builder().setName("Blur layer").setParent(viewRootImpl != null ? viewRootImpl.getSurfaceControl() : null).setOpaque(false).setHidden(false).setEffectLayer().build())));
        }
        duration.addListener(AnimatorListeners.forEndCallback(new I0(0, launchDepthController)));
        return duration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animator getFallbackClosingWindowAnimators(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        int rotationChange = getRotationChange(remoteAnimationTargetArr);
        SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(this.mDragLayer);
        Matrix matrix = new Matrix();
        Point point = new Point();
        Rect rect = new Rect();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        float windowCornerRadius = this.mDeviceProfile.isMultiWindowMode ? 0.0f : QuickStepContract.getWindowCornerRadius(this.mLauncher);
        float f4 = areAllTargetsTranslucent(remoteAnimationTargetArr) ? 0.0f : this.mMaxShadowRadius;
        ofFloat.setDuration((long) StaggeredWorkspaceAnim.DURATION_MS);
        ofFloat.addUpdateListener(new MultiValueUpdateListener(this, f4, remoteAnimationTargetArr, point, rect, rotationChange, matrix, windowCornerRadius, surfaceTransactionApplier) { // from class: com.android.launcher3.QuickstepTransitionManager.13
            MultiValueUpdateListener.FloatProp mAlpha;
            MultiValueUpdateListener.FloatProp mDy;
            MultiValueUpdateListener.FloatProp mScale;
            MultiValueUpdateListener.FloatProp mShadowRadius;
            final /* synthetic */ RemoteAnimationTarget[] val$appTargets;
            final /* synthetic */ Matrix val$matrix;
            final /* synthetic */ int val$rotationChange;
            final /* synthetic */ SurfaceTransactionApplier val$surfaceApplier;
            final /* synthetic */ Point val$tmpPos;
            final /* synthetic */ Rect val$tmpRect;
            final /* synthetic */ float val$windowCornerRadius;

            {
                this.val$appTargets = remoteAnimationTargetArr;
                this.val$tmpPos = point;
                this.val$tmpRect = rect;
                this.val$rotationChange = rotationChange;
                this.val$matrix = matrix;
                this.val$windowCornerRadius = windowCornerRadius;
                this.val$surfaceApplier = surfaceTransactionApplier;
                float f5 = this.mClosingWindowTransY;
                float f6 = (float) StaggeredWorkspaceAnim.DURATION_MS;
                Interpolator interpolator = y0.e.f12928B;
                this.mDy = new MultiValueUpdateListener.FloatProp(0.0f, f5, 0.0f, f6, interpolator);
                this.mScale = new MultiValueUpdateListener.FloatProp(1.0f, 1.0f, 0.0f, f6, interpolator);
                this.mAlpha = new MultiValueUpdateListener.FloatProp(1.0f, 0.0f, 25.0f, 125.0f, y0.e.f12949m);
                this.mShadowRadius = new MultiValueUpdateListener.FloatProp(f4, 0.0f, 0.0f, f6, interpolator);
            }

            @Override // com.android.quickstep.util.MultiValueUpdateListener
            public final void onUpdate(float f5, boolean z4) {
                SurfaceTransaction surfaceTransaction = new SurfaceTransaction();
                for (int length = this.val$appTargets.length - 1; length >= 0; length--) {
                    RemoteAnimationTarget remoteAnimationTarget = this.val$appTargets[length];
                    SurfaceTransaction.SurfaceProperties forSurface = surfaceTransaction.forSurface(remoteAnimationTarget.leash);
                    Rect rect2 = remoteAnimationTarget.screenSpaceBounds;
                    if (rect2 != null) {
                        this.val$tmpPos.set(rect2.left, rect2.top);
                    } else {
                        Point point2 = this.val$tmpPos;
                        Point point3 = remoteAnimationTarget.position;
                        point2.set(point3.x, point3.y);
                    }
                    Rect rect3 = new Rect(remoteAnimationTarget.localBounds);
                    rect3.offsetTo(0, 0);
                    int i4 = remoteAnimationTarget.mode;
                    if (i4 == 1) {
                        this.val$tmpRect.set(remoteAnimationTarget.screenSpaceBounds);
                        if (this.val$rotationChange % 2 != 0) {
                            int i5 = rect3.right;
                            rect3.right = rect3.bottom;
                            rect3.bottom = i5;
                        }
                        Matrix matrix2 = this.val$matrix;
                        float f6 = this.mScale.value;
                        matrix2.setScale(f6, f6, this.val$tmpRect.centerX(), this.val$tmpRect.centerY());
                        this.val$matrix.postTranslate(0.0f, this.mDy.value);
                        Matrix matrix3 = this.val$matrix;
                        Point point4 = this.val$tmpPos;
                        matrix3.postTranslate(point4.x, point4.y);
                        forSurface.setMatrix(this.val$matrix).setWindowCrop(rect3).setAlpha(this.mAlpha.value).setCornerRadius(this.val$windowCornerRadius).setShadowRadius(this.mShadowRadius.value);
                    } else if (i4 == 0) {
                        Matrix matrix4 = this.val$matrix;
                        Point point5 = this.val$tmpPos;
                        matrix4.setTranslate(point5.x, point5.y);
                        forSurface.setMatrix(this.val$matrix).setWindowCrop(rect3).setAlpha(1.0f);
                    }
                }
                this.val$surfaceApplier.scheduleApply(surfaceTransaction);
            }
        });
        return ofFloat;
    }

    private Pair getLauncherContentAnimator(int i4, boolean z4, boolean z5) {
        int i5;
        Runnable runnable;
        final AnimatorSet animatorSet = new AnimatorSet();
        float[] fArr = z4 ? new float[]{1.0f, 0.0f} : new float[]{0.0f, 1.0f};
        final float[] fArr2 = z4 ? new float[]{1.0f, this.mDeviceProfile.workspaceContentScale} : new float[]{this.mDeviceProfile.workspaceContentScale, 1.0f};
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        quickstepLauncher.pauseExpensiveViewUpdates();
        if (quickstepLauncher.isInState(LauncherState.ALL_APPS)) {
            final ActivityAllAppsContainerView activityAllAppsContainerView = quickstepLauncher.mAppsView;
            final float alpha = activityAllAppsContainerView.getAlpha();
            FloatProperty floatProperty = LauncherAnimUtils.SCALE_PROPERTY;
            final float floatValue = ((Float) floatProperty.get(activityAllAppsContainerView)).floatValue();
            if (this.mDeviceProfile.isTablet) {
                fArr = new float[]{1.0f, 1.0f};
            }
            activityAllAppsContainerView.setAlpha(fArr[0]);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(activityAllAppsContainerView, View.ALPHA, fArr);
            ofFloat.setDuration(217L);
            ofFloat.setInterpolator(y0.e.f12949m);
            activityAllAppsContainerView.setLayerType(2, null);
            ofFloat.addListener(new AnonymousClass4(activityAllAppsContainerView, 0));
            if (!z5) {
                floatProperty.set((FloatProperty) activityAllAppsContainerView, Float.valueOf(fArr2[0]));
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(activityAllAppsContainerView, floatProperty, fArr2);
                ofFloat2.setInterpolator(y0.e.f12952p);
                ofFloat2.setDuration(350L);
                animatorSet.play(ofFloat2);
            }
            animatorSet.play(ofFloat);
            runnable = new Runnable() { // from class: com.android.launcher3.C0
                @Override // java.lang.Runnable
                public final void run() {
                    QuickstepTransitionManager quickstepTransitionManager = QuickstepTransitionManager.this;
                    View view = activityAllAppsContainerView;
                    float f4 = alpha;
                    float f5 = floatValue;
                    quickstepTransitionManager.getClass();
                    view.setAlpha(f4);
                    LauncherAnimUtils.SCALE_PROPERTY.set((FloatProperty) view, Float.valueOf(f5));
                    view.setLayerType(0, null);
                    quickstepTransitionManager.mLauncher.resumeExpensiveViewUpdates();
                }
            };
            i5 = i4;
        } else if (quickstepLauncher.isInState(LauncherState.OVERVIEW)) {
            final RecentsView recentsView = (RecentsView) quickstepLauncher.getOverviewPanel();
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(recentsView, RecentsView.CONTENT_ALPHA, fArr);
            ofFloat3.setDuration(217L);
            ofFloat3.setInterpolator(y0.e.f12949m);
            animatorSet.play(ofFloat3);
            recentsView.setFreezeViewVisibility(true);
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(recentsView, LauncherAnimUtils.SCALE_PROPERTY, fArr2);
            ofFloat4.setInterpolator(y0.e.f12952p);
            ofFloat4.setDuration(350L);
            animatorSet.play(ofFloat4);
            i5 = i4;
            runnable = new Runnable() { // from class: com.android.launcher3.G0
                @Override // java.lang.Runnable
                public final void run() {
                    QuickstepTransitionManager quickstepTransitionManager = QuickstepTransitionManager.this;
                    RecentsView recentsView2 = recentsView;
                    quickstepTransitionManager.getClass();
                    recentsView2.setFreezeViewVisibility(false);
                    LauncherAnimUtils.SCALE_PROPERTY.set((FloatProperty) recentsView2, Float.valueOf(1.0f));
                    QuickstepLauncher quickstepLauncher2 = quickstepTransitionManager.mLauncher;
                    quickstepLauncher2.getStateManager().reapplyState(false);
                    quickstepLauncher2.resumeExpensiveViewUpdates();
                }
            };
        } else {
            final ArrayList arrayList = new ArrayList();
            quickstepLauncher.mWorkspace.forEachVisiblePage(new Consumer() { // from class: com.android.launcher3.D0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    arrayList.add(((CellLayout) ((View) obj)).mShortcutsAndWidgets);
                }
            });
            DeviceProfile deviceProfile = this.mDeviceProfile;
            if (!deviceProfile.isTaskbarPresent) {
                arrayList.add(quickstepLauncher.mHotseat);
            } else if (!deviceProfile.isQsbInline) {
                arrayList.add(quickstepLauncher.mHotseat.getQsb());
            }
            arrayList.forEach(new Consumer() { // from class: com.android.launcher3.E0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    float[] fArr3 = fArr2;
                    AnimatorSet animatorSet2 = animatorSet;
                    View view = (View) obj;
                    view.setLayerType(2, null);
                    ObjectAnimator duration = ObjectAnimator.ofFloat(view, LauncherAnimUtils.SCALE_PROPERTY, fArr3).setDuration(350L);
                    duration.setInterpolator(y0.e.f12927A);
                    animatorSet2.play(duration);
                }
            });
            final boolean z6 = FeatureFlags.ENABLE_SCRIM_FOR_APP_LAUNCH.get();
            if (z6) {
                int attrColor = GraphicsUtils.getAttrColor(R.attr.overviewScrimColor, quickstepLauncher);
                int k4 = E.a.k(attrColor, 0);
                int[] iArr = z4 ? new int[]{k4, attrColor} : new int[]{attrColor, k4};
                ScrimView scrimView = quickstepLauncher.getScrimView();
                if (scrimView.getBackground() instanceof ColorDrawable) {
                    scrimView.setBackgroundColor(iArr[0]);
                    ObjectAnimator ofArgb = ObjectAnimator.ofArgb(scrimView, LauncherAnimUtils.VIEW_BACKGROUND_COLOR, iArr);
                    ofArgb.setDuration(350L);
                    ofArgb.setInterpolator(y0.e.f12927A);
                    animatorSet.play(ofArgb);
                }
            }
            i5 = i4;
            runnable = new Runnable() { // from class: com.android.launcher3.F0
                @Override // java.lang.Runnable
                public final void run() {
                    QuickstepTransitionManager quickstepTransitionManager = QuickstepTransitionManager.this;
                    List list = arrayList;
                    boolean z7 = z6;
                    quickstepTransitionManager.getClass();
                    list.forEach(new H0());
                    QuickstepLauncher quickstepLauncher2 = quickstepTransitionManager.mLauncher;
                    if (z7) {
                        quickstepLauncher2.getScrimView().setBackgroundColor(0);
                    }
                    quickstepLauncher2.resumeExpensiveViewUpdates();
                }
            };
        }
        animatorSet.setStartDelay(i5);
        return new Pair(animatorSet, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getRotationChange(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        int i4 = 0;
        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
            if (Math.abs(remoteAnimationTarget.rotationChange) > Math.abs(i4)) {
                i4 = remoteAnimationTarget.rotationChange;
            }
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getWindowTargetBounds(RemoteAnimationTarget[] remoteAnimationTargetArr, int i4) {
        RemoteAnimationTarget remoteAnimationTarget;
        int length = remoteAnimationTargetArr.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                remoteAnimationTarget = null;
                break;
            }
            remoteAnimationTarget = remoteAnimationTargetArr[i5];
            if (remoteAnimationTarget.mode == 0) {
                break;
            }
            i5++;
        }
        if (remoteAnimationTarget == null) {
            DeviceProfile deviceProfile = this.mDeviceProfile;
            return new Rect(0, 0, deviceProfile.widthPx, deviceProfile.heightPx);
        }
        Rect rect = new Rect(remoteAnimationTarget.screenSpaceBounds);
        Rect rect2 = remoteAnimationTarget.localBounds;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            Point point = remoteAnimationTarget.position;
            rect.offsetTo(point.x, point.y);
        }
        if (i4 != 0) {
            if (i4 % 2 == 1) {
                DeviceProfile deviceProfile2 = this.mDeviceProfile;
                Utilities.rotateBounds(rect, deviceProfile2.heightPx, deviceProfile2.widthPx, 4 - i4);
            } else {
                DeviceProfile deviceProfile3 = this.mDeviceProfile;
                Utilities.rotateBounds(rect, deviceProfile3.widthPx, deviceProfile3.heightPx, 4 - i4);
            }
        }
        if (this.mDeviceProfile.isTaskbarPresentInApps && !remoteAnimationTarget.willShowImeOnTarget && !DisplayController.isTransientTaskbar(this.mLauncher)) {
            rect.bottom -= remoteAnimationTarget.contentInsets.bottom;
        }
        return rect;
    }

    public static void h(QuickstepTransitionManager quickstepTransitionManager, AnimatorSet animatorSet, View view, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, boolean z4) {
        char c4;
        boolean z5;
        AnimatorSet animatorSet2;
        QuickstepLauncher quickstepLauncher = quickstepTransitionManager.mLauncher;
        quickstepLauncher.getStateManager().setCurrentAnimation(animatorSet, new Animator[0]);
        int singleFrameMs = RefreshRateTracker.getSingleFrameMs(quickstepLauncher);
        int rotationChange = getRotationChange(remoteAnimationTargetArr);
        Rect windowTargetBounds = quickstepTransitionManager.getWindowTargetBounds(remoteAnimationTargetArr, rotationChange);
        boolean areAllTargetsTranslucent = areAllTargetsTranslucent(remoteAnimationTargetArr);
        RectF rectF = new RectF();
        FloatingIconView floatingIconView = FloatingIconView.getFloatingIconView(quickstepLauncher, view, (quickstepLauncher.getTaskbarUIController() == null || !DisplayController.isTransientTaskbar(quickstepLauncher)) ? null : quickstepLauncher.getTaskbarUIController().findMatchingView(view), null, !areAllTargetsTranslucent, rectF, true);
        Rect rect = new Rect();
        Matrix matrix = new Matrix();
        RemoteAnimationTargets remoteAnimationTargets = new RemoteAnimationTargets(remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, 0);
        SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(floatingIconView);
        remoteAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
        RemoteAnimationTarget navBarRemoteAnimationTarget = remoteAnimationTargets.getNavBarRemoteAnimationTarget();
        int[] iArr = new int[2];
        quickstepTransitionManager.mDragLayer.getLocationOnScreen(iArr);
        if (quickstepTransitionManager.supportsSSplashScreen()) {
            int firstAppTargetTaskId = remoteAnimationTargets.getFirstAppTargetTaskId();
            Pair create = Pair.create(0, 0);
            quickstepTransitionManager.mTaskStartParams.remove(Integer.valueOf(firstAppTargetTaskId));
            c4 = 1;
            z5 = ((Integer) ((Pair) quickstepTransitionManager.mTaskStartParams.getOrDefault(Integer.valueOf(firstAppTargetTaskId), create)).first).intValue() == 1;
        } else {
            c4 = 1;
            z5 = false;
        }
        AnimOpenProperties animOpenProperties = new AnimOpenProperties(quickstepLauncher.getResources(), windowTargetBounds, rectF, view, iArr[0], iArr[c4], z5, floatingIconView.isDifferentFromAppIcon());
        int i4 = animOpenProperties.cropWidthStart;
        int i5 = animOpenProperties.cropCenterXStart - (i4 / 2);
        int i6 = animOpenProperties.cropHeightStart;
        int i7 = animOpenProperties.cropCenterYStart - (i6 / 2);
        rect.set(i5, i7, i4 + i5, i6 + i7);
        RectF rectF2 = new RectF();
        RectF rectF3 = new RectF();
        Point point = new Point();
        AnimatorSet animatorSet3 = new AnimatorSet();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(500L);
        ofFloat.setInterpolator(y0.e.f12949m);
        ofFloat.addListener(floatingIconView);
        ofFloat.addListener(new AnonymousClass5(quickstepTransitionManager, view, remoteAnimationTargets, 0));
        MultiValueUpdateListener multiValueUpdateListener = new MultiValueUpdateListener(animOpenProperties, QuickStepContract.supportsRoundedCornersOnWindows(quickstepLauncher.getResources()) ? Math.max(rect.width(), rect.height()) / 2.0f : 0.0f, quickstepTransitionManager.mDeviceProfile.isMultiWindowMode ? 0.0f : QuickStepContract.getWindowCornerRadius(quickstepLauncher), areAllTargetsTranslucent ? 0.0f : quickstepTransitionManager.mMaxShadowRadius, rectF, rect, rotationChange, rectF3, iArr, rectF2, floatingIconView, remoteAnimationTargetArr, matrix, point, navBarRemoteAnimationTarget, surfaceTransactionApplier) { // from class: com.android.launcher3.QuickstepTransitionManager.6
            MultiValueUpdateListener.FloatProp mCropRectCenterX;
            MultiValueUpdateListener.FloatProp mCropRectCenterY;
            MultiValueUpdateListener.FloatProp mCropRectHeight;
            MultiValueUpdateListener.FloatProp mCropRectWidth;
            MultiValueUpdateListener.FloatProp mDx;
            MultiValueUpdateListener.FloatProp mDy;
            MultiValueUpdateListener.FloatProp mIconAlpha;
            MultiValueUpdateListener.FloatProp mIconScaleToFitScreen;
            MultiValueUpdateListener.FloatProp mShadowRadius;
            MultiValueUpdateListener.FloatProp mWindowRadius;
            final /* synthetic */ RemoteAnimationTarget[] val$appTargets;
            final /* synthetic */ Rect val$crop;
            final /* synthetic */ int[] val$dragLayerBounds;
            final /* synthetic */ RectF val$floatingIconBounds;
            final /* synthetic */ FloatingIconView val$floatingView;
            final /* synthetic */ RectF val$launcherIconBounds;
            final /* synthetic */ Matrix val$matrix;
            final /* synthetic */ RemoteAnimationTarget val$navBarTarget;
            final /* synthetic */ int val$rotationChange;
            final /* synthetic */ SurfaceTransactionApplier val$surfaceApplier;
            final /* synthetic */ Point val$tmpPos;
            final /* synthetic */ RectF val$tmpRectF;
            MultiValueUpdateListener.FloatProp mNavFadeOut = new MultiValueUpdateListener.FloatProp(1.0f, 0.0f, 0.0f, 133.0f, QuickstepTransitionManager.NAV_FADE_OUT_INTERPOLATOR);
            MultiValueUpdateListener.FloatProp mNavFadeIn = new MultiValueUpdateListener.FloatProp(0.0f, 1.0f, 234.0f, 266.0f, QuickstepTransitionManager.NAV_FADE_IN_INTERPOLATOR);

            {
                this.val$launcherIconBounds = rectF;
                this.val$crop = rect;
                this.val$rotationChange = rotationChange;
                this.val$tmpRectF = rectF3;
                this.val$dragLayerBounds = iArr;
                this.val$floatingIconBounds = rectF2;
                this.val$floatingView = floatingIconView;
                this.val$appTargets = remoteAnimationTargetArr;
                this.val$matrix = matrix;
                this.val$tmpPos = point;
                this.val$navBarTarget = navBarRemoteAnimationTarget;
                this.val$surfaceApplier = surfaceTransactionApplier;
                this.mDx = new MultiValueUpdateListener.FloatProp(0.0f, animOpenProperties.dX, 0.0f, 500.0f, QuickstepTransitionManager.this.mOpeningXInterpolator);
                this.mDy = new MultiValueUpdateListener.FloatProp(0.0f, animOpenProperties.dY, 0.0f, 500.0f, QuickstepTransitionManager.this.mOpeningInterpolator);
                this.mIconScaleToFitScreen = new MultiValueUpdateListener.FloatProp(animOpenProperties.initialAppIconScale, animOpenProperties.finalAppIconScale, 0.0f, 500.0f, QuickstepTransitionManager.this.mOpeningInterpolator);
                this.mIconAlpha = new MultiValueUpdateListener.FloatProp(animOpenProperties.iconAlphaStart, 0.0f, 25.0f, 50.0f, y0.e.f12949m);
                this.mWindowRadius = new MultiValueUpdateListener.FloatProp(r15, r16, 0.0f, 500.0f, QuickstepTransitionManager.this.mOpeningInterpolator);
                this.mShadowRadius = new MultiValueUpdateListener.FloatProp(0.0f, r17, 0.0f, 500.0f, QuickstepTransitionManager.this.mOpeningInterpolator);
                this.mCropRectCenterX = new MultiValueUpdateListener.FloatProp(animOpenProperties.cropCenterXStart, animOpenProperties.cropCenterXEnd, 0.0f, 500.0f, QuickstepTransitionManager.this.mOpeningInterpolator);
                this.mCropRectCenterY = new MultiValueUpdateListener.FloatProp(animOpenProperties.cropCenterYStart, animOpenProperties.cropCenterYEnd, 0.0f, 500.0f, QuickstepTransitionManager.this.mOpeningInterpolator);
                this.mCropRectWidth = new MultiValueUpdateListener.FloatProp(animOpenProperties.cropWidthStart, animOpenProperties.cropWidthEnd, 0.0f, 500.0f, QuickstepTransitionManager.this.mOpeningInterpolator);
                this.mCropRectHeight = new MultiValueUpdateListener.FloatProp(animOpenProperties.cropHeightStart, animOpenProperties.cropHeightEnd, 0.0f, 500.0f, QuickstepTransitionManager.this.mOpeningInterpolator);
            }

            @Override // com.android.quickstep.util.MultiValueUpdateListener
            public final void onUpdate(float f4, boolean z6) {
                float f5;
                float width = this.val$launcherIconBounds.width() * this.mIconScaleToFitScreen.value;
                float height = this.val$launcherIconBounds.height() * this.mIconScaleToFitScreen.value;
                float f6 = this.mCropRectCenterX.value;
                float f7 = this.mCropRectWidth.value;
                int i8 = (int) (f6 - (f7 / 2.0f));
                float f8 = this.mCropRectCenterY.value;
                float f9 = this.mCropRectHeight.value;
                int i9 = (int) (f8 - (f9 / 2.0f));
                this.val$crop.set(i8, i9, (int) (i8 + f7), (int) (i9 + f9));
                int width2 = this.val$crop.width();
                int height2 = this.val$crop.height();
                if (this.val$rotationChange != 0) {
                    Utilities.rotateBounds(this.val$crop, QuickstepTransitionManager.this.mDeviceProfile.widthPx, QuickstepTransitionManager.this.mDeviceProfile.heightPx, this.val$rotationChange);
                }
                float f10 = width2;
                float f11 = height2;
                float f12 = 1.0f;
                float min = Math.min(1.0f, Math.max(width / f10, height / f11));
                float f13 = f10 * min;
                float f14 = f11 * min;
                float f15 = (f13 - width) / 2.0f;
                float f16 = (f14 - height) / 2.0f;
                this.val$tmpRectF.set(this.val$launcherIconBounds);
                RectF rectF4 = this.val$tmpRectF;
                int[] iArr2 = this.val$dragLayerBounds;
                rectF4.offset(iArr2[0], iArr2[1]);
                this.val$tmpRectF.offset(this.mDx.value, this.mDy.value);
                RectF rectF5 = this.val$tmpRectF;
                float f17 = this.mIconScaleToFitScreen.value;
                Utilities.scaleRectFAboutCenter(rectF5, f17, f17);
                RectF rectF6 = this.val$tmpRectF;
                Rect rect2 = this.val$crop;
                float f18 = (rectF6.left - f15) - (rect2.left * min);
                float f19 = (rectF6.top - f16) - (rect2.top * min);
                this.val$floatingIconBounds.set(this.val$launcherIconBounds);
                this.val$floatingIconBounds.offset(this.mDx.value, this.mDy.value);
                RectF rectF7 = this.val$floatingIconBounds;
                float f20 = this.mIconScaleToFitScreen.value;
                Utilities.scaleRectFAboutCenter(rectF7, f20, f20);
                RectF rectF8 = this.val$floatingIconBounds;
                rectF8.left -= f15;
                rectF8.top -= f16;
                rectF8.right += f15;
                rectF8.bottom += f16;
                if (z6) {
                    this.val$floatingView.update(1.0f, rectF8, f4, 0.0f, this.mWindowRadius.value * min, true);
                    return;
                }
                SurfaceTransaction surfaceTransaction = new SurfaceTransaction();
                int length = this.val$appTargets.length - 1;
                while (length >= 0) {
                    RemoteAnimationTarget remoteAnimationTarget = this.val$appTargets[length];
                    SurfaceTransaction.SurfaceProperties forSurface = surfaceTransaction.forSurface(remoteAnimationTarget.leash);
                    int i10 = remoteAnimationTarget.mode;
                    if (i10 == 0) {
                        this.val$matrix.setScale(min, min);
                        int i11 = this.val$rotationChange;
                        if (i11 == 1) {
                            this.val$matrix.postTranslate(f19, QuickstepTransitionManager.this.mDeviceProfile.widthPx - (f18 + f13));
                        } else if (i11 == 2) {
                            this.val$matrix.postTranslate(QuickstepTransitionManager.this.mDeviceProfile.widthPx - (f18 + f13), QuickstepTransitionManager.this.mDeviceProfile.heightPx - (f19 + f14));
                        } else if (i11 == 3) {
                            this.val$matrix.postTranslate(QuickstepTransitionManager.this.mDeviceProfile.heightPx - (f19 + f14), f18);
                        } else {
                            this.val$matrix.postTranslate(f18, f19);
                        }
                        this.val$floatingView.update(this.mIconAlpha.value, this.val$floatingIconBounds, f4, 0.0f, this.mWindowRadius.value * min, true);
                        forSurface.setMatrix(this.val$matrix).setWindowCrop(this.val$crop).setAlpha(f12 - this.mIconAlpha.value).setCornerRadius(this.mWindowRadius.value).setShadowRadius(this.mShadowRadius.value);
                    } else if (i10 == 1) {
                        Rect rect3 = remoteAnimationTarget.localBounds;
                        if (rect3 != null) {
                            this.val$tmpPos.set(rect3.left, rect3.top);
                        } else {
                            Point point2 = this.val$tmpPos;
                            Point point3 = remoteAnimationTarget.position;
                            point2.set(point3.x, point3.y);
                        }
                        Rect rect4 = new Rect(remoteAnimationTarget.screenSpaceBounds);
                        rect4.offsetTo(0, 0);
                        if (this.val$rotationChange % 2 == 1) {
                            int i12 = rect4.right;
                            rect4.right = rect4.bottom;
                            rect4.bottom = i12;
                            Point point4 = this.val$tmpPos;
                            int i13 = point4.x;
                            point4.x = point4.y;
                            point4.y = i13;
                        }
                        Matrix matrix2 = this.val$matrix;
                        Point point5 = this.val$tmpPos;
                        matrix2.setTranslate(point5.x, point5.y);
                        f5 = 1.0f;
                        forSurface.setMatrix(this.val$matrix).setWindowCrop(rect4).setAlpha(1.0f);
                        length--;
                        f12 = f5;
                    }
                    f5 = f12;
                    length--;
                    f12 = f5;
                }
                RemoteAnimationTarget remoteAnimationTarget2 = this.val$navBarTarget;
                if (remoteAnimationTarget2 != null) {
                    SurfaceTransaction.SurfaceProperties forSurface2 = surfaceTransaction.forSurface(remoteAnimationTarget2.leash);
                    MultiValueUpdateListener.FloatProp floatProp = this.mNavFadeIn;
                    if (floatProp.value > floatProp.getStartValue()) {
                        this.val$matrix.setScale(min, min);
                        this.val$matrix.postTranslate(f18, f19);
                        forSurface2.setMatrix(this.val$matrix).setWindowCrop(this.val$crop).setAlpha(this.mNavFadeIn.value);
                    } else {
                        forSurface2.setAlpha(this.mNavFadeOut.value);
                    }
                }
                this.val$surfaceApplier.scheduleApply(surfaceTransaction);
            }
        };
        ofFloat.addUpdateListener(multiValueUpdateListener);
        multiValueUpdateListener.onUpdate(0.0f, true);
        if (areAllTargetsTranslucent || !z4) {
            animatorSet2 = animatorSet3;
            animatorSet2.play(ofFloat);
        } else {
            animatorSet2 = animatorSet3;
            animatorSet2.playTogether(ofFloat, quickstepTransitionManager.getBackgroundAnimator());
        }
        animatorSet2.setStartDelay(singleFrameMs);
        animatorSet.play(animatorSet2);
        if (z4) {
            Pair launcherContentAnimator = quickstepTransitionManager.getLauncherContentAnimator(singleFrameMs, true, false);
            animatorSet.play((Animator) launcherContentAnimator.first);
            animatorSet.addListener(new AnonymousClass3(launcherContentAnimator, 0));
        }
    }

    public static void i(QuickstepTransitionManager quickstepTransitionManager, AnimatorSet animatorSet, LauncherAppWidgetHostView launcherAppWidgetHostView, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, boolean z4) {
        QuickstepLauncher quickstepLauncher = quickstepTransitionManager.mLauncher;
        quickstepLauncher.getStateManager().setCurrentAnimation(animatorSet, new Animator[0]);
        Rect windowTargetBounds = quickstepTransitionManager.getWindowTargetBounds(remoteAnimationTargetArr, getRotationChange(remoteAnimationTargetArr));
        boolean areAllTargetsTranslucent = areAllTargetsTranslucent(remoteAnimationTargetArr);
        RectF rectF = new RectF();
        Rect rect = new Rect();
        Matrix matrix = new Matrix();
        RemoteAnimationTargets remoteAnimationTargets = new RemoteAnimationTargets(remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, 0);
        RemoteAnimationTarget firstAppTarget = remoteAnimationTargets.getFirstAppTarget();
        if (firstAppTarget != null && quickstepTransitionManager.supportsSSplashScreen()) {
            r2 = quickstepTransitionManager.mTaskStartParams.containsKey(Integer.valueOf(firstAppTarget.taskId)) ? ((Integer) ((Pair) quickstepTransitionManager.mTaskStartParams.get(Integer.valueOf(firstAppTarget.taskId))).second).intValue() : 0;
            quickstepTransitionManager.mTaskStartParams.remove(Integer.valueOf(firstAppTarget.taskId));
        }
        if (r2 == 0) {
            r2 = FloatingWidgetView.getDefaultBackgroundColor(quickstepLauncher, firstAppTarget);
        }
        int i4 = r2;
        float windowCornerRadius = quickstepTransitionManager.mDeviceProfile.isMultiWindowMode ? 0.0f : QuickStepContract.getWindowCornerRadius(quickstepLauncher);
        FloatingWidgetView floatingWidgetView = FloatingWidgetView.getFloatingWidgetView(quickstepTransitionManager.mLauncher, launcherAppWidgetHostView, rectF, new Size(windowTargetBounds.width(), windowTargetBounds.height()), windowCornerRadius, areAllTargetsTranslucent, i4);
        float initialCornerRadius = QuickStepContract.supportsRoundedCornersOnWindows(quickstepLauncher.getResources()) ? floatingWidgetView.getInitialCornerRadius() : 0.0f;
        SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(floatingWidgetView);
        remoteAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
        RemoteAnimationTarget navBarRemoteAnimationTarget = remoteAnimationTargets.getNavBarRemoteAnimationTarget();
        AnimatorSet animatorSet2 = new AnimatorSet();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(500L);
        ofFloat.setInterpolator(y0.e.f12949m);
        ofFloat.addListener(floatingWidgetView);
        ofFloat.addListener(new AnonymousClass4(remoteAnimationTargets, 1));
        floatingWidgetView.setFastFinishRunnable(new I0(4, animatorSet2));
        ofFloat.addUpdateListener(new MultiValueUpdateListener(quickstepTransitionManager, initialCornerRadius, windowCornerRadius, rectF, windowTargetBounds, rect, matrix, areAllTargetsTranslucent, remoteAnimationTargetArr, floatingWidgetView, navBarRemoteAnimationTarget, surfaceTransactionApplier) { // from class: com.android.launcher3.QuickstepTransitionManager.8
            float mAppWindowScale = 1.0f;
            final MultiValueUpdateListener.FloatProp mCornerRadiusProgress;
            final MultiValueUpdateListener.FloatProp mDx;
            final MultiValueUpdateListener.FloatProp mDy;
            final MultiValueUpdateListener.FloatProp mHeight;
            final MultiValueUpdateListener.FloatProp mNavFadeIn;
            final MultiValueUpdateListener.FloatProp mNavFadeOut;
            final MultiValueUpdateListener.FloatProp mPreviewAlpha;
            final MultiValueUpdateListener.FloatProp mWidgetFallbackBackgroundAlpha;
            final MultiValueUpdateListener.FloatProp mWidgetForegroundAlpha;
            final MultiValueUpdateListener.FloatProp mWidth;
            final MultiValueUpdateListener.FloatProp mWindowRadius;
            final /* synthetic */ RemoteAnimationTarget[] val$appTargets;
            final /* synthetic */ boolean val$appTargetsAreTranslucent;
            final /* synthetic */ Rect val$appWindowCrop;
            final /* synthetic */ FloatingWidgetView val$floatingView;
            final /* synthetic */ Matrix val$matrix;
            final /* synthetic */ RemoteAnimationTarget val$navBarTarget;
            final /* synthetic */ SurfaceTransactionApplier val$surfaceApplier;
            final /* synthetic */ RectF val$widgetBackgroundBounds;
            final /* synthetic */ Rect val$windowTargetBounds;

            {
                this.val$widgetBackgroundBounds = rectF;
                this.val$windowTargetBounds = windowTargetBounds;
                this.val$appWindowCrop = rect;
                this.val$matrix = matrix;
                this.val$appTargetsAreTranslucent = areAllTargetsTranslucent;
                this.val$appTargets = remoteAnimationTargetArr;
                this.val$floatingView = floatingWidgetView;
                this.val$navBarTarget = navBarRemoteAnimationTarget;
                this.val$surfaceApplier = surfaceTransactionApplier;
                Interpolator interpolator = y0.e.f12949m;
                this.mWidgetForegroundAlpha = new MultiValueUpdateListener.FloatProp(1.0f, 0.0f, 0.0f, 62.0f, interpolator);
                this.mWidgetFallbackBackgroundAlpha = new MultiValueUpdateListener.FloatProp(0.0f, 1.0f, 0.0f, 75.0f, interpolator);
                this.mPreviewAlpha = new MultiValueUpdateListener.FloatProp(0.0f, 1.0f, 62.0f, 62.0f, interpolator);
                this.mWindowRadius = new MultiValueUpdateListener.FloatProp(initialCornerRadius, windowCornerRadius, 0.0f, 500.0f, quickstepTransitionManager.mOpeningInterpolator);
                this.mCornerRadiusProgress = new MultiValueUpdateListener.FloatProp(0.0f, 1.0f, 0.0f, 500.0f, quickstepTransitionManager.mOpeningInterpolator);
                this.mDx = new MultiValueUpdateListener.FloatProp(rectF.centerX(), windowTargetBounds.centerX(), 0.0f, 500.0f, quickstepTransitionManager.mOpeningXInterpolator);
                this.mDy = new MultiValueUpdateListener.FloatProp(rectF.centerY(), windowTargetBounds.centerY(), 0.0f, 500.0f, quickstepTransitionManager.mOpeningInterpolator);
                this.mWidth = new MultiValueUpdateListener.FloatProp(rectF.width(), windowTargetBounds.width(), 0.0f, 500.0f, quickstepTransitionManager.mOpeningInterpolator);
                this.mHeight = new MultiValueUpdateListener.FloatProp(rectF.height(), windowTargetBounds.height(), 0.0f, 500.0f, quickstepTransitionManager.mOpeningInterpolator);
                this.mNavFadeOut = new MultiValueUpdateListener.FloatProp(1.0f, 0.0f, 0.0f, 133.0f, QuickstepTransitionManager.NAV_FADE_OUT_INTERPOLATOR);
                this.mNavFadeIn = new MultiValueUpdateListener.FloatProp(0.0f, 1.0f, 234.0f, 266.0f, QuickstepTransitionManager.NAV_FADE_IN_INTERPOLATOR);
            }

            @Override // com.android.quickstep.util.MultiValueUpdateListener
            public final void onUpdate(float f4, boolean z5) {
                RectF rectF2 = this.val$widgetBackgroundBounds;
                float f5 = this.mDx.value;
                float f6 = this.mWidth.value;
                float f7 = this.mDy.value;
                float f8 = this.mHeight.value;
                rectF2.set(f5 - (f6 / 2.0f), f7 - (f8 / 2.0f), (f6 / 2.0f) + f5, (f8 / 2.0f) + f7);
                this.mAppWindowScale = this.val$widgetBackgroundBounds.width() / this.val$windowTargetBounds.width();
                this.val$appWindowCrop.set(0, 0, this.val$windowTargetBounds.width(), Math.round(this.val$widgetBackgroundBounds.height() / this.mAppWindowScale));
                Matrix matrix2 = this.val$matrix;
                RectF rectF3 = this.val$widgetBackgroundBounds;
                matrix2.setTranslate(rectF3.left, rectF3.top);
                Matrix matrix3 = this.val$matrix;
                float f9 = this.mAppWindowScale;
                RectF rectF4 = this.val$widgetBackgroundBounds;
                matrix3.postScale(f9, f9, rectF4.left, rectF4.top);
                SurfaceTransaction surfaceTransaction = new SurfaceTransaction();
                float f10 = this.val$appTargetsAreTranslucent ? 1.0f - this.mPreviewAlpha.value : 1.0f;
                for (int length = this.val$appTargets.length - 1; length >= 0; length--) {
                    RemoteAnimationTarget remoteAnimationTarget = this.val$appTargets[length];
                    SurfaceTransaction.SurfaceProperties forSurface = surfaceTransaction.forSurface(remoteAnimationTarget.leash);
                    if (remoteAnimationTarget.mode == 0) {
                        this.val$floatingView.update(this.val$widgetBackgroundBounds, f10, this.mWidgetForegroundAlpha.value, this.mWidgetFallbackBackgroundAlpha.value, this.mCornerRadiusProgress.value);
                        forSurface.setMatrix(this.val$matrix).setWindowCrop(this.val$appWindowCrop).setAlpha(this.mPreviewAlpha.value).setCornerRadius(this.mWindowRadius.value / this.mAppWindowScale);
                    }
                }
                RemoteAnimationTarget remoteAnimationTarget2 = this.val$navBarTarget;
                if (remoteAnimationTarget2 != null) {
                    SurfaceTransaction.SurfaceProperties forSurface2 = surfaceTransaction.forSurface(remoteAnimationTarget2.leash);
                    MultiValueUpdateListener.FloatProp floatProp = this.mNavFadeIn;
                    if (floatProp.value > floatProp.getStartValue()) {
                        forSurface2.setMatrix(this.val$matrix).setWindowCrop(this.val$appWindowCrop).setAlpha(this.mNavFadeIn.value);
                    } else {
                        forSurface2.setAlpha(this.mNavFadeOut.value);
                    }
                }
                this.val$surfaceApplier.scheduleApply(surfaceTransaction);
            }
        });
        if (areAllTargetsTranslucent || !z4) {
            animatorSet2.play(ofFloat);
        } else {
            animatorSet2.playTogether(ofFloat, quickstepTransitionManager.getBackgroundAnimator());
        }
        animatorSet.play(animatorSet2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean launcherIsATargetWithMode(RemoteAnimationTarget[] remoteAnimationTargetArr, int i4) {
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
            if (remoteAnimationTarget.mode == i4 && (runningTaskInfo = remoteAnimationTarget.taskInfo) != null && (componentName = runningTaskInfo.topActivity) != null && componentName.equals(this.mLauncher.getComponentName())) {
                return true;
            }
        }
        return false;
    }

    private boolean supportsSSplashScreen() {
        return hasControlRemoteAppTransitionPermission() && Utilities.ATLEAST_S && ENABLE_SHELL_STARTING_SURFACE;
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x008d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x008f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair createWallpaperOpenAnimations(final android.view.RemoteAnimationTarget[] r27, boolean r28, android.graphics.RectF r29, float r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.QuickstepTransitionManager.createWallpaperOpenAnimations(android.view.RemoteAnimationTarget[], boolean, android.graphics.RectF, float, boolean):android.util.Pair");
    }

    public void dump(String str, PrintWriter printWriter) {
    }

    public final ActivityOptionsWrapper getActivityLaunchOptions(View view) {
        ContainerAnimationRunner a4;
        boolean isLaunchingFromRecents = isLaunchingFromRecents(view, null);
        RunnableList runnableList = new RunnableList();
        TaskRestartedDuringLaunchListener taskRestartedDuringLaunchListener = new TaskRestartedDuringLaunchListener();
        taskRestartedDuringLaunchListener.register(new RunnableC0343i(runnableList, 0));
        runnableList.add(new I0(2, taskRestartedDuringLaunchListener));
        this.mAppLaunchRunner = new AppLaunchAnimationRunner(view, runnableList);
        ItemInfo itemInfo = (ItemInfo) view.getTag();
        if (itemInfo != null && itemInfo.shouldUseBackgroundAnimation() && (a4 = ContainerAnimationRunner.a(view, this.mStartingWindowListener, runnableList)) != null) {
            this.mAppLaunchRunner = a4;
        }
        LauncherAnimationRunner launcherAnimationRunner = new LauncherAnimationRunner(this.mHandler, this.mAppLaunchRunner, true);
        long j4 = isLaunchingFromRecents ? 336L : 500L;
        return new ActivityOptionsWrapper(ActivityOptions.makeRemoteAnimation(new RemoteAnimationAdapter(launcherAnimationRunner, j4, (j4 - 120) - 96), new RemoteTransition(launcherAnimationRunner.toRemoteTransition(), this.mLauncher.getIApplicationThread(), "QuickstepLaunch")), runnableList);
    }

    public final boolean hasControlRemoteAppTransitionPermission() {
        return this.mLauncher.checkSelfPermission("android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS") == 0;
    }

    public final boolean isLaunchingFromRecents(View view, RemoteAnimationTarget[] remoteAnimationTargetArr) {
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        return ((LauncherState) quickstepLauncher.getStateManager().getState()).overviewUi && TaskViewUtils.findTaskViewToLaunch((RecentsView) quickstepLauncher.getOverviewPanel(), view, remoteAnimationTargetArr) != null;
    }

    public final void onActivityDestroyed() {
        boolean z4 = FeatureFlags.SEPARATE_RECENTS_ACTIVITY.get();
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        if (!z4 && hasControlRemoteAppTransitionPermission()) {
            quickstepLauncher.unregisterRemoteAnimations();
            this.mWallpaperOpenRunner = null;
            this.mAppLaunchRunner = null;
            this.mKeyguardGoingAwayRunner = null;
        }
        unregisterRemoteTransitions();
        this.mStartingWindowListener.setTransitionManager(null);
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(quickstepLauncher)).setStartingWindowListener(null);
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        this.mDeviceProfile = deviceProfile;
    }

    public final void registerRemoteAnimations() {
        if (!FeatureFlags.SEPARATE_RECENTS_ACTIVITY.get() && hasControlRemoteAppTransitionPermission()) {
            RemoteAnimationDefinition remoteAnimationDefinition = new RemoteAnimationDefinition();
            this.mWallpaperOpenRunner = new WallpaperOpenLauncherAnimationRunner(false);
            WallpaperOpenLauncherAnimationRunner wallpaperOpenLauncherAnimationRunner = this.mWallpaperOpenRunner;
            Handler handler = this.mHandler;
            remoteAnimationDefinition.addRemoteAnimation(13, 1, new RemoteAnimationAdapter(new LauncherAnimationRunner(handler, wallpaperOpenLauncherAnimationRunner, false), 250L, 0L));
            if (FeatureFlags.KEYGUARD_ANIMATION.get()) {
                this.mKeyguardGoingAwayRunner = new WallpaperOpenLauncherAnimationRunner(true);
                remoteAnimationDefinition.addRemoteAnimation(21, new RemoteAnimationAdapter(new LauncherAnimationRunner(handler, this.mKeyguardGoingAwayRunner, true), 250L, 0L));
            }
            this.mLauncher.registerRemoteAnimations(remoteAnimationDefinition);
        }
    }

    public void registerRemoteTransitions() {
        boolean z4 = TaskAnimationManager.ENABLE_SHELL_TRANSITIONS;
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        if (z4) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(quickstepLauncher)).shareTransactionQueue();
        }
        if (FeatureFlags.SEPARATE_RECENTS_ACTIVITY.get()) {
            return;
        }
        boolean hasControlRemoteAppTransitionPermission = hasControlRemoteAppTransitionPermission();
        Handler handler = this.mHandler;
        if (hasControlRemoteAppTransitionPermission) {
            this.mWallpaperOpenTransitionRunner = new WallpaperOpenLauncherAnimationRunner(false);
            this.mLauncherOpenTransition = new RemoteTransition(new LauncherAnimationRunner(handler, this.mWallpaperOpenTransitionRunner, false).toRemoteTransition(), quickstepLauncher.getIApplicationThread(), "QuickstepLaunchHome");
            TransitionFilter transitionFilter = new TransitionFilter();
            transitionFilter.mNotFlags = 256;
            TransitionFilter.Requirement[] requirementArr = {new TransitionFilter.Requirement(), new TransitionFilter.Requirement()};
            transitionFilter.mRequirements = requirementArr;
            TransitionFilter.Requirement requirement = requirementArr[0];
            requirement.mActivityType = 2;
            requirement.mTopActivity = quickstepLauncher.getComponentName();
            TransitionFilter.Requirement[] requirementArr2 = transitionFilter.mRequirements;
            TransitionFilter.Requirement requirement2 = requirementArr2[0];
            requirement2.mModes = new int[]{1, 3};
            requirement2.mOrder = 1;
            TransitionFilter.Requirement requirement3 = requirementArr2[1];
            requirement3.mActivityType = 1;
            requirement3.mModes = new int[]{2, 4};
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(quickstepLauncher)).registerRemoteTransition(this.mLauncherOpenTransition, transitionFilter);
        }
        LauncherBackAnimationController launcherBackAnimationController = this.mBackAnimationController;
        if (launcherBackAnimationController != null) {
            launcherBackAnimationController.registerBackCallbacks(handler);
        }
    }

    public void unregisterRemoteTransitions() {
        boolean z4 = TaskAnimationManager.ENABLE_SHELL_TRANSITIONS;
        QuickstepLauncher quickstepLauncher = this.mLauncher;
        if (z4) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(quickstepLauncher)).unshareTransactionQueue();
        }
        if (FeatureFlags.SEPARATE_RECENTS_ACTIVITY.get()) {
            return;
        }
        if (hasControlRemoteAppTransitionPermission()) {
            if (this.mLauncherOpenTransition == null) {
                return;
            }
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(quickstepLauncher)).unregisterRemoteTransition(this.mLauncherOpenTransition);
            this.mLauncherOpenTransition = null;
            this.mWallpaperOpenTransitionRunner = null;
        }
        LauncherBackAnimationController launcherBackAnimationController = this.mBackAnimationController;
        if (launcherBackAnimationController != null) {
            launcherBackAnimationController.unregisterBackCallbacks();
            this.mBackAnimationController = null;
        }
    }
}
