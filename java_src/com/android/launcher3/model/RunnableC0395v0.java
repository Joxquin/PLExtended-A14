package com.android.launcher3.model;

import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.widget.LauncherWidgetHolder;
/* renamed from: com.android.launcher3.model.v0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0395v0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4886d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f4887e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f4888f;

    public /* synthetic */ RunnableC0395v0(int i4, Object obj, Object obj2) {
        this.f4886d = i4;
        this.f4887e = obj;
        this.f4888f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4886d) {
            case 0:
                ((LauncherWidgetHolder) this.f4887e).deleteAppWidgetId(((LauncherAppWidgetInfo) this.f4888f).appWidgetId);
                return;
            default:
                ModelWriter.a((ModelWriter) this.f4887e, (LauncherModel.CallbackTask) this.f4888f);
                return;
        }
    }
}
