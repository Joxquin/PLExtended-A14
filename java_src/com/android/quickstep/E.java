package com.android.quickstep;

import android.view.RemoteAnimationTarget;
import com.android.quickstep.FallbackSwipeHandler;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.TransformParams;
/* loaded from: classes.dex */
public final /* synthetic */ class E implements TransformParams.BuilderProxy {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5452d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5453e;

    public /* synthetic */ E(int i4, Object obj) {
        this.f5452d = i4;
        this.f5453e = obj;
    }

    @Override // com.android.quickstep.util.TransformParams.BuilderProxy
    public final void onBuildTargetParams(SurfaceTransaction.SurfaceProperties surfaceProperties, RemoteAnimationTarget remoteAnimationTarget, TransformParams transformParams) {
        int i4 = this.f5452d;
        Object obj = this.f5453e;
        switch (i4) {
            case 0:
                ((FallbackSwipeHandler.FallbackHomeAnimationFactory) obj).updateHomeActivityTransformDuringHomeAnim(surfaceProperties, remoteAnimationTarget, transformParams);
                return;
            case 1:
                ((FallbackSwipeHandler.FallbackHomeAnimationFactory) obj).updateHomeActivityTransformDuringHomeAnim(surfaceProperties, remoteAnimationTarget, transformParams);
                return;
            case 2:
                ((FallbackSwipeHandler.FallbackHomeAnimationFactory) obj).updateRecentsActivityTransformDuringHomeAnim(surfaceProperties, remoteAnimationTarget, transformParams);
                return;
            default:
                ((FallbackSwipeHandler) obj).updateHomeActivityTransformDuringSwipeUp(surfaceProperties, remoteAnimationTarget, transformParams);
                return;
        }
    }
}
