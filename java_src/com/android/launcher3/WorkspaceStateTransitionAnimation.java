package com.android.launcher3;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.util.FloatProperty;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.anim.SpringAnimationBuilder;
import com.android.launcher3.anim.SpringProperty;
import com.android.launcher3.graphics.Scrim;
import com.android.launcher3.states.EditModeState;
import com.android.launcher3.states.SpringLoadedState;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.util.DynamicResource;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class WorkspaceStateTransitionAnimation {
    private final Launcher mLauncher;
    private float mNewScale;
    private final Workspace mWorkspace;
    private static final FloatProperty WORKSPACE_SCALE_PROPERTY = LauncherAnimUtils.WORKSPACE_SCALE_PROPERTY_FACTORY.get(2);
    private static final FloatProperty HOTSEAT_SCALE_PROPERTY = LauncherAnimUtils.HOTSEAT_SCALE_PROPERTY_FACTORY.get(2);

    public WorkspaceStateTransitionAnimation(Launcher launcher, Workspace workspace) {
        this.mLauncher = launcher;
        this.mWorkspace = workspace;
    }

    public static ValueAnimator getSpringScaleAnimator(Launcher launcher, View view, float f4, FloatProperty floatProperty) {
        n1.m provider = DynamicResource.provider(launcher);
        float f5 = provider.getFloat(R.dimen.hint_scale_damping_ratio);
        float f6 = provider.getFloat(R.dimen.hint_scale_stiffness);
        float dimension = provider.getDimension(R.dimen.hint_scale_velocity_dp_per_s);
        SpringAnimationBuilder springAnimationBuilder = new SpringAnimationBuilder(view.getContext());
        springAnimationBuilder.setStiffness(f6);
        springAnimationBuilder.setDampingRatio(f5);
        springAnimationBuilder.setMinimumVisibleChange(0.002f);
        springAnimationBuilder.setEndValue(f4);
        springAnimationBuilder.setStartValue(((Float) floatProperty.get(view)).floatValue());
        springAnimationBuilder.setStartVelocity(dimension);
        return springAnimationBuilder.build(view, floatProperty);
    }

    public static ValueAnimator getWorkspaceSpringScaleAnimator(Launcher launcher, Workspace workspace, float f4) {
        return getSpringScaleAnimator(launcher, workspace, f4, WORKSPACE_SCALE_PROPERTY);
    }

    private void setWorkspaceProperty(LauncherState launcherState, PropertySetter propertySetter, StateAnimationConfig stateAnimationConfig) {
        y0.d dVar;
        LauncherState.ScaleAndTranslation scaleAndTranslation;
        LauncherState.PageAlphaProvider pageAlphaProvider;
        final Launcher launcher = this.mLauncher;
        LauncherState.ScaleAndTranslation workspaceScaleAndTranslation = launcherState.getWorkspaceScaleAndTranslation(launcher);
        LauncherState.ScaleAndTranslation hotseatScaleAndTranslation = launcherState.getHotseatScaleAndTranslation(launcher);
        this.mNewScale = workspaceScaleAndTranslation.scale;
        LauncherState.PageAlphaProvider workspacePageAlphaProvider = launcherState.getWorkspacePageAlphaProvider(launcher);
        Workspace workspace = this.mWorkspace;
        int childCount = workspace.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            applyChildState(launcherState, (CellLayout) workspace.getChildAt(i4), i4, workspacePageAlphaProvider, propertySetter, stateAnimationConfig);
        }
        int visibleElements = launcherState.getVisibleElements(launcher);
        Hotseat hotseat = workspace.mLauncher.mHotseat;
        y0.d dVar2 = y0.e.f12934H;
        Interpolator interpolator = stateAnimationConfig.getInterpolator(1, dVar2);
        boolean z4 = (propertySetter instanceof PendingAnimation) && ((LauncherState) launcher.getStateManager().getState()) == LauncherState.HINT_STATE && launcherState == LauncherState.NORMAL;
        SpringProperty springProperty = SpringProperty.DEFAULT;
        FloatProperty floatProperty = WORKSPACE_SCALE_PROPERTY;
        if (z4) {
            scaleAndTranslation = workspaceScaleAndTranslation;
            dVar = dVar2;
            ((PendingAnimation) propertySetter).add(getSpringScaleAnimator(launcher, workspace, this.mNewScale, floatProperty), springProperty);
        } else {
            dVar = dVar2;
            scaleAndTranslation = workspaceScaleAndTranslation;
            propertySetter.setFloat(workspace, floatProperty, this.mNewScale, interpolator);
        }
        workspace.setPivotToScaleWithSelf(hotseat);
        float f4 = hotseatScaleAndTranslation.scale;
        FloatProperty floatProperty2 = HOTSEAT_SCALE_PROPERTY;
        if (z4) {
            ((PendingAnimation) propertySetter).add(getSpringScaleAnimator(launcher, hotseat, f4, floatProperty2), springProperty);
        } else {
            propertySetter.setFloat(hotseat, floatProperty2, f4, stateAnimationConfig.getInterpolator(4, interpolator));
        }
        Interpolator interpolator2 = stateAnimationConfig.getInterpolator(3, workspacePageAlphaProvider.interpolator);
        propertySetter.setViewAlpha(launcher.mWorkspace.getPageIndicator(), (visibleElements & 32) != 0 ? 1.0f : 0.0f, interpolator2);
        propertySetter.setViewAlpha(hotseat, (visibleElements & 1) == 0 ? 0.0f : 1.0f, stateAnimationConfig.getInterpolator(16, interpolator2));
        LauncherState launcherState2 = LauncherState.NORMAL;
        hotseat.setImportantForAccessibility(launcherState.hasFlag(512) ? 4 : 0);
        Interpolator interpolator3 = stateAnimationConfig.getInterpolator(2, dVar);
        LauncherState.ScaleAndTranslation scaleAndTranslation2 = scaleAndTranslation;
        propertySetter.setFloat(workspace, LauncherAnimUtils.VIEW_TRANSLATE_X, scaleAndTranslation2.translationX, interpolator3);
        propertySetter.setFloat(workspace, LauncherAnimUtils.VIEW_TRANSLATE_Y, scaleAndTranslation2.translationY, interpolator3);
        if ((launcherState == LauncherState.SPRING_LOADED || launcherState == LauncherState.EDIT_MODE) && launcher.getDeviceProfile().isTwoPanels) {
            final float pageSpacing = launcher.mWorkspace.getPageSpacing() / 4.0f;
            pageAlphaProvider = new LauncherState.PageAlphaProvider(y0.e.f12929C) { // from class: com.android.launcher3.LauncherState.5
                @Override // com.android.launcher3.LauncherState.PageAlphaProvider
                public final float getPageTranslation(int i5) {
                    boolean z5 = launcher.mWorkspace.mIsRtl;
                    boolean z6 = i5 % 2 == 0;
                    float f5 = pageSpacing;
                    return ((!z6 || z5) && (z6 || !z5)) ? f5 : -f5;
                }
            };
        } else {
            pageAlphaProvider = LauncherState.DEFAULT_PAGE_TRANSLATION_PROVIDER;
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            propertySetter.setFloat((CellLayout) workspace.getChildAt(i5), LauncherAnimUtils.VIEW_TRANSLATE_X, pageAlphaProvider.getPageTranslation(i5), stateAnimationConfig.getInterpolator(15, pageAlphaProvider.interpolator));
        }
        TimeInterpolator interpolator4 = stateAnimationConfig.getInterpolator(5, interpolator3);
        FloatProperty floatProperty3 = LauncherAnimUtils.VIEW_TRANSLATE_Y;
        propertySetter.setFloat(hotseat, floatProperty3, hotseatScaleAndTranslation.translationY, interpolator4);
        propertySetter.setFloat(workspace.getPageIndicator(), floatProperty3, hotseatScaleAndTranslation.translationY, interpolator4);
        if (stateAnimationConfig.hasAnimationFlag(8)) {
            return;
        }
        setScrim(launcherState, propertySetter, stateAnimationConfig);
    }

    public final void applyChildState(LauncherState launcherState, CellLayout cellLayout, int i4) {
        applyChildState(launcherState, cellLayout, i4, launcherState.getWorkspacePageAlphaProvider(this.mLauncher), PropertySetter.NO_ANIM_PROPERTY_SETTER, new StateAnimationConfig());
    }

    public final float getFinalScale() {
        return this.mNewScale;
    }

    public final void setScrim(LauncherState launcherState, PropertySetter propertySetter, StateAnimationConfig stateAnimationConfig) {
        Launcher launcher = this.mLauncher;
        Scrim workspaceDragScrim = launcher.mDragLayer.getWorkspaceDragScrim();
        FloatProperty floatProperty = Scrim.SCRIM_PROGRESS;
        float workspaceBackgroundAlpha = launcherState.getWorkspaceBackgroundAlpha(launcher);
        Interpolator interpolator = y0.e.f12949m;
        propertySetter.setFloat(workspaceDragScrim, floatProperty, workspaceBackgroundAlpha, interpolator);
        AnimatedFloat sysUIProgress = launcher.getRootView().getSysUiScrim().getSysUIProgress();
        FloatProperty floatProperty2 = AnimatedFloat.VALUE;
        LauncherState launcherState2 = LauncherState.NORMAL;
        propertySetter.setFloat(sysUIProgress, floatProperty2, launcherState.hasFlag(64) ? 1.0f : 0.0f, interpolator);
        propertySetter.setViewBackgroundColor(launcher.getScrimView(), launcherState.getWorkspaceScrimColor(launcher), stateAnimationConfig.getInterpolator(11, y0.e.f12960x));
    }

    public final void setState(LauncherState launcherState) {
        setWorkspaceProperty(launcherState, PropertySetter.NO_ANIM_PROPERTY_SETTER, new StateAnimationConfig());
    }

    public final void setStateWithAnimation(LauncherState launcherState, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        setWorkspaceProperty(launcherState, pendingAnimation, stateAnimationConfig);
    }

    private static void applyChildState(LauncherState launcherState, CellLayout cellLayout, int i4, LauncherState.PageAlphaProvider pageAlphaProvider, PropertySetter propertySetter, StateAnimationConfig stateAnimationConfig) {
        float pageAlpha = pageAlphaProvider.getPageAlpha(i4);
        propertySetter.setFloat(cellLayout, CellLayout.SPRING_LOADED_PROGRESS, ((launcherState instanceof SpringLoadedState) || (launcherState instanceof EditModeState)) ? 1.0f : 0.0f, y0.e.f12934H);
        propertySetter.setFloat(cellLayout.mShortcutsAndWidgets, LauncherAnimUtils.VIEW_ALPHA, pageAlpha, stateAnimationConfig.getInterpolator(3, pageAlphaProvider.interpolator));
    }
}
