package com.android.launcher3.taskbar;

import android.view.SurfaceControl;
/* renamed from: com.android.launcher3.taskbar.a0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0418a0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5091d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5092e;

    public /* synthetic */ RunnableC0418a0(int i4, Object obj) {
        this.f5091d = i4;
        this.f5092e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5091d) {
            case 0:
                ((TaskbarDragController) this.f5092e).onPreDragAnimationEnd();
                return;
            default:
                ((SurfaceControl.Transaction) this.f5092e).close();
                return;
        }
    }
}
