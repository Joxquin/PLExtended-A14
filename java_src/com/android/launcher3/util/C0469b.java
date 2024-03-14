package com.android.launcher3.util;

import android.content.Intent;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
/* renamed from: com.android.launcher3.util.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0469b implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5289a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f5290b;

    public /* synthetic */ C0469b(int i4, Object obj) {
        this.f5289a = i4;
        this.f5290b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5289a) {
            case 0:
                DisplayController.a((DisplayController) this.f5290b, (Intent) obj);
                return;
            default:
                ((Set) this.f5290b).addAll((List) obj);
                return;
        }
    }
}
