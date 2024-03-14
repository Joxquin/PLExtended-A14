package com.android.launcher3;

import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.ModelDelegate;
/* renamed from: com.android.launcher3.k0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0348k0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4689d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f4690e;

    public /* synthetic */ RunnableC0348k0(int i4, Object obj) {
        this.f4689d = i4;
        this.f4690e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4689d) {
            case 0:
                ((ModelDelegate) this.f4690e).workspaceLoadComplete();
                return;
            case 1:
                ((ModelDelegate) this.f4690e).destroy();
                return;
            default:
                ((BgDataModel.Callbacks) this.f4690e).clearPendingBinds();
                return;
        }
    }
}
