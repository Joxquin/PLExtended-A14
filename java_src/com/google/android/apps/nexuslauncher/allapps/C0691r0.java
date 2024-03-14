package com.google.android.apps.nexuslauncher.allapps;

import androidx.slice.Slice;
import com.android.launcher3.icons.BitmapInfo;
import java.util.ArrayList;
import java.util.function.Consumer;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.r0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0691r0 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7157a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f7158b;

    public /* synthetic */ C0691r0(int i4, Object obj) {
        this.f7157a = i4;
        this.f7158b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f7157a) {
            case 0:
                C0699t0 c0699t0 = (C0699t0) this.f7158b;
                BitmapInfo bitmapInfo = (BitmapInfo) obj;
                c0699t0.f7205c = true;
                c0699t0.f7206d = bitmapInfo;
                ArrayList arrayList = c0699t0.f7203a;
                arrayList.forEach(new C0691r0(1, bitmapInfo));
                arrayList.clear();
                return;
            case 1:
                ((InterfaceC0703u0) obj).a((BitmapInfo) this.f7158b);
                return;
            default:
                ((androidx.lifecycle.z) obj).i((Slice) this.f7158b);
                return;
        }
    }
}
