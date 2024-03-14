package com.google.android.apps.nexuslauncher.allapps;

import java.util.List;
import java.util.function.Consumer;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.c0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0632c0 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7017a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ g3 f7018b;

    public /* synthetic */ C0632c0(g3 g3Var, int i4) {
        this.f7017a = i4;
        this.f7018b = g3Var;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f7017a) {
            case 0:
            case 1:
            default:
                this.f7018b.c((List) obj);
                return;
        }
    }
}
