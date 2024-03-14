package com.android.quickstep;

import com.android.launcher3.util.RunnableList;
/* renamed from: com.android.quickstep.q0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0542q0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5768d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5769e;

    public /* synthetic */ RunnableC0542q0(int i4, Object obj) {
        this.f5768d = i4;
        this.f5769e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5768d) {
            case 0:
                RecentsActivity.g((RecentsActivity) this.f5769e);
                return;
            case 1:
                RecentsActivity.j((RecentsActivity) this.f5769e);
                return;
            case 2:
                RecentsActivity.h((RecentsActivity) this.f5769e);
                return;
            default:
                ((RunnableList) this.f5769e).executeAllAndDestroy();
                return;
        }
    }
}
