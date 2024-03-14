package com.android.launcher3.util;

import java.util.function.Consumer;
/* renamed from: com.android.launcher3.util.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0480m implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5301a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ IntSet f5302b;

    public /* synthetic */ C0480m(IntSet intSet, int i4) {
        this.f5301a = i4;
        this.f5302b = intSet;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5301a) {
            case 0:
            default:
                this.f5302b.add(((Integer) obj).intValue());
                return;
        }
    }
}
