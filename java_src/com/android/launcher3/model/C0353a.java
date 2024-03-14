package com.android.launcher3.model;

import com.android.launcher3.util.SafeCloseable;
/* renamed from: com.android.launcher3.model.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0353a implements SafeCloseable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AllAppsList f4786d;

    public /* synthetic */ C0353a(AllAppsList allAppsList) {
        this.f4786d = allAppsList;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        AllAppsList.a(this.f4786d);
    }
}
