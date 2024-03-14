package com.android.quickstep;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.FloatProperty;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.View;
import android.view.animation.Interpolator;
import android.window.TransitionInfo;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.QuickstepTransitionManager;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.SpringProperty;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.TaskViewUtils;
import com.android.quickstep.util.MultiValueUpdateListener;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.SurfaceTransactionApplier;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.util.TransformParams;
import com.android.quickstep.views.DesktopTaskView;
import com.android.quickstep.views.GroupedTaskView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import j.C1080K;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class TaskViewUtils {

    /* renamed from: com.android.quickstep.TaskViewUtils$10 */
    /* loaded from: classes.dex */
    public class AnonymousClass10 extends AnimatorListenerAdapter {
        final /* synthetic */ RecentsView val$recentsView;
        final /* synthetic */ StateManager val$stateManager;

        public AnonymousClass10(RecentsView recentsView, StateManager stateManager) {
            this.val$recentsView = recentsView;
            this.val$stateManager = stateManager;
        }

        public static /* synthetic */ void lambda$onAnimationEnd$0(StateManager stateManager) {
            stateManager.goToState(LauncherState.NORMAL, false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.val$recentsView.finishRecentsAnimation(false, new E1(this.val$stateManager, 0));
        }
    }

    /* renamed from: com.android.quickstep.TaskViewUtils$9 */
    /* loaded from: classes.dex */
    public class AnonymousClass9 extends AnimatorListenerAdapter {
        final /* synthetic */ RecentsView val$recentsView;
        final /* synthetic */ StateManager val$stateManager;

        public AnonymousClass9(RecentsView recentsView, StateManager stateManager) {
            this.val$recentsView = recentsView;
            this.val$stateManager = stateManager;
        }

        public static void lambda$onAnimationEnd$0(StateManager stateManager) {
            stateManager.moveToRestState();
            stateManager.reapplyState(false);
        }

        public static /* synthetic */ void lambda$onAnimationEnd$1(RecentsView recentsView, StateManager stateManager) {
            recentsView.post(new E1(stateManager, 1));
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            final RecentsView recentsView = this.val$recentsView;
            final StateManager stateManager = this.val$stateManager;
            recentsView.finishRecentsAnimation(false, new Runnable() { // from class: com.android.quickstep.F1
                @Override // java.lang.Runnable
                public final void run() {
                    TaskViewUtils.AnonymousClass9.lambda$onAnimationEnd$1(RecentsView.this, stateManager);
                }
            });
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.val$recentsView.onTaskLaunchedInLiveTileMode();
        }
    }

    private TaskViewUtils() {
    }

    public static void composeRecentsLaunchAnimator(AnimatorSet animatorSet, View view, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, boolean z4, StateManager stateManager, RecentsView recentsView, DepthController depthController) {
        AnimatorSet target;
        Animator duration;
        Animator.AnimatorListener anonymousClass10;
        TaskView findTaskViewToLaunch = findTaskViewToLaunch(recentsView, view, remoteAnimationTargetArr);
        final PendingAnimation pendingAnimation = new PendingAnimation(336L);
        createRecentsWindowAnimator(recentsView, findTaskViewToLaunch, !z4, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, depthController, pendingAnimation);
        if (z4) {
            createSplitAuxiliarySurfacesAnimator(remoteAnimationTargetArr3, true, new Consumer() { // from class: com.android.quickstep.B1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TaskViewUtils.lambda$composeRecentsLaunchAnimator$4(PendingAnimation.this, (ValueAnimator) obj);
                }
            });
        }
        if (z4) {
            RecentsAnimationController recentsAnimationController = recentsView.getRecentsAnimationController();
            if (recentsAnimationController != null) {
                recentsAnimationController.setWillFinishToHome(false);
            }
            duration = recentsView.createAdjacentPageAnimForTaskLaunch(findTaskViewToLaunch);
            duration.setInterpolator(y0.e.f12932F);
            duration.setDuration(336L);
            anonymousClass10 = new AnonymousClass9(recentsView, stateManager);
            target = null;
        } else {
            AnimatorPlaybackController createAnimationToNewWorkspace = stateManager.createAnimationToNewWorkspace(LauncherState.NORMAL, 336L, 0);
            createAnimationToNewWorkspace.dispatchOnStart();
            target = createAnimationToNewWorkspace.getTarget();
            duration = createAnimationToNewWorkspace.getAnimationPlayer().setDuration(336L);
            anonymousClass10 = new AnonymousClass10(recentsView, stateManager);
        }
        pendingAnimation.add(duration);
        if (recentsView.getRunningTaskIndex() != -1) {
            pendingAnimation.addOnFrameCallback(new RunnableC0619z1(1, recentsView));
        }
        animatorSet.play(pendingAnimation.buildAnim());
        stateManager.setCurrentAnimation(animatorSet, target);
        animatorSet.addListener(anonymousClass10);
    }

    public static void composeRecentsSplitLaunchAnimator(GroupedTaskView groupedTaskView, StateManager stateManager, DepthController depthController, int i4, int i5, TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, final Runnable runnable) {
        TransitionInfo.Change change = null;
        if (groupedTaskView != null) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.TaskViewUtils.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    runnable.run();
                }
            });
            composeRecentsLaunchAnimator(animatorSet, groupedTaskView, RemoteAnimationTargetCompat.wrapApps(transitionInfo, transaction, null), RemoteAnimationTargetCompat.wrapNonApps(transitionInfo, true, transaction, null), RemoteAnimationTargetCompat.wrapNonApps(transitionInfo, false, transaction, null), true, stateManager, groupedTaskView.getRecentsView(), depthController);
            transaction.apply();
            animatorSet.start();
            return;
        }
        final ArrayList arrayList = new ArrayList();
        for (int i6 = 0; i6 < transitionInfo.getChanges().size(); i6++) {
            TransitionInfo.Change change2 = (TransitionInfo.Change) transitionInfo.getChanges().get(i6);
            if (change2.getTaskInfo() == null) {
                change2.toString();
            } else {
                int i7 = change2.getTaskInfo().taskId;
                int mode = change2.getMode();
                if ((i7 == i4 || i7 == i5) && mode != 1 && mode != 3) {
                    throw new IllegalStateException(C1080K.a("Expected task to be showing, but it is ", mode));
                }
                if (i7 == i4) {
                    change = change2.getParent() == null ? change2 : transitionInfo.getChange(change2.getParent());
                    arrayList.add(change.getLeash());
                }
                if (i7 == i5) {
                    if (change2.getParent() != null) {
                        change2 = transitionInfo.getChange(change2.getParent());
                    }
                    arrayList.add(change2.getLeash());
                }
            }
        }
        final SurfaceControl.Transaction transaction2 = new SurfaceControl.Transaction();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(370L);
        ofFloat.addUpdateListener(new C1(arrayList, transaction2, 1));
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.TaskViewUtils.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                runnable.run();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    SurfaceControl surfaceControl = (SurfaceControl) it.next();
                    transaction2.show(surfaceControl).setAlpha(surfaceControl, 0.0f);
                }
                transaction2.apply();
            }
        });
        if (change != null && change.getParent() != null) {
            transaction.setAlpha(transitionInfo.getChange(change.getParent()).getLeash(), 1.0f);
        }
        transaction.apply();
        ofFloat.start();
    }

    public static void composeRecentsSplitLaunchAnimatorLegacy(GroupedTaskView groupedTaskView, int i4, int i5, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, StateManager stateManager, DepthController depthController, final Runnable runnable) {
        if (groupedTaskView != null) {
            AnimatorSet animatorSet = new AnimatorSet();
            RecentsView recentsView = groupedTaskView.getRecentsView();
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.TaskViewUtils.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    runnable.run();
                }
            });
            composeRecentsLaunchAnimator(animatorSet, groupedTaskView, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, true, stateManager, recentsView, depthController);
            animatorSet.start();
            return;
        }
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
            ActivityManager.RunningTaskInfo runningTaskInfo = remoteAnimationTarget.taskInfo;
            int i6 = runningTaskInfo != null ? runningTaskInfo.taskId : -1;
            int i7 = remoteAnimationTarget.mode;
            SurfaceControl surfaceControl = remoteAnimationTarget.leash;
            if (surfaceControl != null) {
                if (i7 == 0) {
                    arrayList.add(surfaceControl);
                } else if (i6 == i4 || i6 == i5) {
                    throw new IllegalStateException(C1080K.a("Expected task to be opening, but it is ", i7));
                } else {
                    if (i7 == 1) {
                        arrayList2.add(surfaceControl);
                    }
                }
            }
        }
        for (RemoteAnimationTarget remoteAnimationTarget2 : remoteAnimationTargetArr3) {
            SurfaceControl surfaceControl2 = remoteAnimationTarget2.leash;
            if (remoteAnimationTarget2.windowType == 2034 && surfaceControl2 != null) {
                arrayList.add(surfaceControl2);
            }
        }
        final SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(370L);
        ofFloat.addUpdateListener(new C1(arrayList, transaction, 0));
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.TaskViewUtils.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    transaction.hide((SurfaceControl) it.next());
                }
                runnable.run();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    SurfaceControl surfaceControl3 = (SurfaceControl) it.next();
                    transaction.show(surfaceControl3).setAlpha(surfaceControl3, 0.0f);
                }
                transaction.apply();
            }
        });
        ofFloat.start();
    }

    public static void createRecentsWindowAnimator(RecentsView recentsView, TaskView taskView, boolean z4, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3, DepthController depthController, PendingAnimation pendingAnimation) {
        RecentsView recentsView2;
        boolean z5;
        BaseActivity baseActivity;
        final boolean isEndQuickswitchCuj = taskView.isEndQuickswitchCuj();
        taskView.setEndQuickswitchCuj(false);
        final RemoteAnimationTargets remoteAnimationTargets = new RemoteAnimationTargets(remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, 0);
        final RemoteAnimationTarget navBarRemoteAnimationTarget = remoteAnimationTargets.getNavBarRemoteAnimationTarget();
        final SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(taskView);
        remoteAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
        RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandles = recentsView.getRemoteTargetHandles();
        if (!taskView.isRunningTask() || remoteTargetHandles == null) {
            boolean z6 = DesktopTaskView.DESKTOP_MODE_SUPPORTED && (taskView instanceof DesktopTaskView);
            RemoteTargetGluer remoteTargetGluer = new RemoteTargetGluer(taskView.getContext(), recentsView.getSizeStrategy(), remoteAnimationTargets, z6);
            remoteTargetHandles = z6 ? remoteTargetGluer.assignTargetsForDesktop(remoteAnimationTargets) : taskView.containsMultipleTasks() ? remoteTargetGluer.assignTargetsForSplitScreen(remoteAnimationTargets) : remoteTargetGluer.assignTargets(remoteAnimationTargets);
        }
        final RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr = remoteTargetHandles;
        for (RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle : remoteTargetHandleArr) {
            remoteTargetHandle.getTransformParams().setSyncTransactionApplier(surfaceTransactionApplier);
        }
        int indexOfChild = recentsView.indexOfChild(taskView);
        Context context = taskView.getContext();
        BaseActivity fromContext = BaseActivity.fromContext(context);
        DeviceProfile deviceProfile = fromContext.getDeviceProfile();
        boolean z7 = deviceProfile.isTablet;
        if (indexOfChild != recentsView.getCurrentPage()) {
            z5 = true;
            recentsView2 = recentsView;
        } else {
            recentsView2 = recentsView;
            z5 = false;
        }
        int scrollOffset = recentsView2.getScrollOffset(indexOfChild);
        int gridTranslationY = z7 ? (int) taskView.getGridTranslationY() : 0;
        BaseActivity baseActivity2 = fromContext;
        if (!taskView.isRunningTask()) {
            int length = remoteTargetHandleArr.length;
            int i4 = 0;
            while (i4 < length) {
                RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle2 = remoteTargetHandleArr[i4];
                TaskViewSimulator taskViewSimulator = remoteTargetHandle2.getTaskViewSimulator();
                taskViewSimulator.setDp(deviceProfile);
                int i5 = ((DisplayController) DisplayController.INSTANCE.get(context)).getInfo().rotation;
                taskViewSimulator.getOrientationState().update(i5, i5);
                taskViewSimulator.fullScreenProgress.value = 0.0f;
                taskViewSimulator.recentsViewScale.value = 1.0f;
                taskViewSimulator.setIsGridTask(taskView.isGridTask());
                taskViewSimulator.getOrientationState().getOrientationHandler().set(taskViewSimulator, new C0616y1(), scrollOffset, gridTranslationY);
                pendingAnimation.addFloat(remoteTargetHandle2.getTransformParams(), TransformParams.TARGET_ALPHA, 0.0f, 1.0f, y0.e.b(0.0f, 0.2f, y0.e.f12949m));
                i4++;
                baseActivity2 = baseActivity2;
                context = context;
                deviceProfile = deviceProfile;
                scrollOffset = scrollOffset;
                gridTranslationY = gridTranslationY;
            }
        }
        BaseActivity baseActivity3 = baseActivity2;
        int length2 = remoteTargetHandleArr.length;
        RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr2 = null;
        int i6 = 0;
        while (i6 < length2) {
            TaskViewSimulator taskViewSimulator2 = remoteTargetHandleArr[i6].getTaskViewSimulator();
            AnimatedFloat animatedFloat = taskViewSimulator2.fullScreenProgress;
            FloatProperty floatProperty = AnimatedFloat.VALUE;
            Interpolator interpolator = y0.e.f12932F;
            pendingAnimation.setFloat(animatedFloat, floatProperty, 1.0f, interpolator);
            pendingAnimation.setFloat(taskViewSimulator2.recentsViewScale, floatProperty, taskViewSimulator2.getFullScreenScale(), interpolator);
            pendingAnimation.setFloat(taskViewSimulator2.recentsViewScroll, floatProperty, 0.0f, interpolator);
            pendingAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.TaskViewUtils.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    SurfaceTransaction surfaceTransaction = new SurfaceTransaction();
                    for (int length3 = remoteAnimationTargets.apps.length - 1; length3 >= 0; length3--) {
                        surfaceTransaction.getTransaction().show(remoteAnimationTargets.apps[length3].leash);
                    }
                    surfaceTransactionApplier.scheduleApply(surfaceTransaction);
                }
            });
            pendingAnimation.addOnFrameCallback(new RunnableC0619z1(0, remoteTargetHandleArr));
            if (navBarRemoteAnimationTarget != null) {
                final Rect rect = new Rect();
                pendingAnimation.addOnFrameListener(new MultiValueUpdateListener() { // from class: com.android.quickstep.TaskViewUtils.2
                    MultiValueUpdateListener.FloatProp mNavFadeOut = new MultiValueUpdateListener.FloatProp(1.0f, 0.0f, 0.0f, 133.0f, QuickstepTransitionManager.NAV_FADE_OUT_INTERPOLATOR);
                    MultiValueUpdateListener.FloatProp mNavFadeIn = new MultiValueUpdateListener.FloatProp(0.0f, 1.0f, 234.0f, 266.0f, QuickstepTransitionManager.NAV_FADE_IN_INTERPOLATOR);

                    @Override // com.android.quickstep.util.MultiValueUpdateListener
                    public void onUpdate(float f4, boolean z8) {
                        RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr3;
                        for (RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle3 : remoteTargetHandleArr) {
                            SurfaceTransaction surfaceTransaction = new SurfaceTransaction();
                            SurfaceTransaction.SurfaceProperties forSurface = surfaceTransaction.forSurface(navBarRemoteAnimationTarget.leash);
                            MultiValueUpdateListener.FloatProp floatProp = this.mNavFadeIn;
                            if (floatProp.value > floatProp.getStartValue()) {
                                TaskViewSimulator taskViewSimulator3 = remoteTargetHandle3.getTaskViewSimulator();
                                taskViewSimulator3.getCurrentCropRect().round(rect);
                                forSurface.setMatrix(taskViewSimulator3.getCurrentMatrix()).setWindowCrop(rect).setAlpha(this.mNavFadeIn.value);
                            } else {
                                forSurface.setAlpha(this.mNavFadeOut.value);
                            }
                            remoteTargetHandle3.getTransformParams().applySurfaceParams(surfaceTransaction);
                        }
                    }
                });
            } else {
                RecentsAnimationController recentsAnimationController = recentsView.getRecentsAnimationController();
                if (recentsAnimationController != null) {
                    recentsAnimationController.animateNavigationBarToApp(336L);
                }
            }
            i6++;
            remoteTargetHandleArr2 = remoteTargetHandleArr;
        }
        if (z4 || !z5 || remoteTargetHandleArr2 == null || remoteTargetHandleArr2.length <= 0) {
            baseActivity = baseActivity3;
        } else {
            float f4 = 0.0f;
            pendingAnimation.addFloat(taskView, LauncherAnimUtils.VIEW_ALPHA, 1.0f, 0.0f, y0.e.b(0.2f, 0.4f, y0.e.f12949m));
            for (RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle3 : remoteTargetHandleArr2) {
                remoteTargetHandle3.getTaskViewSimulator().apply(remoteTargetHandle3.getTransformParams());
            }
            final TaskThumbnailView[] thumbnails = taskView.getThumbnails();
            final int min = Math.min(remoteTargetHandleArr2.length, thumbnails.length);
            final Matrix[] matrixArr = new Matrix[min];
            final Matrix[] matrixArr2 = new Matrix[min];
            int i7 = 0;
            while (i7 < min) {
                TaskThumbnailView taskThumbnailView = thumbnails[i7];
                RectF rectF = new RectF(f4, f4, taskThumbnailView.getWidth(), taskThumbnailView.getHeight());
                float[] fArr = {f4, f4, taskThumbnailView.getWidth(), taskThumbnailView.getHeight()};
                Utilities.getDescendantCoordRelativeToAncestor(taskThumbnailView, taskThumbnailView.getRootView(), fArr, false, false);
                BaseActivity baseActivity4 = baseActivity3;
                RectF rectF2 = new RectF(fArr[0], fArr[1], fArr[2], fArr[3]);
                Matrix matrix = new Matrix();
                matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
                matrixArr[i7] = matrix;
                Matrix matrix2 = new Matrix();
                matrix.invert(matrix2);
                matrixArr2[i7] = matrix2;
                float translationY = taskThumbnailView.getTranslationY();
                float translationX = taskThumbnailView.getTranslationX();
                float fullScreenScale = remoteTargetHandleArr2[i7].getTaskViewSimulator().getFullScreenScale();
                Interpolator interpolator2 = y0.e.f12932F;
                pendingAnimation.addFloat(taskThumbnailView, LauncherAnimUtils.VIEW_TRANSLATE_Y, translationY, translationY / fullScreenScale, interpolator2);
                pendingAnimation.addFloat(taskThumbnailView, LauncherAnimUtils.VIEW_TRANSLATE_X, translationX, translationX / fullScreenScale, interpolator2);
                i7++;
                baseActivity3 = baseActivity4;
                f4 = 0.0f;
            }
            baseActivity = baseActivity3;
            final Matrix[] matrixArr3 = new Matrix[min];
            for (int i8 = 0; i8 < min; i8++) {
                matrixArr3[i8] = new Matrix();
                remoteTargetHandleArr2[i8].getTaskViewSimulator().getCurrentMatrix().invert(matrixArr3[i8]);
            }
            final Matrix matrix3 = new Matrix();
            final RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr3 = remoteTargetHandleArr2;
            pendingAnimation.addOnFrameCallback(new Runnable() { // from class: com.android.quickstep.A1
                @Override // java.lang.Runnable
                public final void run() {
                    TaskViewUtils.lambda$createRecentsWindowAnimator$1(min, matrix3, matrixArr, matrixArr3, remoteTargetHandleArr3, matrixArr2, thumbnails);
                }
            });
            pendingAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.TaskViewUtils.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    for (TaskThumbnailView taskThumbnailView2 : thumbnails) {
                        taskThumbnailView2.setAnimationMatrix(null);
                    }
                }
            });
        }
        pendingAnimation.addListener(new AnimationSuccessListener() { // from class: com.android.quickstep.TaskViewUtils.4
            @Override // com.android.launcher3.anim.AnimationSuccessListener, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                remoteAnimationTargets.release();
                super.onAnimationEnd(animator);
            }

            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                if (isEndQuickswitchCuj) {
                    InteractionJankMonitorWrapper.end(11);
                }
            }
        });
        if (depthController != null) {
            pendingAnimation.setFloat(depthController.stateDepth, MultiPropertyFactory.MULTI_PROPERTY_VALUE, LauncherState.BACKGROUND_APP.getDepth(baseActivity), y0.e.f12932F);
        }
    }

    public static ValueAnimator createSplitAuxiliarySurfacesAnimator(RemoteAnimationTarget[] remoteAnimationTargetArr, final boolean z4, Consumer consumer) {
        if (remoteAnimationTargetArr == null || remoteAnimationTargetArr.length == 0) {
            return null;
        }
        final ArrayList arrayList = new ArrayList();
        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
            SurfaceControl surfaceControl = remoteAnimationTarget.leash;
            if (remoteAnimationTarget.windowType == 2034 && surfaceControl != null && surfaceControl.isValid()) {
                arrayList.add(surfaceControl);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        final SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        if (consumer == null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                transaction.setVisibility((SurfaceControl) it.next(), z4);
            }
            transaction.apply();
            transaction.close();
            return null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.quickstep.D1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                TaskViewUtils.lambda$createSplitAuxiliarySurfacesAnimator$5(arrayList, transaction, z4, valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.TaskViewUtils.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!z4) {
                    for (SurfaceControl surfaceControl2 : arrayList) {
                        if (surfaceControl2 != null && surfaceControl2.isValid()) {
                            transaction.hide(surfaceControl2);
                        }
                    }
                    transaction.apply();
                }
                transaction.close();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (z4) {
                    for (SurfaceControl surfaceControl2 : arrayList) {
                        transaction.setLayer(surfaceControl2, Integer.MAX_VALUE);
                        transaction.setAlpha(surfaceControl2, 0.0f);
                        transaction.show(surfaceControl2);
                    }
                    transaction.apply();
                }
            }
        });
        ofFloat.setDuration(100L);
        consumer.accept(ofFloat);
        return ofFloat;
    }

    public static TaskView findTaskViewToLaunch(RecentsView recentsView, View view, RemoteAnimationTarget[] remoteAnimationTargetArr) {
        int i4;
        TaskView taskViewByTaskId;
        if (view instanceof TaskView) {
            TaskView taskView = (TaskView) view;
            if (recentsView.isTaskViewVisible(taskView)) {
                return taskView;
            }
            return null;
        }
        int i5 = 0;
        if (view.getTag() instanceof ItemInfo) {
            ItemInfo itemInfo = (ItemInfo) view.getTag();
            ComponentName targetComponent = itemInfo.getTargetComponent();
            int identifier = itemInfo.user.getIdentifier();
            if (targetComponent != null) {
                for (int i6 = 0; i6 < recentsView.getTaskViewCount(); i6++) {
                    TaskView taskViewAt = recentsView.getTaskViewAt(i6);
                    if (recentsView.isTaskViewVisible(taskViewAt)) {
                        Task.TaskKey taskKey = taskViewAt.getTask().key;
                        if (targetComponent.equals(taskKey.getComponent()) && identifier == taskKey.userId) {
                            return taskViewAt;
                        }
                    }
                }
            }
        }
        if (remoteAnimationTargetArr == null) {
            return null;
        }
        int length = remoteAnimationTargetArr.length;
        while (true) {
            if (i5 >= length) {
                i4 = -1;
                break;
            }
            RemoteAnimationTarget remoteAnimationTarget = remoteAnimationTargetArr[i5];
            if (remoteAnimationTarget.mode == 0) {
                i4 = remoteAnimationTarget.taskId;
                break;
            }
            i5++;
        }
        if (i4 == -1 || (taskViewByTaskId = recentsView.getTaskViewByTaskId(i4)) == null || !recentsView.isTaskViewVisible(taskViewByTaskId)) {
            return null;
        }
        return taskViewByTaskId;
    }

    public static void lambda$composeRecentsLaunchAnimator$4(PendingAnimation pendingAnimation, ValueAnimator valueAnimator) {
        valueAnimator.setStartDelay(pendingAnimation.getDuration() - 100);
        pendingAnimation.add(valueAnimator, SpringProperty.DEFAULT);
    }

    public static /* synthetic */ void lambda$composeRecentsSplitLaunchAnimator$2(ArrayList arrayList, SurfaceControl.Transaction transaction, ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            transaction.setAlpha((SurfaceControl) it.next(), animatedFraction);
        }
        transaction.apply();
    }

    public static /* synthetic */ void lambda$composeRecentsSplitLaunchAnimatorLegacy$3(ArrayList arrayList, SurfaceControl.Transaction transaction, ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            transaction.setAlpha((SurfaceControl) it.next(), animatedFraction);
        }
        transaction.apply();
    }

    public static /* synthetic */ void lambda$createRecentsWindowAnimator$0(RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr) {
        for (RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle : remoteTargetHandleArr) {
            remoteTargetHandle.getTaskViewSimulator().apply(remoteTargetHandle.getTransformParams());
        }
    }

    public static /* synthetic */ void lambda$createRecentsWindowAnimator$1(int i4, Matrix matrix, Matrix[] matrixArr, Matrix[] matrixArr2, RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr, Matrix[] matrixArr3, TaskThumbnailView[] taskThumbnailViewArr) {
        for (int i5 = 0; i5 < i4; i5++) {
            matrix.set(matrixArr[i5]);
            matrix.postConcat(matrixArr2[i5]);
            matrix.postConcat(remoteTargetHandleArr[i5].getTaskViewSimulator().getCurrentMatrix());
            matrix.postConcat(matrixArr3[i5]);
            taskThumbnailViewArr[i5].setAnimationMatrix(matrix);
        }
    }

    public static /* synthetic */ void lambda$createSplitAuxiliarySurfacesAnimator$5(List list, SurfaceControl.Transaction transaction, boolean z4, ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SurfaceControl surfaceControl = (SurfaceControl) it.next();
            if (surfaceControl != null && surfaceControl.isValid()) {
                transaction.setAlpha(surfaceControl, z4 ? animatedFraction : 1.0f - animatedFraction);
            }
        }
        transaction.apply();
    }
}
