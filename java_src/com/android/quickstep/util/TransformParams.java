package com.android.quickstep.util;

import android.app.ActivityManager;
import android.util.FloatProperty;
import android.view.RemoteAnimationTarget;
import android.view.animation.DecelerateInterpolator;
import com.android.launcher3.Utilities;
import com.android.quickstep.RemoteAnimationTargets;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.TransformParams;
import com.android.systemui.shared.system.QuickStepContract;
/* loaded from: classes.dex */
public class TransformParams {
    public static FloatProperty PROGRESS = new FloatProperty("progress") { // from class: com.android.quickstep.util.TransformParams.1
        @Override // android.util.Property
        public Float get(TransformParams transformParams) {
            return Float.valueOf(transformParams.getProgress());
        }

        @Override // android.util.FloatProperty
        public void setValue(TransformParams transformParams, float f4) {
            transformParams.setProgress(f4);
        }
    };
    public static FloatProperty TARGET_ALPHA = new FloatProperty("targetAlpha") { // from class: com.android.quickstep.util.TransformParams.2
        @Override // android.util.Property
        public Float get(TransformParams transformParams) {
            return Float.valueOf(transformParams.getTargetAlpha());
        }

        @Override // android.util.FloatProperty
        public void setValue(TransformParams transformParams, float f4) {
            transformParams.setTargetAlpha(f4);
        }
    };
    private BuilderProxy mBaseBuilderProxy;
    private float mCornerRadius;
    private BuilderProxy mHomeBuilderProxy;
    private float mProgress;
    private SurfaceTransactionApplier mSyncTransactionApplier;
    private float mTargetAlpha;
    private RemoteAnimationTargets mTargetSet;

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface BuilderProxy {
        public static final BuilderProxy NO_OP = new BuilderProxy() { // from class: com.android.quickstep.util.d0
            @Override // com.android.quickstep.util.TransformParams.BuilderProxy
            public final void onBuildTargetParams(SurfaceTransaction.SurfaceProperties surfaceProperties, RemoteAnimationTarget remoteAnimationTarget, TransformParams transformParams) {
                switch (r1) {
                    case 0:
                        TransformParams.BuilderProxy.lambda$static$0(surfaceProperties, remoteAnimationTarget, transformParams);
                        return;
                    default:
                        surfaceProperties.setAlpha(1.0f);
                        return;
                }
            }
        };
        public static final BuilderProxy ALWAYS_VISIBLE = new BuilderProxy() { // from class: com.android.quickstep.util.d0
            @Override // com.android.quickstep.util.TransformParams.BuilderProxy
            public final void onBuildTargetParams(SurfaceTransaction.SurfaceProperties surfaceProperties, RemoteAnimationTarget remoteAnimationTarget, TransformParams transformParams) {
                switch (r1) {
                    case 0:
                        TransformParams.BuilderProxy.lambda$static$0(surfaceProperties, remoteAnimationTarget, transformParams);
                        return;
                    default:
                        surfaceProperties.setAlpha(1.0f);
                        return;
                }
            }
        };

        /* JADX INFO: Access modifiers changed from: private */
        static /* synthetic */ void lambda$static$0(SurfaceTransaction.SurfaceProperties surfaceProperties, RemoteAnimationTarget remoteAnimationTarget, TransformParams transformParams) {
        }

        void onBuildTargetParams(SurfaceTransaction.SurfaceProperties surfaceProperties, RemoteAnimationTarget remoteAnimationTarget, TransformParams transformParams);
    }

    public TransformParams() {
        BuilderProxy builderProxy = BuilderProxy.ALWAYS_VISIBLE;
        this.mHomeBuilderProxy = builderProxy;
        this.mBaseBuilderProxy = builderProxy;
        this.mProgress = 0.0f;
        this.mTargetAlpha = 1.0f;
        this.mCornerRadius = -1.0f;
    }

