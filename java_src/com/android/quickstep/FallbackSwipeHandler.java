package com.android.quickstep;

import android.animation.ObjectAnimator;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.SpringAnimationBuilder;
import com.android.launcher3.util.DisplayController;
import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.SwipeUpAnimationLogic;
import com.android.quickstep.fallback.FallbackRecentsView;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.TransformParams;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.InputConsumerController;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.UUID;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class FallbackSwipeHandler extends AbsSwipeUpHandler {
    private static final String TAG = "FallbackSwipeHandler";
    private static StaticMessageReceiver sMessageReceiver;
    private FallbackHomeAnimationFactory mActiveAnimationFactory;
    private boolean mAppCanEnterPip;
    private float mMaxLauncherScale;
    private final boolean mRunningOverHome;
    private final Matrix mTmpMatrix;

    /* loaded from: classes.dex */
    public class FallbackHomeAnimationFactory extends SwipeUpAnimationLogic.HomeAnimationFactory implements Consumer {
        private boolean mAnimationFinished;
        private final long mDuration;
        private final AnimatedFloat mHomeAlpha;
        private final TransformParams mHomeAlphaParams;
        private Message mOnFinishCallback;
        private final AnimatedFloat mRecentsAlpha;
        private RectFSpringAnim mSpringAnim;
        private SurfaceControl mSurfaceControl;
        private final RectF mTargetRect;
        private final Rect mTempRect;
        private final AnimatedFloat mVerticalShiftForScale;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FallbackHomeAnimationFactory(long j4) {
            super();
            FallbackSwipeHandler.this = r7;
            this.mTempRect = new Rect();
            TransformParams transformParams = new TransformParams();
            this.mHomeAlphaParams = transformParams;
            AnimatedFloat animatedFloat = new AnimatedFloat();
            this.mVerticalShiftForScale = animatedFloat;
            AnimatedFloat animatedFloat2 = new AnimatedFloat();
            this.mRecentsAlpha = animatedFloat2;
            this.mTargetRect = new RectF();
            this.mDuration = j4;
            if (r7.mRunningOverHome) {
                AnimatedFloat animatedFloat3 = new AnimatedFloat();
                this.mHomeAlpha = animatedFloat3;
                animatedFloat3.value = Utilities.boundToRange(1.0f - r7.mCurrentShift.value, 0.0f, 1.0f);
                animatedFloat.value = r7.mCurrentShift.value;
                r7.runActionOnRemoteHandles(new F(0, this));
            } else {
                AnimatedFloat animatedFloat4 = new AnimatedFloat(new G(this, 0));
                this.mHomeAlpha = animatedFloat4;
                animatedFloat4.value = 0.0f;
                transformParams.setHomeBuilderProxy(new E(1, this));
            }
            animatedFloat2.value = 1.0f;
            r7.runActionOnRemoteHandles(new F(1, this));
        }

        public void addGestureContract(Intent intent, ActivityManager.RunningTaskInfo runningTaskInfo) {
            if (FallbackSwipeHandler.this.mRunningOverHome || runningTaskInfo == null) {
                return;
            }
            Task.TaskKey taskKey = new Task.TaskKey(runningTaskInfo);
            if (taskKey.getComponent() != null) {
                if (FallbackSwipeHandler.sMessageReceiver == null) {
                    FallbackSwipeHandler.sMessageReceiver = new StaticMessageReceiver(0);
                }
                Bundle bundle = new Bundle();
                bundle.putParcelable("android.intent.extra.COMPONENT_NAME", taskKey.getComponent());
                bundle.putParcelable("android.intent.extra.USER", UserHandle.of(taskKey.userId));
                bundle.putParcelable("android.intent.extra.REMOTE_CALLBACK", FallbackSwipeHandler.sMessageReceiver.newCallback(this));
                intent.putExtra("gesture_nav_contract_v1", bundle);
            }
        }

        public /* synthetic */ void lambda$new$0(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
            remoteTargetHandle.getTransformParams().setHomeBuilderProxy(new E(0, this));
        }

        public /* synthetic */ void lambda$new$1(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
            remoteTargetHandle.getTransformParams().setBaseBuilderProxy(new E(2, this));
        }

        private void maybeSendEndMessage() {
            Message message;
            if (!this.mAnimationFinished || (message = this.mOnFinishCallback) == null) {
                return;
            }
            try {
                message.replyTo.send(message);
            } catch (RemoteException e4) {
                Log.e(FallbackSwipeHandler.TAG, "Error sending icon position", e4);
            }
        }

        public void onRectAnimationEnd() {
            this.mAnimationFinished = true;
            maybeSendEndMessage();
        }

        public void updateHomeActivityTransformDuringHomeAnim(SurfaceTransaction.SurfaceProperties surfaceProperties, RemoteAnimationTarget remoteAnimationTarget, TransformParams transformParams) {
            FallbackSwipeHandler.this.setHomeScaleAndAlpha(surfaceProperties, remoteAnimationTarget, this.mVerticalShiftForScale.value, this.mHomeAlpha.value);
        }

        public void updateHomeAlpha() {
            if (this.mHomeAlphaParams.getTargetSet() != null) {
                TransformParams transformParams = this.mHomeAlphaParams;
                transformParams.applySurfaceParams(transformParams.createSurfaceParams(TransformParams.BuilderProxy.NO_OP));
            }
        }

        public void updateRecentsActivityTransformDuringHomeAnim(SurfaceTransaction.SurfaceProperties surfaceProperties, RemoteAnimationTarget remoteAnimationTarget, TransformParams transformParams) {
            surfaceProperties.setAlpha(this.mRecentsAlpha.value);
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
        public AnimatorPlaybackController createActivityAnimationToHome() {
            PendingAnimation pendingAnimation = new PendingAnimation(this.mDuration);
            pendingAnimation.setFloat(this.mRecentsAlpha, AnimatedFloat.VALUE, 0.0f, y0.e.f12957u);
            return pendingAnimation.createPlaybackController();
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
        public RectF getWindowTargetRect() {
            if (this.mTargetRect.isEmpty()) {
                this.mTargetRect.set(super.getWindowTargetRect());
            }
            return this.mTargetRect;
        }

        public boolean handleHomeTaskAppeared(RemoteAnimationTarget[] remoteAnimationTargetArr) {
            RemoteAnimationTarget remoteAnimationTarget = remoteAnimationTargetArr[0];
            if (remoteAnimationTarget.windowConfiguration.getActivityType() == 2) {
                this.mHomeAlphaParams.setTargetSet(new RemoteAnimationTargets(new RemoteAnimationTarget[]{remoteAnimationTarget}, new RemoteAnimationTarget[0], new RemoteAnimationTarget[0], remoteAnimationTarget.mode));
                updateHomeAlpha();
                return true;
            }
            return false;
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
        public void playAtomicAnimation(float f4) {
            AnimatedFloat animatedFloat = this.mHomeAlpha;
            ObjectAnimator animateToValue = animatedFloat.animateToValue(animatedFloat.value, 1.0f);
            animateToValue.setDuration(this.mDuration).setInterpolator(y0.e.f12957u);
            animateToValue.start();
            if (FallbackSwipeHandler.this.mRunningOverHome) {
                SpringAnimationBuilder springAnimationBuilder = new SpringAnimationBuilder(FallbackSwipeHandler.this.mContext);
                springAnimationBuilder.setStartValue(this.mVerticalShiftForScale.value);
                springAnimationBuilder.setEndValue(0.0f);
                springAnimationBuilder.setStartVelocity((-f4) / FallbackSwipeHandler.this.mTransitionDragLength);
                springAnimationBuilder.setMinimumVisibleChange(1.0f / FallbackSwipeHandler.this.mDp.heightPx);
                springAnimationBuilder.setDampingRatio(0.6f);
                springAnimationBuilder.setStiffness(800.0f);
                springAnimationBuilder.build(this.mVerticalShiftForScale, AnimatedFloat.VALUE).start();
            }
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
        public void setAnimation(RectFSpringAnim rectFSpringAnim) {
            this.mSpringAnim = rectFSpringAnim;
            rectFSpringAnim.addAnimatorListener(AnimatorListeners.forEndCallback(new G(this, 1)));
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
        public void update(RectF rectF, float f4, float f5) {
            if (this.mSurfaceControl != null) {
                rectF.roundOut(this.mTempRect);
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                try {
                    transaction.setGeometry(this.mSurfaceControl, null, this.mTempRect, 0);
                    transaction.apply();
                } catch (RuntimeException unused) {
                }
            }
        }

        @Override // java.util.function.Consumer
        public void accept(Message message) {
            try {
                Bundle data = message.getData();
                RectF rectF = (RectF) data.getParcelable("gesture_nav_contract_icon_position");
                if (!rectF.isEmpty()) {
                    this.mSurfaceControl = (SurfaceControl) data.getParcelable("gesture_nav_contract_surface_control");
                    this.mTargetRect.set(rectF);
                    RectFSpringAnim rectFSpringAnim = this.mSpringAnim;
                    if (rectFSpringAnim != null) {
                        rectFSpringAnim.onTargetPositionChanged();
                    }
                    this.mOnFinishCallback = (Message) data.getParcelable("gesture_nav_contract_finish_callback");
                }
                maybeSendEndMessage();
            } catch (Exception unused) {
            }
        }
    }

    /* loaded from: classes.dex */
    class FallbackPipToHomeAnimationFactory extends SwipeUpAnimationLogic.HomeAnimationFactory {
        public /* synthetic */ FallbackPipToHomeAnimationFactory(FallbackSwipeHandler fallbackSwipeHandler, int i4) {
            this();
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
        public AnimatorPlaybackController createActivityAnimationToHome() {
            DeviceProfile deviceProfile = FallbackSwipeHandler.this.mDp;
            return ((RecentsActivity) FallbackSwipeHandler.this.mActivity).getStateManager().createAnimationToNewWorkspace(RecentsState.HOME, Math.max(deviceProfile.widthPx, deviceProfile.heightPx) * 2, 1);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private FallbackPipToHomeAnimationFactory() {
            super();
            FallbackSwipeHandler.this = r1;
        }
    }

    /* loaded from: classes.dex */
    public class StaticMessageReceiver implements Handler.Callback {
        private WeakReference mCurrentCallback;
        private ParcelUuid mCurrentUID;
        private final Messenger mMessenger;

        public /* synthetic */ StaticMessageReceiver(int i4) {
            this();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            Consumer consumer;
            if (!this.mCurrentUID.equals(message.obj) || (consumer = (Consumer) this.mCurrentCallback.get()) == null) {
                return false;
            }
            consumer.accept(message);
            return true;
        }

        public Message newCallback(Consumer consumer) {
            this.mCurrentUID = new ParcelUuid(UUID.randomUUID());
            this.mCurrentCallback = new WeakReference(consumer);
            Message obtain = Message.obtain();
            obtain.replyTo = this.mMessenger;
            obtain.obj = this.mCurrentUID;
            return obtain;
        }

        private StaticMessageReceiver() {
            this.mMessenger = new Messenger(new Handler(Looper.getMainLooper(), this));
            this.mCurrentUID = new ParcelUuid(UUID.randomUUID());
            this.mCurrentCallback = new WeakReference(null);
        }
    }

    public FallbackSwipeHandler(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, TaskAnimationManager taskAnimationManager, GestureState gestureState, long j4, boolean z4, InputConsumerController inputConsumerController) {
        super(context, recentsAnimationDeviceState, taskAnimationManager, gestureState, j4, z4, inputConsumerController);
        this.mTmpMatrix = new Matrix();
        this.mMaxLauncherScale = 1.0f;
        boolean z5 = this.mGestureState.getRunningTask() != null && this.mGestureState.getRunningTask().isHomeTask();
        this.mRunningOverHome = z5;
        if (z5) {
            runActionOnRemoteHandles(new F(2, this));
        }
    }

    public /* synthetic */ void lambda$finishRecentsControllerToHome$1(Runnable runnable) {
        runnable.run();
        startHomeIntent(null, null);
    }

    public /* synthetic */ void lambda$new$0(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTransformParams().setHomeBuilderProxy(new E(3, this));
    }

    public void setHomeScaleAndAlpha(SurfaceTransaction.SurfaceProperties surfaceProperties, RemoteAnimationTarget remoteAnimationTarget, float f4, float f5) {
        float f6 = this.mMaxLauncherScale;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        float a4 = w.f.a(f6, 1.0f, f4, 1.0f);
        this.mTmpMatrix.setScale(a4, a4, remoteAnimationTarget.localBounds.exactCenterX(), remoteAnimationTarget.localBounds.exactCenterY());
        surfaceProperties.setMatrix(this.mTmpMatrix).setAlpha(f5);
        surfaceProperties.setShow();
    }

    private void startHomeIntent(FallbackHomeAnimationFactory fallbackHomeAnimationFactory, RemoteAnimationTarget remoteAnimationTarget) {
        ActivityOptions makeCustomAnimation = ActivityOptions.makeCustomAnimation(this.mContext, 0, 0);
        Intent intent = new Intent(this.mGestureState.getHomeIntent());
        if (fallbackHomeAnimationFactory != null && remoteAnimationTarget != null) {
            fallbackHomeAnimationFactory.addGestureContract(intent, remoteAnimationTarget.taskInfo);
        }
        OverviewComponentObserver.startHomeIntentSafely(this.mContext, intent, makeCustomAnimation.toBundle());
    }

    public void updateHomeActivityTransformDuringSwipeUp(SurfaceTransaction.SurfaceProperties surfaceProperties, RemoteAnimationTarget remoteAnimationTarget, TransformParams transformParams) {
        float f4 = this.mCurrentShift.value;
        setHomeScaleAndAlpha(surfaceProperties, remoteAnimationTarget, f4, Utilities.boundToRange(1.0f - f4, 0.0f, 1.0f));
    }

    @Override // com.android.quickstep.AbsSwipeUpHandler
    public SwipeUpAnimationLogic.HomeAnimationFactory createHomeAnimationFactory(ArrayList arrayList, long j4, boolean z4, boolean z5, RemoteAnimationTarget remoteAnimationTarget) {
        this.mAppCanEnterPip = z5;
        if (z5) {
            return new FallbackPipToHomeAnimationFactory(this, 0);
        }
        FallbackHomeAnimationFactory fallbackHomeAnimationFactory = new FallbackHomeAnimationFactory(j4);
        this.mActiveAnimationFactory = fallbackHomeAnimationFactory;
        startHomeIntent(fallbackHomeAnimationFactory, remoteAnimationTarget);
        return this.mActiveAnimationFactory;
    }

    @Override // com.android.quickstep.AbsSwipeUpHandler
    public void finishRecentsControllerToHome(final Runnable runnable) {
        if (this.mAppCanEnterPip) {
            runnable = new Runnable() { // from class: com.android.quickstep.D
                @Override // java.lang.Runnable
                public final void run() {
                    FallbackSwipeHandler.this.lambda$finishRecentsControllerToHome$1(runnable);
                }
            };
        }
        ((FallbackRecentsView) this.mRecentsView).cleanupRemoteTargets();
        this.mRecentsAnimationController.finish(this.mAppCanEnterPip, runnable, true);
    }

    @Override // com.android.quickstep.AbsSwipeUpHandler
    public boolean handleTaskAppeared(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        FallbackHomeAnimationFactory fallbackHomeAnimationFactory = this.mActiveAnimationFactory;
        if (fallbackHomeAnimationFactory == null || !fallbackHomeAnimationFactory.handleHomeTaskAppeared(remoteAnimationTargetArr)) {
            return super.handleTaskAppeared(remoteAnimationTargetArr);
        }
        this.mActiveAnimationFactory = null;
        return false;
    }

    @Override // com.android.quickstep.SwipeUpAnimationLogic
    public void initTransitionEndpoints(DeviceProfile deviceProfile) {
        super.initTransitionEndpoints(deviceProfile);
        if (this.mRunningOverHome) {
            this.mMaxLauncherScale = 1.0f / this.mRemoteTargetHandles[0].getTaskViewSimulator().getFullScreenScale();
        }
    }

    @Override // com.android.quickstep.AbsSwipeUpHandler
    public void notifyGestureAnimationStartToRecents() {
        if (!this.mRunningOverHome) {
            super.notifyGestureAnimationStartToRecents();
        } else if (DisplayController.getNavigationMode(this.mContext).hasGestures) {
            ((FallbackRecentsView) this.mRecentsView).onGestureAnimationStartOnHome(this.mGestureState.getRunningTask().getPlaceholderTasks(), this.mDeviceState.getRotationTouchHelper());
        }
    }

    @Override // com.android.quickstep.AbsSwipeUpHandler
    public void switchToScreenshot() {
        if (this.mRunningOverHome) {
            this.mStateCallback.setStateOnUiThread(AbsSwipeUpHandler.STATE_SCREENSHOT_CAPTURED);
        } else {
            super.switchToScreenshot();
        }
    }
}
