package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Hotseat;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.anim.SpringAnimationBuilder;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.uioverrides.states.BackgroundAppState;
import com.android.launcher3.util.DynamicResource;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class StaggeredWorkspaceAnim {
    private static final int APP_CLOSE_ROW_START_DELAY_MS = 10;
    public static final int DURATION_MS = 250;
    public static final int DURATION_TASKBAR_MS = 300;
    private static final float MAX_VELOCITY_PX_PER_S = 22.0f;
    private final AnimatorSet mAnimators;
    private final View mIgnoredView;
    private final float mSpringTransY;
    private final float mVelocity;

    public StaggeredWorkspaceAnim(Launcher launcher, float f4, boolean z4, View view) {
        this(launcher, f4, z4, view, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: addAnimationForPage */
    public void lambda$new$0(final CellLayout cellLayout, int i4, long j4) {
        ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
        final boolean clipChildren = cellLayout.getClipChildren();
        final boolean clipToPadding = cellLayout.getClipToPadding();
        cellLayout.setClipChildren(false);
        cellLayout.setClipToPadding(false);
        for (int childCount = shortcutsAndWidgets.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = shortcutsAndWidgets.getChildAt(childCount);
            CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) childAt.getLayoutParams();
            addStaggeredAnimationForView(childAt, cellLayoutLayoutParams.getCellY() + cellLayoutLayoutParams.cellVSpan, i4, j4);
        }
        this.mAnimators.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.StaggeredWorkspaceAnim.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                cellLayout.setClipChildren(clipChildren);
                cellLayout.setClipToPadding(clipToPadding);
            }
        });
    }

    private void addDepthAnimationForState(Launcher launcher, LauncherState launcherState, long j4) {
        if (launcher instanceof QuickstepLauncher) {
            PendingAnimation pendingAnimation = new PendingAnimation(j4);
            ((QuickstepLauncher) launcher).getDepthController().setStateWithAnimation(launcherState, new StateAnimationConfig(), pendingAnimation);
            this.mAnimators.play(pendingAnimation.buildAnim());
        }
    }

    private void addStaggeredAnimationForView(final View view, int i4, int i5, long j4) {
        View view2 = this.mIgnoredView;
        if (view2 == null || view2 != view) {
            long j5 = ((i5 - i4) + 1) * 10;
            view.setTranslationY(this.mSpringTransY);
            n1.m provider = DynamicResource.provider(view.getContext());
            float f4 = provider.getFloat(R.dimen.staggered_stiffness);
            float f5 = provider.getFloat(R.dimen.staggered_damping_ratio);
            float signum = Math.signum(0.0f - this.mSpringTransY) * Math.abs(this.mVelocity);
            SpringAnimationBuilder springAnimationBuilder = new SpringAnimationBuilder(view.getContext());
            springAnimationBuilder.setStiffness(f4);
            springAnimationBuilder.setDampingRatio(f5);
            springAnimationBuilder.setMinimumVisibleChange(1.0f);
            springAnimationBuilder.setStartValue(this.mSpringTransY);
            springAnimationBuilder.setEndValue(0.0f);
            springAnimationBuilder.setStartVelocity(signum);
            ValueAnimator build = springAnimationBuilder.build(view, LauncherAnimUtils.VIEW_TRANSLATE_Y);
            build.setStartDelay(j5);
            build.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.StaggeredWorkspaceAnim.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    view.setTranslationY(0.0f);
                }
            });
            this.mAnimators.play(build);
            view.setAlpha(0.0f);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, View.ALPHA, 0.0f, 1.0f);
            ofFloat.setInterpolator(y0.e.f12949m);
            ofFloat.setDuration(j4);
            ofFloat.setStartDelay(j5);
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.StaggeredWorkspaceAnim.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    view.setAlpha(1.0f);
                }
            });
            this.mAnimators.play(ofFloat);
        }
    }

    private void prepareToAnimate(Launcher launcher, boolean z4) {
        StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
        stateAnimationConfig.animFlags = 14;
        stateAnimationConfig.duration = 0L;
        StateManager stateManager = launcher.getStateManager();
        BackgroundAppState backgroundAppState = LauncherState.BACKGROUND_APP;
        stateManager.createAtomicAnimation(backgroundAppState, LauncherState.NORMAL, stateAnimationConfig).start();
        ((RecentsView) launcher.getOverviewPanel()).forceFinishScroller();
        if (z4) {
            launcher.getWorkspace().getStateTransitionAnimation().setScrim(backgroundAppState, PropertySetter.NO_ANIM_PROPERTY_SETTER, stateAnimationConfig);
        }
    }

    public StaggeredWorkspaceAnim addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.mAnimators.addListener(animatorListener);
        return this;
    }

    public AnimatorSet getAnimators() {
        return this.mAnimators;
    }

    public void start() {
        this.mAnimators.start();
    }

    public StaggeredWorkspaceAnim(final Launcher launcher, float f4, boolean z4, View view, boolean z5) {
        int i4;
        int i5;
        int i6;
        int i7;
        this.mAnimators = new AnimatorSet();
        prepareToAnimate(launcher, z4);
        this.mIgnoredView = view;
        this.mVelocity = f4;
        this.mSpringTransY = (((Math.abs(f4) * 0.9f) / MAX_VELOCITY_PX_PER_S) + 0.2f) * launcher.getResources().getDimensionPixelSize(R.dimen.swipe_up_max_workspace_trans_y);
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        final long j4 = deviceProfile.isTaskbarPresent ? 300L : 250L;
        if (z5) {
            final Workspace workspace = launcher.getWorkspace();
            final Hotseat hotseat = launcher.getHotseat();
            int i8 = (deviceProfile.isVerticalBarLayout() || deviceProfile.isTaskbarPresent) ? 0 : 1;
            boolean isVerticalBarLayout = deviceProfile.isVerticalBarLayout();
            boolean z6 = deviceProfile.isQsbInline;
            int i9 = (isVerticalBarLayout || (deviceProfile.isTaskbarPresent && z6)) ? 0 : 1;
            InvariantDeviceProfile invariantDeviceProfile = deviceProfile.inv;
            final int i10 = invariantDeviceProfile.numRows + i8 + i9;
            workspace.forEachVisiblePage(new Consumer() { // from class: com.android.quickstep.util.S
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    StaggeredWorkspaceAnim.this.lambda$new$0(i10, j4, (View) obj);
                }
            });
            final boolean clipChildren = workspace.getClipChildren();
            final boolean clipToPadding = workspace.getClipToPadding();
            final boolean clipChildren2 = hotseat.getClipChildren();
            final boolean clipToPadding2 = hotseat.getClipToPadding();
            workspace.setClipChildren(false);
            workspace.setClipToPadding(false);
            hotseat.setClipChildren(false);
            hotseat.setClipToPadding(false);
            ShortcutAndWidgetContainer shortcutsAndWidgets = hotseat.getShortcutsAndWidgets();
            if (deviceProfile.isVerticalBarLayout()) {
                int childCount = shortcutsAndWidgets.getChildCount() - 1;
                while (childCount >= 0) {
                    View childAt = shortcutsAndWidgets.getChildAt(childCount);
                    addStaggeredAnimationForView(childAt, ((CellLayoutLayoutParams) childAt.getLayoutParams()).getCellY() + 1, i10, j4);
                    childCount--;
                    shortcutsAndWidgets = shortcutsAndWidgets;
                }
            } else {
                ShortcutAndWidgetContainer shortcutAndWidgetContainer = shortcutsAndWidgets;
                if (deviceProfile.isTaskbarPresent) {
                    if (z6) {
                        int i11 = invariantDeviceProfile.numRows;
                        i6 = i11 + 1;
                        i7 = i11 + 1;
                    } else {
                        int i12 = invariantDeviceProfile.numRows;
                        i6 = i12 + 1;
                        i7 = i12 + 2;
                    }
                    i5 = i7;
                    i4 = i6;
                } else {
                    int i13 = invariantDeviceProfile.numRows;
                    i4 = i13 + 2;
                    i5 = i13 + 1;
                }
                if (i8 != 0) {
                    int childCount2 = shortcutAndWidgetContainer.getChildCount() - 1;
                    while (childCount2 >= 0) {
                        ShortcutAndWidgetContainer shortcutAndWidgetContainer2 = shortcutAndWidgetContainer;
                        addStaggeredAnimationForView(shortcutAndWidgetContainer2.getChildAt(childCount2), i5, i10, j4);
                        childCount2--;
                        shortcutAndWidgetContainer = shortcutAndWidgetContainer2;
                    }
                }
                if (i9 != 0) {
                    addStaggeredAnimationForView(hotseat.getQsb(), i4, i10, j4);
                }
            }
            this.mAnimators.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.StaggeredWorkspaceAnim.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    workspace.setClipChildren(clipChildren);
                    workspace.setClipToPadding(clipToPadding);
                    hotseat.setClipChildren(clipChildren2);
                    hotseat.setClipToPadding(clipToPadding2);
                }
            });
        }
        launcher.pauseExpensiveViewUpdates();
        this.mAnimators.addListener(AnimatorListeners.forEndCallback(new Runnable() { // from class: com.android.quickstep.util.T
            @Override // java.lang.Runnable
            public final void run() {
                Launcher.this.resumeExpensiveViewUpdates();
            }
        }));
        if (z4) {
            PendingAnimation pendingAnimation = new PendingAnimation(j4);
            launcher.getWorkspace().getStateTransitionAnimation().setScrim(LauncherState.NORMAL, pendingAnimation, new StateAnimationConfig());
            this.mAnimators.play(pendingAnimation.buildAnim());
        }
        addDepthAnimationForState(launcher, LauncherState.NORMAL, j4);
        this.mAnimators.play(launcher.getRootView().getSysUiScrim().getSysUIMultiplier().animateToValue(0.0f, 1.0f).setDuration(j4));
    }
}
