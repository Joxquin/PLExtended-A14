package com.android.wm.shell.common.magnetictarget;

import android.graphics.PointF;
/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ c f6343d;

    public b(c cVar) {
        this.f6343d = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        c cVar = this.f6343d;
        cVar.f6344a.getLocationOnScreen(cVar.f6347d);
        c cVar2 = this.f6343d;
        PointF pointF = cVar2.f6346c;
        float width = ((cVar2.f6344a.getWidth() / 2.0f) + cVar2.f6347d[0]) - this.f6343d.f6344a.getTranslationX();
        c cVar3 = this.f6343d;
        pointF.set(width, ((cVar3.f6344a.getHeight() / 2.0f) + cVar3.f6347d[1]) - this.f6343d.f6344a.getTranslationY());
    }
}
