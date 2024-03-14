package com.android.launcher3.model;

import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.FolderInfo;
import java.util.Collection;
/* renamed from: com.android.launcher3.model.t0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0391t0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4876d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ModelWriter f4877e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ModelWriter.ModelVerifier f4878f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Object f4879g;

    public /* synthetic */ RunnableC0391t0(ModelWriter modelWriter, Object obj, ModelWriter.ModelVerifier modelVerifier, int i4) {
        this.f4876d = i4;
        this.f4877e = modelWriter;
        this.f4879g = obj;
        this.f4878f = modelVerifier;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4876d) {
            case 0:
                ModelWriter.b(this.f4877e, (FolderInfo) this.f4879g, this.f4878f);
                return;
            default:
                ModelWriter.d(this.f4877e, (Collection) this.f4879g, this.f4878f);
                return;
        }
    }
}
