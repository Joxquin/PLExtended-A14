package com.android.launcher3.allapps;

import D0.g;
import D0.j;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.util.FloatProperty;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsTransitionController;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.anim.SpringProperty;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.uioverrides.states.AllAppsState;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.launcher3.util.Themes;
import com.android.launcher3.util.VibratorWrapper;
import com.android.launcher3.views.ScrimView;
import com.android.systemui.shared.R;
import java.util.Objects;
import java.util.function.Consumer;
import y0.e;
/* loaded from: classes.dex */
public final class AllAppsTransitionController implements StateManager.StateHandler, DeviceProfile.OnDeviceProfileChangeListener {
    private final AnimatedFloat mAllAppScale;
    private ActivityAllAppsContainerView mAppsView;
    private MultiValueAlpha mAppsViewAlpha;
    private MultiPropertyFactory mAppsViewTranslationY;
    private boolean mHasScaleEffect;
    private boolean mIsTablet;
    private final Launcher mLauncher;
    private final int mNavScrimFlag;
    private float mProgress;
    private ScrimView mScrimView;
    private float mShiftRange;
    private boolean mShouldControlKeyboard;
    private final VibratorWrapper mVibratorWrapper;
    public static final FloatProperty ALL_APPS_PROGRESS = new FloatProperty("allAppsProgress") { // from class: com.android.launcher3.allapps.AllAppsTransitionController.1
        public final Float a(AllAppsTransitionController allAppsTransitionController) {
            switch (r2) {
                case 0:
                    return Float.valueOf(allAppsTransitionController.mProgress);
                case 1:
                    return allAppsTransitionController.mIsTablet ? Float.valueOf(allAppsTransitionController.mAppsView.getActiveRecyclerView().getTranslationY()) : Float.valueOf(AllAppsTransitionController.h(allAppsTransitionController).getValue());
                default:
                    return allAppsTransitionController.mIsTablet ? Float.valueOf(allAppsTransitionController.mAppsView.getActiveRecyclerView().getAlpha()) : Float.valueOf(AllAppsTransitionController.g(allAppsTransitionController).getValue());
            }
        }

        public final void b(AllAppsTransitionController allAppsTransitionController, float f4) {
            switch (r2) {
                case 0:
                    allAppsTransitionController.setProgress(f4);
                    return;
                case 1:
                    if (allAppsTransitionController.mIsTablet) {
                        allAppsTransitionController.mAppsView.getActiveRecyclerView().setTranslationY(f4);
                        AllAppsTransitionController.h(allAppsTransitionController).setValue(0.0f);
                        return;
                    }
                    AllAppsTransitionController.h(allAppsTransitionController).setValue(f4);
                    allAppsTransitionController.mAppsView.getActiveRecyclerView().setTranslationY(0.0f);
                    return;
                default:
                    if (allAppsTransitionController.mIsTablet) {
                        allAppsTransitionController.mAppsView.getActiveRecyclerView().setAlpha(f4);
                        AllAppsTransitionController.g(allAppsTransitionController).setValue(1.0f);
                        return;
                    }
                    AllAppsTransitionController.g(allAppsTransitionController).setValue(f4);
                    allAppsTransitionController.mAppsView.getActiveRecyclerView().setAlpha(1.0f);
                    return;
            }
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Float get(Object obj) {
            switch (r2) {
                case 0:
                    return a((AllAppsTransitionController) obj);
                case 1:
                    return a((AllAppsTransitionController) obj);
                default:
                    return a((AllAppsTransitionController) obj);
            }
        }

        @Override // android.util.FloatProperty
        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f4) {
            switch (r2) {
                case 0:
                    b((AllAppsTransitionController) obj, f4);
                    return;
                case 1:
                    b((AllAppsTransitionController) obj, f4);
                    return;
                default:
                    b((AllAppsTransitionController) obj, f4);
                    return;
            }
        }
    };
    public static final FloatProperty ALL_APPS_PULL_BACK_TRANSLATION = new FloatProperty("allAppsPullBackTranslation") { // from class: com.android.launcher3.allapps.AllAppsTransitionController.1
        public final Float a(AllAppsTransitionController allAppsTransitionController) {
            switch (r2) {
                case 0:
                    return Float.valueOf(allAppsTransitionController.mProgress);
                case 1:
                    return allAppsTransitionController.mIsTablet ? Float.valueOf(allAppsTransitionController.mAppsView.getActiveRecyclerView().getTranslationY()) : Float.valueOf(AllAppsTransitionController.h(allAppsTransitionController).getValue());
                default:
                    return allAppsTransitionController.mIsTablet ? Float.valueOf(allAppsTransitionController.mAppsView.getActiveRecyclerView().getAlpha()) : Float.valueOf(AllAppsTransitionController.g(allAppsTransitionController).getValue());
            }
        }

        public final void b(AllAppsTransitionController allAppsTransitionController, float f4) {
            switch (r2) {
                case 0:
                    allAppsTransitionController.setProgress(f4);
                    return;
                case 1:
                    if (allAppsTransitionController.mIsTablet) {
                        allAppsTransitionController.mAppsView.getActiveRecyclerView().setTranslationY(f4);
                        AllAppsTransitionController.h(allAppsTransitionController).setValue(0.0f);
                        return;
                    }
                    AllAppsTransitionController.h(allAppsTransitionController).setValue(f4);
                    allAppsTransitionController.mAppsView.getActiveRecyclerView().setTranslationY(0.0f);
                    return;
                default:
                    if (allAppsTransitionController.mIsTablet) {
                        allAppsTransitionController.mAppsView.getActiveRecyclerView().setAlpha(f4);
                        AllAppsTransitionController.g(allAppsTransitionController).setValue(1.0f);
                        return;
                    }
                    AllAppsTransitionController.g(allAppsTransitionController).setValue(f4);
                    allAppsTransitionController.mAppsView.getActiveRecyclerView().setAlpha(1.0f);
                    return;
            }
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Float get(Object obj) {
            switch (r2) {
                case 0:
                    return a((AllAppsTransitionController) obj);
                case 1:
                    return a((AllAppsTransitionController) obj);
                default:
                    return a((AllAppsTransitionController) obj);
            }
        }

        @Override // android.util.FloatProperty
        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f4) {
            switch (r2) {
                case 0:
                    b((AllAppsTransitionController) obj, f4);
                    return;
                case 1:
                    b((AllAppsTransitionController) obj, f4);
                    return;
                default:
                    b((AllAppsTransitionController) obj, f4);
                    return;
            }
        }
    };
    public static final FloatProperty ALL_APPS_PULL_BACK_ALPHA = new FloatProperty("allAppsPullBackAlpha") { // from class: com.android.launcher3.allapps.AllAppsTransitionController.1
        public final Float a(AllAppsTransitionController allAppsTransitionController) {
            switch (r2) {
                case 0:
                    return Float.valueOf(allAppsTransitionController.mProgress);
                case 1:
                    return allAppsTransitionController.mIsTablet ? Float.valueOf(allAppsTransitionController.mAppsView.getActiveRecyclerView().getTranslationY()) : Float.valueOf(AllAppsTransitionController.h(allAppsTransitionController).getValue());
                default:
                    return allAppsTransitionController.mIsTablet ? Float.valueOf(allAppsTransitionController.mAppsView.getActiveRecyclerView().getAlpha()) : Float.valueOf(AllAppsTransitionController.g(allAppsTransitionController).getValue());
            }
        }

        public final void b(AllAppsTransitionController allAppsTransitionController, float f4) {
            switch (r2) {
                case 0:
                    allAppsTransitionController.setProgress(f4);
                    return;
                case 1:
                    if (allAppsTransitionController.mIsTablet) {
                        allAppsTransitionController.mAppsView.getActiveRecyclerView().setTranslationY(f4);
                        AllAppsTransitionController.h(allAppsTransitionController).setValue(0.0f);
                        return;
                    }
                    AllAppsTransitionController.h(allAppsTransitionController).setValue(f4);
                    allAppsTransitionController.mAppsView.getActiveRecyclerView().setTranslationY(0.0f);
                    return;
                default:
                    if (allAppsTransitionController.mIsTablet) {
                        allAppsTransitionController.mAppsView.getActiveRecyclerView().setAlpha(f4);
                        AllAppsTransitionController.g(allAppsTransitionController).setValue(1.0f);
                        return;
                    }
                    AllAppsTransitionController.g(allAppsTransitionController).setValue(f4);
                    allAppsTransitionController.mAppsView.getActiveRecyclerView().setAlpha(1.0f);
                    return;
            }
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Float get(Object obj) {
            switch (r2) {
                case 0:
                    return a((AllAppsTransitionController) obj);
                case 1:
                    return a((AllAppsTransitionController) obj);
                default:
                    return a((AllAppsTransitionController) obj);
            }
        }

        @Override // android.util.FloatProperty
        public final /* bridge */ /* synthetic */ void setValue(Object obj, float f4) {
            switch (r2) {
                case 0:
                    b((AllAppsTransitionController) obj, f4);
                    return;
                case 1:
                    b((AllAppsTransitionController) obj, f4);
                    return;
                default:
                    b((AllAppsTransitionController) obj, f4);
                    return;
            }
        }
    };

    /* loaded from: classes.dex */
    final class VibrationAnimatorUpdateListener implements ValueAnimator.AnimatorUpdateListener {
        private final AllAppsTransitionController mController;
        private final float mEndThreshold;
        private boolean mHasCommitted;
        private final float mStartThreshold;
        private final VibratorWrapper mVibratorWrapper;

        public VibrationAnimatorUpdateListener(AllAppsTransitionController allAppsTransitionController, VibratorWrapper vibratorWrapper, float f4, float f5) {
            this.mController = allAppsTransitionController;
            this.mVibratorWrapper = vibratorWrapper;
            this.mStartThreshold = f4;
            this.mEndThreshold = f5;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (this.mHasCommitted) {
                return;
            }
            float floatValue = ((Float) AllAppsTransitionController.ALL_APPS_PROGRESS.get(this.mController)).floatValue();
            if (floatValue > this.mStartThreshold && floatValue < this.mEndThreshold) {
                this.mVibratorWrapper.vibrateForDragTexture();
            } else if (floatValue == 0.0f || floatValue == 1.0f) {
            } else {
                this.mVibratorWrapper.vibrateForDragCommit();
                this.mHasCommitted = true;
            }
        }
    }

    public AllAppsTransitionController(Launcher launcher) {
        AnimatedFloat animatedFloat = new AnimatedFloat(new j(this, 0));
        this.mAllAppScale = animatedFloat;
        this.mLauncher = launcher;
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        this.mProgress = 1.0f;
        deviceProfile.getClass();
        this.mIsTablet = deviceProfile.isTablet;
        this.mNavScrimFlag = Themes.getAttrBoolean(R.attr.isMainColorDark, launcher) ? 2 : 1;
        this.mShiftRange = deviceProfile.allAppsShiftRange;
        animatedFloat.value = 1.0f;
        launcher.addOnDeviceProfileChangeListener(this);
        this.mVibratorWrapper = (VibratorWrapper) VibratorWrapper.INSTANCE.get(launcher.getApplicationContext());
    }

    public static void a(AllAppsTransitionController allAppsTransitionController) {
        float f4 = allAppsTransitionController.mAllAppScale.value;
        FloatProperty floatProperty = LauncherAnimUtils.SCALE_PROPERTY;
        Launcher launcher = allAppsTransitionController.mLauncher;
        floatProperty.set((FloatProperty) launcher.getAppsView(), Float.valueOf(f4));
        launcher.getScrimView().setScrimHeaderScale(f4);
        AllAppsRecyclerView activeRecyclerView = launcher.getAppsView().getActiveRecyclerView();
        if (activeRecyclerView != null && activeRecyclerView.getScrollbar() != null) {
            activeRecyclerView.getScrollbar().setVisibility(f4 < 1.0f ? 4 : 0);
        }
        boolean z4 = f4 < 1.0f;
        if (z4 != allAppsTransitionController.mHasScaleEffect) {
            allAppsTransitionController.mHasScaleEffect = z4;
            if (z4) {
                setClipChildrenOnViewTree(activeRecyclerView, launcher.getAppsView());
            } else {
                restoreClipChildrenOnViewTree(activeRecyclerView, launcher.getAppsView());
            }
        }
    }

    public static void b(AllAppsTransitionController allAppsTransitionController, StateAnimationConfig stateAnimationConfig, Boolean bool) {
        allAppsTransitionController.getClass();
        ALL_APPS_PULL_BACK_TRANSLATION.set((FloatProperty) allAppsTransitionController, Float.valueOf(0.0f));
        ALL_APPS_PULL_BACK_ALPHA.set((FloatProperty) allAppsTransitionController, Float.valueOf(1.0f));
        if (stateAnimationConfig.userControlled && bool.booleanValue() && allAppsTransitionController.mShouldControlKeyboard) {
            allAppsTransitionController.mLauncher.getAppsView().mSearchUiManager.getEditText().hideKeyboard();
        }
        allAppsTransitionController.mAllAppScale.updateValue(1.0f);
    }

    public static MultiPropertyFactory.MultiProperty g(AllAppsTransitionController allAppsTransitionController) {
        return allAppsTransitionController.mAppsViewAlpha.get(1);
    }

    public static MultiPropertyFactory.MultiProperty h(AllAppsTransitionController allAppsTransitionController) {
        return allAppsTransitionController.mAppsViewTranslationY.get(1);
    }

    public void onProgressAnimationEnd() {
        if (Float.compare(this.mProgress, 1.0f) == 0 && this.mShouldControlKeyboard) {
            this.mLauncher.getAppsView().mSearchUiManager.getEditText().hideKeyboard();
        }
    }

    private static void restoreClipChildrenOnViewTree(View view, ActivityAllAppsContainerView activityAllAppsContainerView) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            Object tag = viewGroup.getTag(R.id.saved_clip_children_tag_id);
            if (tag instanceof Boolean) {
                viewGroup.setClipChildren(((Boolean) tag).booleanValue());
                viewGroup.setTag(R.id.saved_clip_children_tag_id, null);
            }
        }
        if (view != activityAllAppsContainerView && (view.getParent() instanceof View)) {
            restoreClipChildrenOnViewTree((View) view.getParent(), activityAllAppsContainerView);
        }
    }

    private static void setClipChildrenOnViewTree(View view, ActivityAllAppsContainerView activityAllAppsContainerView) {
        ViewGroup viewGroup;
        boolean clipChildren;
        if (view == null) {
            return;
        }
        if ((view instanceof ViewGroup) && (clipChildren = (viewGroup = (ViewGroup) view).getClipChildren())) {
            view.setTag(R.id.saved_clip_children_tag_id, Boolean.valueOf(clipChildren));
            viewGroup.setClipChildren(false);
        }
        if (view != activityAllAppsContainerView && (view.getParent() instanceof View)) {
            setClipChildrenOnViewTree((View) view.getParent(), activityAllAppsContainerView);
        }
    }

    public final void animateAllAppsToNoScale() {
        this.mAllAppScale.animateToValue(1.0f).setDuration(200L).start();
    }

    public final float getProgress() {
        return this.mProgress;
    }

    public final float getShiftRange() {
        return this.mShiftRange;
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public final void onBackProgressed(Object obj, float f4) {
        LauncherState launcherState = (LauncherState) obj;
        if (this.mLauncher.isInState(LauncherState.ALL_APPS) && LauncherState.NORMAL.equals(launcherState)) {
            this.mAllAppScale.updateValue(((1.0f - ((PathInterpolator) e.f12956t).getInterpolation(f4)) * 0.100000024f) + 0.9f);
        }
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        boolean isVerticalBarLayout = deviceProfile.isVerticalBarLayout();
        this.mShiftRange = deviceProfile.allAppsShiftRange;
        if (isVerticalBarLayout) {
            Launcher launcher = this.mLauncher;
            launcher.getHotseat().setTranslationY(0.0f);
            launcher.getWorkspace().getPageIndicator().setTranslationY(0.0f);
        }
        this.mIsTablet = deviceProfile.isTablet;
    }

    public final void setAlphas(LauncherState launcherState, PropertySetter propertySetter, StateAnimationConfig stateAnimationConfig) {
        AllAppsState allAppsState;
        Launcher launcher = this.mLauncher;
        boolean z4 = true;
        boolean z5 = (launcherState.getVisibleElements(launcher) & 2) != 0;
        Interpolator interpolator = stateAnimationConfig.getInterpolator(10, e.f12949m);
        MultiPropertyFactory.MultiProperty multiProperty = this.mAppsViewAlpha.get(0);
        FloatProperty floatProperty = MultiPropertyFactory.MULTI_PROPERTY_VALUE;
        propertySetter.setFloat(multiProperty, floatProperty, z5 ? 1.0f : 0.0f, interpolator);
        propertySetter.setFloat(this.mAppsViewAlpha.get(1), floatProperty, z5 ? 1.0f : 0.0f, interpolator);
        propertySetter.setFloat(launcher.getAppsView(), ActivityAllAppsContainerView.BOTTOM_SHEET_ALPHA, z5 ? 1.0f : 0.0f, stateAnimationConfig.getInterpolator(19, e.f12941e));
        if (stateAnimationConfig.hasAnimationFlag(8) || ((allAppsState = LauncherState.ALL_APPS) != launcherState && launcher.getStateManager().getState() != allAppsState)) {
            z4 = false;
        }
        this.mScrimView.setDrawingController(z4 ? this.mAppsView : null);
    }

    public final void setProgress(float f4) {
        this.mProgress = f4;
        Launcher launcher = this.mLauncher;
        boolean z4 = true;
        this.mAppsViewTranslationY.get(0).setValue(this.mProgress * (launcher.getStateManager().getCurrentStableState() == LauncherState.BACKGROUND_APP ? launcher.getDeviceProfile().heightPx : this.mShiftRange));
        launcher.onAllAppsTransition(1.0f - f4);
        if (f4 >= 0.1f || launcher.getAppsView().getNavBarScrimHeight() <= 0) {
            z4 = false;
        }
        launcher.getSystemUiController().updateUiState(4, z4 ? this.mNavScrimFlag : 0);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public final void setStateWithAnimation(Object obj, final StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        LauncherState launcherState = (LauncherState) obj;
        BaseState baseState = LauncherState.ALL_APPS;
        Launcher launcher = this.mLauncher;
        if (launcher.isInState(baseState) && !baseState.equals(launcherState)) {
            if (!stateAnimationConfig.userControlled && this.mShouldControlKeyboard) {
                launcher.getAppsView().mSearchUiManager.getEditText().hideKeyboard();
            }
            pendingAnimation.addEndListener(new Consumer() { // from class: D0.h
                @Override // java.util.function.Consumer
                public final void accept(Object obj2) {
                    AllAppsTransitionController.b(AllAppsTransitionController.this, stateAnimationConfig, (Boolean) obj2);
                }
            });
        }
        FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_PREMIUM_HAPTICS_ALL_APPS;
        if (booleanFlag.get() && stateAnimationConfig.userControlled && Utilities.ATLEAST_S) {
            final VibratorWrapper vibratorWrapper = this.mVibratorWrapper;
            if (launcherState == baseState) {
                pendingAnimation.addOnFrameListener(new VibrationAnimatorUpdateListener(this, vibratorWrapper, 0.6f, 1.0f));
            } else {
                pendingAnimation.addOnFrameListener(new VibrationAnimatorUpdateListener(this, vibratorWrapper, 0.0f, 0.6f));
            }
            Objects.requireNonNull(vibratorWrapper);
            pendingAnimation.addEndListener(new Consumer() { // from class: D0.i
                @Override // java.util.function.Consumer
                public final void accept(Object obj2) {
                    VibratorWrapper vibratorWrapper2 = VibratorWrapper.this;
                    ((Boolean) obj2).booleanValue();
                    vibratorWrapper2.cancelVibrate();
                }
            });
        }
        float verticalProgress = launcherState.getVerticalProgress(launcher);
        if (Float.compare(this.mProgress, verticalProgress) == 0) {
            setAlphas(launcherState, pendingAnimation, stateAnimationConfig);
            return;
        }
        Interpolator interpolator = stateAnimationConfig.getInterpolator(0, stateAnimationConfig.userControlled ? e.f12949m : e.f12928B);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, ALL_APPS_PROGRESS, this.mProgress, verticalProgress);
        ofFloat.setInterpolator(interpolator);
        ofFloat.addListener(AnimatorListeners.forSuccessCallback(new j(this, 1)));
        pendingAnimation.add(ofFloat, SpringProperty.DEFAULT);
        setAlphas(launcherState, pendingAnimation, stateAnimationConfig);
        if (baseState.equals(launcherState) && launcher.isInState(LauncherState.NORMAL) && !booleanFlag.get()) {
            launcher.getAppsView().performHapticFeedback(1, 1);
        }
    }

    public final void setupViews(ScrimView scrimView, ActivityAllAppsContainerView activityAllAppsContainerView) {
        this.mScrimView = scrimView;
        this.mAppsView = activityAllAppsContainerView;
        activityAllAppsContainerView.setScrimView(scrimView);
        MultiValueAlpha multiValueAlpha = new MultiValueAlpha(2, this.mAppsView, FeatureFlags.ALL_APPS_GONE_VISIBILITY.get() ? 8 : 4);
        this.mAppsViewAlpha = multiValueAlpha;
        multiValueAlpha.setUpdateVisibility();
        this.mAppsViewTranslationY = new MultiPropertyFactory(this.mAppsView, LauncherAnimUtils.VIEW_TRANSLATE_Y, 2, new g());
        this.mShouldControlKeyboard = !this.mLauncher.getSearchConfig().isKeyboardSyncEnabled();
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public final void setState(LauncherState launcherState) {
        setProgress(launcherState.getVerticalProgress(this.mLauncher));
        setAlphas(launcherState, PropertySetter.NO_ANIM_PROPERTY_SETTER, new StateAnimationConfig());
        onProgressAnimationEnd();
    }
}
