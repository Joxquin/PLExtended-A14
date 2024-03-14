package com.android.quickstep.util;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.FloatProperty;
import android.view.animation.Interpolator;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.AllAppsSwipeController;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.quickstep.views.RecentsView;
import y0.animation.InterpolatorC1488a;
import y0.animation.InterpolatorC1489b;
/* loaded from: classes.dex */
public class AnimatorControllerWithResistance {
    private static final TimeInterpolator RECENTS_SCALE_RESIST_INTERPOLATOR = y0.e.f12962z;
    private static final TimeInterpolator RECENTS_TRANSLATE_RESIST_INTERPOLATOR = y0.e.f12949m;
    private static final Rect TEMP_RECT = new Rect();
    private float mLastNormalProgress = -1.0f;
    private float mLastResistProgress;
    private final AnimatorPlaybackController mNormalController;
    private final AnimatorPlaybackController mResistanceController;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class RecentsParams {
        public final Context context;
        public final DeviceProfile dp;
        public final RecentsOrientedState recentsOrientedState;
        public PendingAnimation resistAnim;
        public RecentsResistanceParams resistanceParams;
        public final FloatProperty scaleProperty;
        public final Object scaleTarget;
        public float startScale;
        public float startTranslation;
        public final FloatProperty translationProperty;
        public final Object translationTarget;

        public /* synthetic */ RecentsParams(Context context, RecentsOrientedState recentsOrientedState, DeviceProfile deviceProfile, Object obj, FloatProperty floatProperty, Object obj2, FloatProperty floatProperty2, int i4) {
            this(context, recentsOrientedState, deviceProfile, obj, floatProperty, obj2, floatProperty2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RecentsParams setResistAnim(PendingAnimation pendingAnimation) {
            this.resistAnim = pendingAnimation;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RecentsParams setResistanceParams(RecentsResistanceParams recentsResistanceParams) {
            this.resistanceParams = recentsResistanceParams;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RecentsParams setStartScale(float f4) {
            this.startScale = f4;
            return this;
        }

        private RecentsParams setStartTranslation(float f4) {
            this.startTranslation = f4;
            return this;
        }

        private RecentsParams(Context context, RecentsOrientedState recentsOrientedState, DeviceProfile deviceProfile, Object obj, FloatProperty floatProperty, Object obj2, FloatProperty floatProperty2) {
            RecentsResistanceParams recentsResistanceParams;
            RecentsResistanceParams recentsResistanceParams2;
            this.resistAnim = null;
            this.startScale = 1.0f;
            this.startTranslation = 0.0f;
            this.context = context;
            this.recentsOrientedState = recentsOrientedState;
            this.dp = deviceProfile;
            this.scaleTarget = obj;
            this.scaleProperty = floatProperty;
            this.translationTarget = obj2;
            this.translationProperty = floatProperty2;
            if (deviceProfile.isTablet) {
                if (recentsOrientedState.getActivityInterface().allowAllAppsFromOverview()) {
                    recentsResistanceParams2 = RecentsResistanceParams.FROM_APP_TO_ALL_APPS_TABLET;
                } else {
                    recentsResistanceParams2 = RecentsResistanceParams.FROM_APP_TABLET;
                }
                this.resistanceParams = recentsResistanceParams2;
                return;
            }
            if (recentsOrientedState.getActivityInterface().allowAllAppsFromOverview()) {
                recentsResistanceParams = RecentsResistanceParams.FROM_APP_TO_ALL_APPS;
            } else {
                recentsResistanceParams = RecentsResistanceParams.FROM_APP;
            }
            this.resistanceParams = recentsResistanceParams;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum RecentsResistanceParams {
        FROM_APP(0.75f, 0.5f, 1.0f, false),
        FROM_APP_TO_ALL_APPS(1.0f, 0.6f, 0.8f, false),
        FROM_APP_TABLET(1.0f, 0.7f, 1.0f, true),
        FROM_APP_TO_ALL_APPS_TABLET(1.0f, 0.5f, 0.5f, false),
        FROM_OVERVIEW(1.0f, 0.75f, 0.5f, false);
        
        public final float scaleMaxResist;
        public final float scaleStartResist;
        public final boolean stopScalingAtTop;
        public final float translationFactor;

        RecentsResistanceParams(float f4, float f5, float f6, boolean z4) {
            this.scaleStartResist = f4;
            this.scaleMaxResist = f5;
            this.translationFactor = f6;
            this.stopScalingAtTop = z4;
        }
    }

    public AnimatorControllerWithResistance(AnimatorPlaybackController animatorPlaybackController, AnimatorPlaybackController animatorPlaybackController2) {
        this.mNormalController = animatorPlaybackController;
        this.mResistanceController = animatorPlaybackController2;
    }

    public static AnimatorControllerWithResistance createForRecents(AnimatorPlaybackController animatorPlaybackController, Context context, RecentsOrientedState recentsOrientedState, DeviceProfile deviceProfile, Object obj, FloatProperty floatProperty, Object obj2, FloatProperty floatProperty2) {
        StatefulActivity createdActivity;
        PendingAnimation createRecentsResistanceAnim = createRecentsResistanceAnim(new RecentsParams(context, recentsOrientedState, deviceProfile, obj, floatProperty, obj2, floatProperty2, 0));
        if (recentsOrientedState.getActivityInterface().allowAllAppsFromOverview() && (createdActivity = recentsOrientedState.getActivityInterface().getCreatedActivity()) != null) {
            StateManager stateManager = createdActivity.getStateManager();
            if (stateManager.isInStableState(LauncherState.BACKGROUND_APP) && stateManager.isInTransition()) {
                final float allAppsThreshold = getAllAppsThreshold(context, recentsOrientedState, deviceProfile);
                StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
                animation.InterpolatorC1489b animation_interpolatorc1489b = AllAppsSwipeController.ALL_APPS_SCRIM_RESPONDER;
                stateAnimationConfig.userControlled = true;
                stateAnimationConfig.animFlags = 2;
                if (deviceProfile.isTablet) {
                    animation.InterpolatorC1488a animation_interpolatorc1488a = y0.e.f12941e;
                    stateAnimationConfig.setInterpolator(10, animation_interpolatorc1488a);
                    stateAnimationConfig.setInterpolator(11, AllAppsSwipeController.ALL_APPS_SCRIM_RESPONDER);
                    stateAnimationConfig.setInterpolator(3, y0.e.b(0.8f, 1.0f, y0.e.f12949m));
                    stateAnimationConfig.setInterpolator(1, animation_interpolatorc1488a);
                    stateAnimationConfig.setInterpolator(2, animation_interpolatorc1488a);
                } else {
                    final animation.InterpolatorC1488a animation_interpolatorc1488a2 = y0.e.f12941e;
                    stateAnimationConfig.setInterpolator(19, new Interpolator() { // from class: com.android.launcher3.touch.c
                        @Override // android.animation.TimeInterpolator
                        public final float getInterpolation(float f4) {
                            float f5 = allAppsThreshold;
                            Interpolator interpolator = animation_interpolatorc1488a2;
                            if (f4 <= f5) {
                                return 0.0f;
                            }
                            return interpolator.getInterpolation(f4);
                        }
                    });
                    stateAnimationConfig.setInterpolator(20, new Interpolator() { // from class: com.android.launcher3.touch.c
                        @Override // android.animation.TimeInterpolator
                        public final float getInterpolation(float f4) {
                            float f5 = allAppsThreshold;
                            Interpolator interpolator = animation_interpolatorc1488a2;
                            if (f4 <= f5) {
                                return 0.0f;
                            }
                            return interpolator.getInterpolation(f4);
                        }
                    });
                    stateAnimationConfig.setInterpolator(10, new Interpolator() { // from class: com.android.launcher3.touch.c
                        @Override // android.animation.TimeInterpolator
                        public final float getInterpolation(float f4) {
                            float f5 = allAppsThreshold;
                            Interpolator interpolator = animation_interpolatorc1488a2;
                            if (f4 <= f5) {
                                return 0.0f;
                            }
                            return interpolator.getInterpolation(f4);
                        }
                    });
                    final animation.InterpolatorC1489b animation_interpolatorc1489b2 = new animation.InterpolatorC1489b(y0.e.f12949m, allAppsThreshold, 1.0f, 1);
                    stateAnimationConfig.setInterpolator(0, new Interpolator() { // from class: com.android.launcher3.touch.c
                        @Override // android.animation.TimeInterpolator
                        public final float getInterpolation(float f4) {
                            float f5 = allAppsThreshold;
                            Interpolator interpolator = animation_interpolatorc1489b2;
                            if (f4 <= f5) {
                                return 0.0f;
                            }
                            return interpolator.getInterpolation(f4);
                        }
                    });
                }
                createRecentsResistanceAnim.add(stateManager.createAnimationToNewWorkspace(LauncherState.ALL_APPS, stateAnimationConfig).getTarget());
            }
        }
        return new AnimatorControllerWithResistance(animatorPlaybackController, createRecentsResistanceAnim.createPlaybackController());
    }

    public static PendingAnimation createRecentsResistanceAnim(RecentsParams recentsParams) {
        PagedOrientationHandler orientationHandler;
        Rect rect = new Rect();
        recentsParams.recentsOrientedState.getActivityInterface().calculateTaskSize(recentsParams.context, recentsParams.dp, rect, recentsParams.recentsOrientedState.getOrientationHandler());
        long j4 = rect.bottom;
        PendingAnimation pendingAnimation = recentsParams.resistAnim;
        if (pendingAnimation == null) {
            pendingAnimation = new PendingAnimation(2 * j4);
        }
        PointF pointF = new PointF();
        float fullScreenScaleAndPivot = recentsParams.recentsOrientedState.getFullScreenScaleAndPivot(rect, recentsParams.dp, pointF);
        RectF rectF = new RectF(rect);
        Matrix matrix = new Matrix();
        float f4 = recentsParams.resistanceParams.scaleMaxResist;
        matrix.setScale(f4, f4, pointF.x, pointF.y);
        matrix.mapRect(rectF);
        pendingAnimation.addFloat(recentsParams.translationTarget, recentsParams.translationProperty, recentsParams.startTranslation, rectF.top * orientationHandler.getSecondaryTranslationDirectionFactor() * recentsParams.resistanceParams.translationFactor, RECENTS_TRANSLATE_RESIST_INTERPOLATOR);
        float f5 = recentsParams.startScale;
        float f6 = f5 - (((fullScreenScaleAndPivot - f5) / (recentsParams.dp.heightPx - rect.bottom)) * ((float) j4));
        final float progress = Utilities.getProgress(recentsParams.resistanceParams.scaleStartResist, f5, f6);
        final float progress2 = Utilities.getProgress(recentsParams.resistanceParams.scaleMaxResist, recentsParams.startScale, f6);
        final float f7 = recentsParams.resistanceParams.stopScalingAtTop ? 1.0f - (rect.top / rectF.top) : 1.0f;
        pendingAnimation.addFloat(recentsParams.scaleTarget, recentsParams.scaleProperty, recentsParams.startScale, f6, new TimeInterpolator() { // from class: com.android.quickstep.util.a
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f8) {
                float lambda$createRecentsResistanceAnim$0;
                lambda$createRecentsResistanceAnim$0 = AnimatorControllerWithResistance.lambda$createRecentsResistanceAnim$0(progress, f7, progress2, f8);
                return lambda$createRecentsResistanceAnim$0;
            }
        });
        return pendingAnimation;
    }

    public static PendingAnimation createRecentsResistanceFromOverviewAnim(Launcher launcher, PendingAnimation pendingAnimation) {
        RecentsView recentsView = (RecentsView) launcher.getOverviewPanel();
        return createRecentsResistanceAnim(new RecentsParams(launcher, recentsView.getPagedViewOrientedState(), launcher.getDeviceProfile(), recentsView, RecentsView.RECENTS_SCALE_PROPERTY, recentsView, RecentsView.TASK_SECONDARY_TRANSLATION, 0).setResistAnim(pendingAnimation).setResistanceParams(RecentsResistanceParams.FROM_OVERVIEW).setStartScale(recentsView.getScaleX()));
    }

    private static float getAllAppsThreshold(Context context, RecentsOrientedState recentsOrientedState, DeviceProfile deviceProfile) {
        float swipeUpDestinationAndLength = deviceProfile.heightPx / recentsOrientedState.getActivityInterface().getSwipeUpDestinationAndLength(deviceProfile, context, TEMP_RECT, recentsOrientedState.getOrientationHandler());
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        return ((((Integer) LauncherPrefs.Companion.get(context).get(LauncherPrefs.ALL_APPS_OVERVIEW_THRESHOLD)).intValue() / 100.0f) - 1.0f) / (swipeUpDestinationAndLength - 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ float lambda$createRecentsResistanceAnim$0(float f4, float f5, float f6, float f7) {
        if (f7 < f4) {
            return f7;
        }
        if (f7 > f5) {
            return f6;
        }
        return w.f.a(f6, f4, RECENTS_SCALE_RESIST_INTERPOLATOR.getInterpolation(Utilities.getProgress(f7, f4, f5)), f4);
    }

    public AnimatorPlaybackController getNormalController() {
        return this.mNormalController;
    }

    public void setProgress(float f4, float f5) {
        float boundToRange = Utilities.boundToRange(f4, 0.0f, 1.0f);
        if (boundToRange != this.mLastNormalProgress) {
            this.mLastNormalProgress = boundToRange;
            this.mNormalController.setPlayFraction(boundToRange);
        }
        if (f5 <= 1.0f) {
            return;
        }
        float progress = f4 > 1.0f ? Utilities.getProgress(f4, 1.0f, f5) : 0.0f;
        if (progress != this.mLastResistProgress) {
            this.mLastResistProgress = progress;
            this.mResistanceController.setPlayFraction(progress);
        }
    }
}
