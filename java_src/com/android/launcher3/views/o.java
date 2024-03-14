package com.android.launcher3.views;

import com.android.launcher3.dragndrop.DragLayer;
/* loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ FloatingIconView f5356d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f5357e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ DragLayer f5358f;

    public /* synthetic */ o(FloatingIconView floatingIconView, boolean z4, DragLayer dragLayer) {
        this.f5356d = floatingIconView;
        this.f5357e = z4;
        this.f5358f = dragLayer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        FloatingIconView.b(this.f5356d, this.f5357e, this.f5358f);
    }
}
