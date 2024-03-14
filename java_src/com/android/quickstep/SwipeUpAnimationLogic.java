package com.android.quickstep;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.FloatProperty;
import android.view.RemoteAnimationTarget;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.util.AnimatorControllerWithResistance;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.util.TransformParams;
import java.util.Arrays;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public abstract class SwipeUpAnimationLogic implements RecentsAnimationCallbacks.RecentsAnimationListener {
    protected static final Rect TEMP_RECT = new Rect();
    protected final Context mContext;
    protected float mCurrentDisplacement;
    protected final RecentsAnimationDeviceState mDeviceState;
    protected DeviceProfile mDp;
    protected final GestureState mGestureState;
    protected boolean mIsSwipeForSplit;
    protected RemoteTargetGluer.RemoteTargetHandle[] mRemoteTargetHandles;
    protected final RemoteTargetGluer mTargetGluer;
    protected int mTransitionDragLength;
    protected final AnimatedFloat mCurrentShift = new AnimatedFloat(new Runnable() { // from class: com.android.quickstep.a1
        @Override // java.lang.Runnable
        public final void run() {
            SwipeUpAnimationLogic.this.onCurrentShiftUpdated();
        }
    });
    protected float mDragLengthFactor = 1.0f;

    /* loaded from: classes.dex */
    public abstract class HomeAnimationFactory {
        protected float mSwipeVelocity;

        public HomeAnimationFactory() {
        }

        public abstract AnimatorPlaybackController createActivityAnimationToHome();

        public float getEndRadius(RectF rectF) {
            return rectF.width() / 2.0f;
        }

        public float getWindowAlpha(float f4) {
            if (f4 <= 0.0f) {
                return 1.0f;
            }
            if (f4 >= 0.85f) {
                return 0.0f;
            }
            return Utilities.mapToRange(f4, 0.0f, 0.85f, 1.0f, 0.0f, y0.e.f12959w);
        }

        public RectF getWindowTargetRect() {
            PagedOrientationHandler orientationHandler = SwipeUpAnimationLogic.this.getOrientationHandler();
            DeviceProfile deviceProfile = SwipeUpAnimationLogic.this.mDp;
            int i4 = deviceProfile.availableWidthPx;
            int i5 = deviceProfile.availableHeightPx;
            float primaryValue = orientationHandler.getPrimaryValue(i4, i5) / 2.0f;
            float secondaryValue = orientationHandler.getSecondaryValue(i4, i5) - deviceProfile.hotseatBarSizePx;
            float f4 = deviceProfile.iconSizePx / 2;
            return new RectF(primaryValue - f4, secondaryValue - f4, primaryValue + f4, secondaryValue + f4);
        }

        public boolean isInHotseat() {
            return false;
        }

        public void onCancel() {
        }

        public void playAtomicAnimation(float f4) {
        }

        public void setAnimation(RectFSpringAnim rectFSpringAnim) {
        }

        public void setSwipeVelocity(float f4) {
            this.mSwipeVelocity = f4;
        }

        public void update(RectF rectF, float f4, float f5) {
        }
    }

    /* loaded from: classes.dex */
    public interface RunningWindowAnim {
        static RunningWindowAnim wrap(final Animator animator) {
            return new RunningWindowAnim() { // from class: com.android.quickstep.SwipeUpAnimationLogic.RunningWindowAnim.1
                @Override // com.android.quickstep.SwipeUpAnimationLogic.RunningWindowAnim
                public void cancel() {
                    animator.cancel();
                }

                @Override // com.android.quickstep.SwipeUpAnimationLogic.RunningWindowAnim
                public void end() {
                    animator.end();
                }
            };
        }

        void cancel();

        void end();

        static RunningWindowAnim wrap(final RectFSpringAnim rectFSpringAnim) {
            return new RunningWindowAnim() { // from class: com.android.quickstep.SwipeUpAnimationLogic.RunningWindowAnim.2
                @Override // com.android.quickstep.SwipeUpAnimationLogic.RunningWindowAnim
                public void cancel() {
                    RectFSpringAnim.this.cancel();
                }

                @Override // com.android.quickstep.SwipeUpAnimationLogic.RunningWindowAnim
                public void end() {
                    RectFSpringAnim.this.end();
                }
            };
        }
    }

    /* loaded from: classes.dex */
    public class SpringAnimationRunner extends AnimationSuccessListener implements RectFSpringAnim.OnUpdateListener, TransformParams.BuilderProxy {
        final HomeAnimationFactory mAnimationFactory;
        final Rect mCropRect;
        final RectF mCropRectF;
        final float mEndRadius;
        final AnimatorPlaybackController mHomeAnim;
        final Matrix mHomeToWindowPositionMap;
        private final TransformParams mLocalTransformParams;
        final Matrix mMatrix;
        final float mStartRadius;
        final RectF mWindowCurrentRect;

        public SpringAnimationRunner(HomeAnimationFactory homeAnimationFactory, RectF rectF, Matrix matrix, TransformParams transformParams, TaskViewSimulator taskViewSimulator) {
            Rect rect = new Rect();
            this.mCropRect = rect;
            this.mMatrix = new Matrix();
            this.mWindowCurrentRect = new RectF();
            this.mAnimationFactory = homeAnimationFactory;
            this.mHomeAnim = homeAnimationFactory.createActivityAnimationToHome();
            this.mCropRectF = rectF;
            this.mHomeToWindowPositionMap = matrix;
            this.mLocalTransformParams = transformParams;
            rectF.roundOut(rect);
            this.mStartRadius = taskViewSimulator.getCurrentCornerRadius();
            this.mEndRadius = homeAnimationFactory.getEndRadius(rectF);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.mHomeAnim.dispatchOnStart();
        }

        @Override // com.android.launcher3.anim.AnimationSuccessListener
        public void onAnimationSuccess(Animator animator) {
            this.mHomeAnim.getAnimationPlayer().end();
        }

        @Override // com.android.quickstep.util.TransformParams.BuilderProxy
        public void onBuildTargetParams(SurfaceTransaction.SurfaceProperties surfaceProperties, RemoteAnimationTarget remoteAnimationTarget, TransformParams transformParams) {
            surfaceProperties.setMatrix(this.mMatrix).setWindowCrop(this.mCropRect).setCornerRadius(transformParams.getCornerRadius());
        }

        @Override // com.android.quickstep.util.RectFSpringAnim.OnUpdateListener
        public void onCancel() {
            this.mAnimationFactory.onCancel();
        }

        @Override // com.android.quickstep.util.RectFSpringAnim.OnUpdateListener
        public void onUpdate(RectF rectF, float f4) {
            this.mHomeAnim.setPlayFraction(f4);
            this.mHomeToWindowPositionMap.mapRect(this.mWindowCurrentRect, rectF);
            this.mMatrix.setRectToRect(this.mCropRectF, this.mWindowCurrentRect, Matrix.ScaleToFit.FILL);
            float f5 = this.mStartRadius;
            float f6 = this.mEndRadius;
            String[] strArr = Utilities.EMPTY_STRING_ARRAY;
            float a4 = w.f.a(f6, f5, f4, f5);
            this.mLocalTransformParams.setTargetAlpha(this.mAnimationFactory.getWindowAlpha(f4)).setCornerRadius(a4);
            TransformParams transformParams = this.mLocalTransformParams;
            transformParams.applySurfaceParams(transformParams.createSurfaceParams(this));
            this.mAnimationFactory.update(rectF, f4, this.mMatrix.mapRadius(a4));
        }
    }

    public SwipeUpAnimationLogic(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, GestureState gestureState) {
        this.mContext = context;
        this.mDeviceState = recentsAnimationDeviceState;
        this.mGestureState = gestureState;
        updateIsGestureForSplit(((TopTaskTracker) TopTaskTracker.INSTANCE.get(context)).getRunningSplitTaskIds().length);
        RemoteTargetGluer remoteTargetGluer = new RemoteTargetGluer(context, gestureState.getActivityInterface());
        this.mTargetGluer = remoteTargetGluer;
        this.mRemoteTargetHandles = remoteTargetGluer.getRemoteTargetHandles();
        runActionOnRemoteHandles(new Consumer() { // from class: com.android.quickstep.b1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SwipeUpAnimationLogic.this.lambda$new$0((RemoteTargetGluer.RemoteTargetHandle) obj);
            }
        });
    }

    private RectFSpringAnim getWindowAnimationToHomeInternal(HomeAnimationFactory homeAnimationFactory, RectF rectF, TransformParams transformParams, TaskViewSimulator taskViewSimulator, RectF rectF2, Matrix matrix) {
        RectF rectF3 = new RectF(taskViewSimulator.getCurrentCropRect());
        Matrix matrix2 = new Matrix();
        boolean z4 = false;
        this.mRemoteTargetHandles[0].getTaskViewSimulator().getOrientationState().getOrientationHandler().fixBoundsForHomeAnimStartRect(rectF2, this.mDp);
        matrix.invert(matrix2);
        matrix2.mapRect(rectF2);
        if (this.mDp.isTaskbarPresent && homeAnimationFactory.isInHotseat()) {
            z4 = true;
        }
        RectFSpringAnim rectFSpringAnim = new RectFSpringAnim(z4 ? new RectFSpringAnim.TaskbarHotseatSpringConfig(this.mContext, rectF2, rectF) : new RectFSpringAnim.DefaultSpringConfig(this.mContext, this.mDp, rectF2, rectF));
        homeAnimationFactory.setAnimation(rectFSpringAnim);
        SpringAnimationRunner springAnimationRunner = new SpringAnimationRunner(homeAnimationFactory, rectF3, matrix, transformParams, taskViewSimulator);
        rectFSpringAnim.addAnimatorListener(springAnimationRunner);
        rectFSpringAnim.addOnUpdateListener(springAnimationRunner);
        return rectFSpringAnim;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TaskViewSimulator[] lambda$getRemoteTaskViewSimulators$2(int i4) {
        return new TaskViewSimulator[i4];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().getOrientationState().update(this.mDeviceState.getRotationTouchHelper().getCurrentActiveRotation(), this.mDeviceState.getRotationTouchHelper().getDisplayRotation());
    }

    public RectFSpringAnim[] createWindowAnimationToHome(float f4, HomeAnimationFactory homeAnimationFactory) {
        RectF windowTargetRect = homeAnimationFactory.getWindowTargetRect();
        RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr = this.mRemoteTargetHandles;
        RectFSpringAnim[] rectFSpringAnimArr = new RectFSpringAnim[remoteTargetHandleArr.length];
        Matrix[] matrixArr = new Matrix[remoteTargetHandleArr.length];
        RectF[] updateProgressForStartRect = updateProgressForStartRect(matrixArr, f4);
        int length = this.mRemoteTargetHandles.length;
        for (int i4 = 0; i4 < length; i4++) {
            RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle = this.mRemoteTargetHandles[i4];
            rectFSpringAnimArr[i4] = getWindowAnimationToHomeInternal(homeAnimationFactory, windowTargetRect, remoteTargetHandle.getTransformParams(), remoteTargetHandle.getTaskViewSimulator(), updateProgressForStartRect[i4], matrixArr[i4]);
        }
        return rectFSpringAnimArr;
    }

    public PagedOrientationHandler getOrientationHandler() {
        return this.mRemoteTargetHandles[0].getTaskViewSimulator().getOrientationState().getOrientationHandler();
    }

    public TaskViewSimulator[] getRemoteTaskViewSimulators() {
        return (TaskViewSimulator[]) Arrays.stream(this.mRemoteTargetHandles).map(new Y0()).toArray(new Z0());
    }

    public void initTransitionEndpoints(DeviceProfile deviceProfile) {
        RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr;
        this.mDp = deviceProfile;
        int swipeUpDestinationAndLength = this.mGestureState.getActivityInterface().getSwipeUpDestinationAndLength(deviceProfile, this.mContext, TEMP_RECT, this.mRemoteTargetHandles[0].getTaskViewSimulator().getOrientationState().getOrientationHandler());
        this.mTransitionDragLength = swipeUpDestinationAndLength;
        this.mDragLengthFactor = deviceProfile.heightPx / swipeUpDestinationAndLength;
        for (RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle : this.mRemoteTargetHandles) {
            PendingAnimation pendingAnimation = new PendingAnimation(this.mTransitionDragLength * 2);
            TaskViewSimulator taskViewSimulator = remoteTargetHandle.getTaskViewSimulator();
            taskViewSimulator.setDp(deviceProfile);
            taskViewSimulator.addAppToOverviewAnim(pendingAnimation, y0.e.f12949m);
            AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
            Context context = this.mContext;
            RecentsOrientedState orientationState = taskViewSimulator.getOrientationState();
            DeviceProfile deviceProfile2 = this.mDp;
            AnimatedFloat animatedFloat = taskViewSimulator.recentsViewScale;
            FloatProperty floatProperty = AnimatedFloat.VALUE;
            remoteTargetHandle.setPlaybackController(AnimatorControllerWithResistance.createForRecents(createPlaybackController, context, orientationState, deviceProfile2, animatedFloat, floatProperty, taskViewSimulator.recentsViewSecondaryTranslation, floatProperty));
        }
    }

    public abstract void onCurrentShiftUpdated();

    public float overrideDisplacementForTransientTaskbar(float f4) {
        return f4;
    }

    public void runActionOnRemoteHandles(Consumer consumer) {
        for (RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle : this.mRemoteTargetHandles) {
            consumer.accept(remoteTargetHandle);
        }
    }

    public void updateDisplacement(float f4) {
        float overrideDisplacementForTransientTaskbar = overrideDisplacementForTransientTaskbar(-f4);
        this.mCurrentDisplacement = overrideDisplacementForTransientTaskbar;
        int i4 = this.mTransitionDragLength;
        float f5 = this.mDragLengthFactor;
        if (overrideDisplacementForTransientTaskbar <= i4 * f5 || i4 <= 0) {
            float max = Math.max(overrideDisplacementForTransientTaskbar, 0.0f);
            int i5 = this.mTransitionDragLength;
            f5 = i5 == 0 ? 0.0f : max / i5;
        }
        this.mCurrentShift.updateValue(f5);
    }

    public void updateIsGestureForSplit(int i4) {
        this.mIsSwipeForSplit = i4 > 1;
    }

    public RectF[] updateProgressForStartRect(Matrix[] matrixArr, float f4) {
        this.mCurrentShift.updateValue(f4);
        RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr = this.mRemoteTargetHandles;
        RectF[] rectFArr = new RectF[remoteTargetHandleArr.length];
        int length = remoteTargetHandleArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle = this.mRemoteTargetHandles[i4];
            TaskViewSimulator taskViewSimulator = remoteTargetHandle.getTaskViewSimulator();
            taskViewSimulator.apply(remoteTargetHandle.getTransformParams().setProgress(f4));
            rectFArr[i4] = new RectF(taskViewSimulator.getCurrentCropRect());
            Matrix matrix = new Matrix();
            matrixArr[i4] = matrix;
            taskViewSimulator.applyWindowToHomeRotation(matrix);
            taskViewSimulator.getCurrentMatrix().mapRect(rectFArr[i4]);
        }
        return rectFArr;
    }
}
