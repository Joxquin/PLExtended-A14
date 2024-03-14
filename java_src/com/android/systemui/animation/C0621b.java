package com.android.systemui.animation;

import android.graphics.Matrix;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.RemoteException;
import android.util.Log;
import android.view.IRemoteAnimationFinishedCallback;
import android.view.RemoteAnimationTarget;
import android.view.SyncRtSurfaceTransactionApplier;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
/* renamed from: com.android.systemui.animation.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0621b implements d {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f6038a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ d f6039b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C0622c f6040c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ IRemoteAnimationFinishedCallback f6041d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RemoteAnimationTarget f6042e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ RemoteAnimationTarget f6043f;

    public C0621b(d dVar, C0622c c0622c, IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback, RemoteAnimationTarget remoteAnimationTarget, RemoteAnimationTarget remoteAnimationTarget2) {
        this.f6039b = dVar;
        this.f6040c = c0622c;
        this.f6041d = iRemoteAnimationFinishedCallback;
        this.f6042e = remoteAnimationTarget;
        this.f6043f = remoteAnimationTarget2;
        this.f6038a = dVar;
    }

    @Override // com.android.systemui.animation.l
    public final n createAnimatorState() {
        return this.f6038a.createAnimatorState();
    }

    @Override // com.android.systemui.animation.l
    public final ViewGroup getLaunchContainer() {
        return this.f6038a.getLaunchContainer();
    }

    @Override // com.android.systemui.animation.l
    public final View getOpeningWindowSyncView() {
        return this.f6038a.getOpeningWindowSyncView();
    }

    @Override // com.android.systemui.animation.d
    public final boolean isBelowAnimatingWindow() {
        return this.f6038a.isBelowAnimatingWindow();
    }

    @Override // com.android.systemui.animation.d
    public final boolean isDialogLaunch() {
        return this.f6038a.isDialogLaunch();
    }

    @Override // com.android.systemui.animation.d
    public final void onLaunchAnimationCancelled(Boolean bool) {
        this.f6038a.onLaunchAnimationCancelled(bool);
    }

    @Override // com.android.systemui.animation.l
    public final void onLaunchAnimationEnd(boolean z4) {
        e eVar = this.f6040c.f6046c;
        if (eVar != null) {
            eVar.onLaunchAnimationEnd();
        }
        IRemoteAnimationFinishedCallback iRemoteAnimationFinishedCallback = this.f6041d;
        if (iRemoteAnimationFinishedCallback != null) {
            try {
                iRemoteAnimationFinishedCallback.onAnimationFinished();
            } catch (RemoteException e4) {
                e4.printStackTrace();
            }
        }
        boolean z5 = f.f6062c;
        d dVar = this.f6039b;
        if (z5) {
            Log.d("ActivityLaunchAnimator", "Calling controller.onLaunchAnimationEnd(isExpandingFullyAbove=" + z4 + ") [controller=" + dVar + "]");
        }
        dVar.onLaunchAnimationEnd(z4);
    }

    @Override // com.android.systemui.animation.l
    public final void onLaunchAnimationProgress(n state, float f4, float f5) {
        int i4;
        int i5;
        int i6;
        float f6;
        kotlin.jvm.internal.h.e(state, "state");
        boolean z4 = state.f6097g;
        C0622c c0622c = this.f6040c;
        if (!z4 && c0622c.f6049f.getViewRootImpl() != null) {
            RemoteAnimationTarget remoteAnimationTarget = this.f6042e;
            if (remoteAnimationTarget.leash.isValid()) {
                Rect rect = remoteAnimationTarget.screenSpaceBounds;
                int i7 = rect.left;
                int i8 = rect.right;
                float f7 = (i7 + i8) / 2.0f;
                int i9 = rect.top;
                float f8 = rect.bottom - i9;
                float max = Math.max((state.f6094d - state.f6093c) / (i8 - i7), (state.f6092b - state.f6091a) / f8);
                Matrix matrix = c0622c.f6052i;
                matrix.reset();
                matrix.setScale(max, max, f7, (i9 + i4) / 2.0f);
                int i10 = state.f6093c;
                matrix.postTranslate((((state.f6094d - i10) / 2.0f) + i10) - f7, (((f8 * max) - f8) / 2.0f) + (state.f6091a - rect.top));
                float f9 = state.f6093c - rect.left;
                float f10 = state.f6091a - rect.top;
                RectF rectF = c0622c.f6055l;
                rectF.set(f9, f10, (state.f6094d - i5) + f9, (state.f6092b - i6) + f10);
                Matrix matrix2 = c0622c.f6053j;
                matrix.invert(matrix2);
                matrix2.mapRect(rectF);
                int a4 = n3.a.a(rectF.left);
                int a5 = n3.a.a(rectF.top);
                int a6 = n3.a.a(rectF.right);
                int a7 = n3.a.a(rectF.bottom);
                Rect rect2 = c0622c.f6054k;
                rect2.set(a4, a5, a6, a7);
                if (c0622c.f6044a.isBelowAnimatingWindow()) {
                    PorterDuffXfermode porterDuffXfermode = s.f6139e;
                    f6 = f.f6061b.f6090d.getInterpolation(k.a(f.f6060a, f5, 150L, 183L));
                } else {
                    f6 = 1.0f;
                }
                c0622c.f6050g.scheduleApply(new SyncRtSurfaceTransactionApplier.SurfaceParams[]{new SyncRtSurfaceTransactionApplier.SurfaceParams.Builder(remoteAnimationTarget.leash).withAlpha(f6).withMatrix(matrix).withWindowCrop(rect2).withCornerRadius(Math.max(state.f6095e, state.f6096f) / max).withVisibility(true).build()});
            }
        }
        RemoteAnimationTarget remoteAnimationTarget2 = this.f6043f;
        if (remoteAnimationTarget2 != null && c0622c.f6049f.getViewRootImpl() != null && remoteAnimationTarget2.leash.isValid()) {
            PorterDuffXfermode porterDuffXfermode2 = s.f6139e;
            o oVar = f.f6060a;
            float a8 = k.a(oVar, f5, f.f6064e, 133L);
            SyncRtSurfaceTransactionApplier.SurfaceParams.Builder builder = new SyncRtSurfaceTransactionApplier.SurfaceParams.Builder(remoteAnimationTarget2.leash);
            if (a8 > 0.0f) {
                Matrix matrix3 = c0622c.f6052i;
                matrix3.reset();
                matrix3.setTranslate(0.0f, state.f6091a - remoteAnimationTarget2.sourceContainerBounds.top);
                Rect rect3 = c0622c.f6054k;
                rect3.set(state.f6093c, 0, state.f6094d, state.f6092b - state.f6091a);
                builder.withAlpha(((PathInterpolator) f.f6065f).getInterpolation(a8)).withMatrix(matrix3).withWindowCrop(rect3).withVisibility(true);
            } else {
                builder.withAlpha(1.0f - f.f6066g.getInterpolation(k.a(oVar, f5, 0L, 133L)));
            }
            c0622c.f6050g.scheduleApply(new SyncRtSurfaceTransactionApplier.SurfaceParams[]{builder.build()});
        }
        e eVar = c0622c.f6046c;
        if (eVar != null) {
            eVar.c(f5);
        }
        this.f6039b.onLaunchAnimationProgress(state, f4, f5);
    }

    @Override // com.android.systemui.animation.l
    public final void onLaunchAnimationStart(boolean z4) {
        e eVar = this.f6040c.f6046c;
        if (eVar != null) {
            eVar.a();
        }
        boolean z5 = f.f6062c;
        d dVar = this.f6039b;
        if (z5) {
            Log.d("ActivityLaunchAnimator", "Calling controller.onLaunchAnimationStart(isExpandingFullyAbove=" + z4 + ") [controller=" + dVar + "]");
        }
        dVar.onLaunchAnimationStart(z4);
    }
}
