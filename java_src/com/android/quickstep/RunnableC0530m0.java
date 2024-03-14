package com.android.quickstep;

import java.util.ArrayList;
import java.util.function.Consumer;
/* renamed from: com.android.quickstep.m0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0530m0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5741d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Consumer f5742e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ArrayList f5743f;

    public /* synthetic */ RunnableC0530m0(int i4, Consumer consumer, ArrayList arrayList) {
        this.f5741d = i4;
        this.f5742e = consumer;
        this.f5743f = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5741d) {
            case 0:
                RecentTasksList.d(this.f5742e, this.f5743f);
                return;
            default:
                RecentTasksList.b(this.f5742e, this.f5743f);
                return;
        }
    }
}
