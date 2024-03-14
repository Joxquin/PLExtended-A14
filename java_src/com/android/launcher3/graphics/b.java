package com.android.launcher3.graphics;

import android.content.Context;
import android.util.SparseArray;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.graphics.LauncherPreviewRenderer;
import com.android.launcher3.graphics.PreviewSurfaceRenderer;
import com.android.launcher3.model.BgDataModel;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4641d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ InvariantDeviceProfile f4642e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f4643f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Context f4644g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Object f4645h;

    public /* synthetic */ b(Object obj, Context context, Object obj2, InvariantDeviceProfile invariantDeviceProfile, int i4) {
        this.f4641d = i4;
        this.f4643f = obj;
        this.f4644g = context;
        this.f4645h = obj2;
        this.f4642e = invariantDeviceProfile;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4641d) {
            case 0:
                PreviewSurfaceRenderer.AnonymousClass1.b((PreviewSurfaceRenderer.AnonymousClass1) this.f4643f, (LauncherPreviewRenderer.PreviewContext) this.f4644g, (SparseArray) this.f4645h, this.f4642e);
                return;
            default:
                PreviewSurfaceRenderer.b(this.f4644g, this.f4642e, (PreviewSurfaceRenderer) this.f4643f, (BgDataModel) this.f4645h);
                return;
        }
    }
}
