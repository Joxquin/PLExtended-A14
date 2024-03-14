package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.util.SafeCloseable;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.s0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0695s0 implements SafeCloseable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0699t0 f7176d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ InterfaceC0703u0 f7177e;

    public /* synthetic */ C0695s0(C0699t0 c0699t0, InterfaceC0703u0 interfaceC0703u0) {
        this.f7176d = c0699t0;
        this.f7177e = interfaceC0703u0;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        C0699t0 c0699t0 = this.f7176d;
        c0699t0.f7203a.remove(this.f7177e);
    }
}
