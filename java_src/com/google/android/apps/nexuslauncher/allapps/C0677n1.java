package com.google.android.apps.nexuslauncher.allapps;

import java.util.function.Consumer;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.n1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0677n1 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7131a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f7132b;

    public /* synthetic */ C0677n1(int i4, Object obj) {
        this.f7131a = i4;
        this.f7132b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f7131a) {
            case 0:
                ((InterfaceC0689q1) obj).a((String) this.f7132b);
                return;
            default:
                ((InterfaceC0689q1) obj).b();
                return;
        }
    }
}