    public void applySurfaceParams(SurfaceTransaction surfaceTransaction) {
        SurfaceTransactionApplier surfaceTransactionApplier = this.mSyncTransactionApplier;
        if (surfaceTransactionApplier != null) {
            surfaceTransactionApplier.scheduleApply(surfaceTransaction);
        } else {
            surfaceTransaction.getTransaction().apply();
        }
    }

    public SurfaceTransaction createSurfaceParams(BuilderProxy builderProxy) {
        RemoteAnimationTargets remoteAnimationTargets = this.mTargetSet;
        SurfaceTransaction surfaceTransaction = new SurfaceTransaction();
        if (remoteAnimationTargets == null) {
            return surfaceTransaction;
        }
        int i4 = 0;
        while (true) {
            RemoteAnimationTarget[] remoteAnimationTargetArr = remoteAnimationTargets.unfilteredApps;
            if (i4 >= remoteAnimationTargetArr.length) {
                break;
            }
            RemoteAnimationTarget remoteAnimationTarget = remoteAnimationTargetArr[i4];
            SurfaceTransaction.SurfaceProperties forSurface = surfaceTransaction.forSurface(remoteAnimationTarget.leash);
            if (remoteAnimationTarget.mode != remoteAnimationTargets.targetMode) {
                this.mBaseBuilderProxy.onBuildTargetParams(forSurface, remoteAnimationTarget, this);
            } else if (remoteAnimationTarget.windowConfiguration.getActivityType() == 2) {
                this.mHomeBuilderProxy.onBuildTargetParams(forSurface, remoteAnimationTarget, this);
            } else {
                ActivityManager.RunningTaskInfo runningTaskInfo = remoteAnimationTarget.taskInfo;
                boolean z4 = (runningTaskInfo == null || (runningTaskInfo.baseIntent.getFlags() & QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED) == 0) ? false : true;
                if (remoteAnimationTarget.isTranslucent && z4) {
                    forSurface.setAlpha(1.0f - ((DecelerateInterpolator) y0.e.f12930D).getInterpolation(Utilities.boundToRange(getProgress(), 0.0f, 1.0f)));
                } else {
                    forSurface.setAlpha(getTargetAlpha());
                }
                builderProxy.onBuildTargetParams(forSurface, remoteAnimationTarget, this);
            }
            i4++;
        }
        RemoteAnimationTarget[] remoteAnimationTargetArr2 = remoteAnimationTargets.wallpapers;
        int length = remoteAnimationTargetArr2 != null ? remoteAnimationTargetArr2.length : 0;
        for (int i5 = 0; i5 < length; i5++) {
            surfaceTransaction.forSurface(remoteAnimationTargets.wallpapers[i5].leash).setLayer(Integer.MIN_VALUE);
        }
        return surfaceTransaction;
    }

    public float getCornerRadius() {
        return this.mCornerRadius;
    }

    public float getProgress() {
        return this.mProgress;
    }

    public float getTargetAlpha() {
        return this.mTargetAlpha;
    }

    public RemoteAnimationTargets getTargetSet() {
        return this.mTargetSet;
    }

    public TransformParams setBaseBuilderProxy(BuilderProxy builderProxy) {
        this.mBaseBuilderProxy = builderProxy;
        return this;
    }

    public TransformParams setCornerRadius(float f4) {
        this.mCornerRadius = f4;
        return this;
    }

    public TransformParams setHomeBuilderProxy(BuilderProxy builderProxy) {
        this.mHomeBuilderProxy = builderProxy;
        return this;
    }

    public TransformParams setProgress(float f4) {
        this.mProgress = f4;
        return this;
    }

    public TransformParams setSyncTransactionApplier(SurfaceTransactionApplier surfaceTransactionApplier) {
        this.mSyncTransactionApplier = surfaceTransactionApplier;
        return this;
    }

    public TransformParams setTargetAlpha(float f4) {
        this.mTargetAlpha = f4;
        return this;
    }

    public TransformParams setTargetSet(RemoteAnimationTargets remoteAnimationTargets) {
        this.mTargetSet = remoteAnimationTargets;
        return this;
    }
}
