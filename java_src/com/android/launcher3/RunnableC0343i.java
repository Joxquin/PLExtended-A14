package com.android.launcher3;

import com.android.launcher3.util.RunnableList;
/* renamed from: com.android.launcher3.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0343i implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4650d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RunnableList f4651e;

    public /* synthetic */ RunnableC0343i(RunnableList runnableList, int i4) {
        this.f4650d = i4;
        this.f4651e = runnableList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4650d) {
            case 0:
            default:
                this.f4651e.executeAllAndDestroy();
                return;
        }
    }
}
