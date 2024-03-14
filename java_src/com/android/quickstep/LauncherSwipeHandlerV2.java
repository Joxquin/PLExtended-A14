package com.android.quickstep;

import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.IBinder;
import android.os.UserHandle;
import android.util.Size;
import android.view.RemoteAnimationTarget;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.ObjectWrapper;
import com.android.launcher3.views.FloatingIconView;
import com.android.launcher3.views.FloatingView;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.SwipeUpAnimationLogic;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.quickstep.util.StaggeredWorkspaceAnim;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.views.FloatingWidgetView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.system.InputConsumerController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class LauncherSwipeHandlerV2 extends AbsSwipeUpHandler {

    /* loaded from: classes.dex */
    class FloatingViewHomeAnimationFactory extends LauncherHomeAnimationFactory {
        private final FloatingView mFloatingView;

        public FloatingViewHomeAnimationFactory(FloatingView floatingView) {
            super(LauncherSwipeHandlerV2.this, 0);
            this.mFloatingView = floatingView;
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
        public void onCancel() {
            this.mFloatingView.fastFinish();
        }
    }

    /* loaded from: classes.dex */
    class LauncherHomeAnimationFactory extends SwipeUpAnimationLogic.HomeAnimationFactory {
        public /* synthetic */ LauncherHomeAnimationFactory(LauncherSwipeHandlerV2 launcherSwipeHandlerV2, int i4) {
            this();
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
        public AnimatorPlaybackController createActivityAnimationToHome() {
            DeviceProfile deviceProfile = LauncherSwipeHandlerV2.this.mDp;
            return ((QuickstepLauncher) LauncherSwipeHandlerV2.this.mActivity).getStateManager().createAnimationToNewWorkspace(LauncherState.NORMAL, Math.max(deviceProfile.widthPx, deviceProfile.heightPx) * 2, 1);
        }

        public View getViewIgnoredInWorkspaceRevealAnimation() {
            return null;
        }

        @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
        public void playAtomicAnimation(float f4) {
            new StaggeredWorkspaceAnim((Launcher) LauncherSwipeHandlerV2.this.mActivity, f4, true, getViewIgnoredInWorkspaceRevealAnimation()).start();
        }

        private LauncherHomeAnimationFactory() {
            super();
        }
    }

    public LauncherSwipeHandlerV2(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, TaskAnimationManager taskAnimationManager, GestureState gestureState, long j4, boolean z4, InputConsumerController inputConsumerController) {
        super(context, recentsAnimationDeviceState, taskAnimationManager, gestureState, j4, z4, inputConsumerController);
    }

    private SwipeUpAnimationLogic.HomeAnimationFactory createIconHomeAnimationFactory(final View view) {
        final RectF rectF = new RectF();
        StatefulActivity statefulActivity = this.mActivity;
        final FloatingIconView floatingIconView = FloatingIconView.getFloatingIconView((Launcher) statefulActivity, view, null, ((QuickstepLauncher) statefulActivity).getTaskbarUIController() == null ? null : ((QuickstepLauncher) this.mActivity).getTaskbarUIController().findMatchingView(view), true, rectF, false);
        return new FloatingViewHomeAnimationFactory(floatingIconView) { // from class: com.android.quickstep.LauncherSwipeHandlerV2.2
            @Override // com.android.quickstep.LauncherSwipeHandlerV2.LauncherHomeAnimationFactory
            public View getViewIgnoredInWorkspaceRevealAnimation() {
                return view;
            }

            @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
            public RectF getWindowTargetRect() {
                return rectF;
            }

            @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
            public boolean isInHotseat() {
                return (view.getTag() instanceof ItemInfo) && ((ItemInfo) view.getTag()).isInHotseat();
            }

            @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
            public void setAnimation(RectFSpringAnim rectFSpringAnim) {
                super.setAnimation(rectFSpringAnim);
                rectFSpringAnim.addAnimatorListener(floatingIconView);
                floatingIconView.setOnTargetChangeListener(new com.android.launcher3.B0(rectFSpringAnim, 0));
                floatingIconView.setFastFinishRunnable(new com.android.launcher3.B0(rectFSpringAnim, 1));
            }

            @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
            public void update(RectF rectF2, float f4, float f5) {
                super.update(rectF2, f4, f5);
                floatingIconView.update(1.0f, rectF2, f4, r6, f5, false);
            }
        };
    }

    private SwipeUpAnimationLogic.HomeAnimationFactory createWidgetHomeAnimationFactory(final LauncherAppWidgetHostView launcherAppWidgetHostView, boolean z4, RemoteAnimationTarget remoteAnimationTarget) {
        final float f4 = z4 ? 0.0f : 1.0f;
        final RectF rectF = new RectF();
        Rect rect = new Rect();
        RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle = this.mRemoteTargetHandles[0];
        TaskViewSimulator taskViewSimulator = remoteTargetHandle.getTaskViewSimulator();
        taskViewSimulator.apply(remoteTargetHandle.getTransformParams());
        taskViewSimulator.getCurrentCropRect().roundOut(rect);
        final FloatingWidgetView floatingWidgetView = FloatingWidgetView.getFloatingWidgetView((Launcher) this.mActivity, launcherAppWidgetHostView, rectF, new Size(rect.width(), rect.height()), taskViewSimulator.getCurrentCornerRadius(), z4, FloatingWidgetView.getDefaultBackgroundColor(this.mContext, remoteAnimationTarget));
        return new FloatingViewHomeAnimationFactory(floatingWidgetView) { // from class: com.android.quickstep.LauncherSwipeHandlerV2.3
            @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
            public float getEndRadius(RectF rectF2) {
                return floatingWidgetView.getInitialCornerRadius();
            }

            @Override // com.android.quickstep.LauncherSwipeHandlerV2.LauncherHomeAnimationFactory
            public View getViewIgnoredInWorkspaceRevealAnimation() {
                return launcherAppWidgetHostView;
            }

            @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
            public float getWindowAlpha(float f5) {
                return 1.0f - Utilities.mapBoundToRange(f5, 0.0f, 0.5f, 0.0f, 1.0f, y0.e.f12949m);
            }

            @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
            public RectF getWindowTargetRect() {
                super.getWindowTargetRect();
                return rectF;
            }

            @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
            public void setAnimation(RectFSpringAnim rectFSpringAnim) {
                super.setAnimation(rectFSpringAnim);
                rectFSpringAnim.addAnimatorListener(floatingWidgetView);
                floatingWidgetView.setOnTargetChangeListener(new com.android.launcher3.B0(rectFSpringAnim, 2));
                floatingWidgetView.setFastFinishRunnable(new com.android.launcher3.B0(rectFSpringAnim, 3));
            }

            @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
            public void update(RectF rectF2, float f5, float f6) {
                super.update(rectF2, f5, f6);
                Interpolator interpolator = y0.e.f12940d;
                float mapBoundToRange = Utilities.mapBoundToRange(f5, 0.5f, 1.0f, 0.0f, 1.0f, interpolator);
                floatingWidgetView.update(rectF2, f4, mapBoundToRange, 1.0f - Utilities.mapBoundToRange(f5, 0.8f, 1.0f, 0.0f, 1.0f, interpolator), 1.0f - f5);
            }
        };
    }

    private View findWorkspaceView(ArrayList arrayList, TaskView taskView) {
        int i4;
        if (this.mIsSwipingPipToHome || taskView == null || taskView.getTask() == null || taskView.getTask().key.getComponent() == null) {
            return null;
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                i4 = Integer.MIN_VALUE;
                break;
            }
            Integer num = (Integer) ObjectWrapper.unwrap((IBinder) it.next());
            if (num != null) {
                i4 = num.intValue();
                break;
            }
        }
        return ((QuickstepLauncher) this.mActivity).getFirstMatchForAppClose(i4, taskView.getTask().key.getComponent().getPackageName(), UserHandle.of(taskView.getTask().key.userId), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createHomeAnimationFactory$0(Boolean bool) {
        this.mRecentsView.startHome();
    }

    @Override // com.android.quickstep.AbsSwipeUpHandler
    public SwipeUpAnimationLogic.HomeAnimationFactory createHomeAnimationFactory(ArrayList arrayList, final long j4, boolean z4, boolean z5, RemoteAnimationTarget remoteAnimationTarget) {
        if (this.mActivity == null) {
            this.mStateCallback.addChangeListener(AbsSwipeUpHandler.STATE_LAUNCHER_PRESENT | AbsSwipeUpHandler.STATE_HANDLER_INVALIDATED, new Consumer() { // from class: com.android.quickstep.T
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    LauncherSwipeHandlerV2.this.lambda$createHomeAnimationFactory$0((Boolean) obj);
                }
            });
            return new SwipeUpAnimationLogic.HomeAnimationFactory() { // from class: com.android.quickstep.LauncherSwipeHandlerV2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.android.quickstep.SwipeUpAnimationLogic.HomeAnimationFactory
                public AnimatorPlaybackController createActivityAnimationToHome() {
                    return AnimatorPlaybackController.wrap(new AnimatorSet(), j4);
                }
            };
        }
        View findWorkspaceView = findWorkspaceView(arrayList, this.mRecentsView.getRunningTaskView());
        boolean z6 = findWorkspaceView != null && findWorkspaceView.isAttachedToWindow() && findWorkspaceView.getHeight() > 0;
        ((QuickstepLauncher) this.mActivity).getRootView().setForceHideBackArrow(true);
        if (!TaskAnimationManager.ENABLE_SHELL_TRANSITIONS) {
            ((QuickstepLauncher) this.mActivity).addActivityFlags(32);
        }
        return (!z6 || z5 || this.mIsSwipeForSplit) ? new LauncherHomeAnimationFactory(this, 0) : findWorkspaceView instanceof LauncherAppWidgetHostView ? createWidgetHomeAnimationFactory((LauncherAppWidgetHostView) findWorkspaceView, z4, remoteAnimationTarget) : createIconHomeAnimationFactory(findWorkspaceView);
    }

    @Override // com.android.quickstep.AbsSwipeUpHandler
    public void finishRecentsControllerToHome(Runnable runnable) {
        this.mRecentsView.cleanupRemoteTargets();
        this.mRecentsAnimationController.finish(true, runnable, true);
    }
}
