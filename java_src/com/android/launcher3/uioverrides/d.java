package com.android.launcher3.uioverrides;

import com.android.launcher3.uioverrides.QuickstepWidgetHolder;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ QuickstepWidgetHolder.QuickstepWidgetHolderListener f5233d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ QuickstepWidgetHolder.UpdateKey f5234e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f5235f;

    public /* synthetic */ d(QuickstepWidgetHolder.QuickstepWidgetHolderListener quickstepWidgetHolderListener, c cVar, Object obj) {
        this.f5233d = quickstepWidgetHolderListener;
        this.f5234e = cVar;
        this.f5235f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        QuickstepWidgetHolder.QuickstepWidgetHolderListener.b(this.f5233d, this.f5234e, this.f5235f);
    }
}
