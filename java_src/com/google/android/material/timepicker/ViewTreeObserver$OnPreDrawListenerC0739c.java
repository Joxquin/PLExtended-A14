package com.google.android.material.timepicker;

import android.view.ViewTreeObserver;
/* renamed from: com.google.android.material.timepicker.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserver$OnPreDrawListenerC0739c implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f8210d;

    public ViewTreeObserver$OnPreDrawListenerC0739c(ClockFaceView clockFaceView) {
        this.f8210d = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        if (this.f8210d.isShown()) {
            this.f8210d.getViewTreeObserver().removeOnPreDrawListener(this);
            ClockFaceView clockFaceView = this.f8210d;
            int height = ((this.f8210d.getHeight() / 2) - clockFaceView.f8144g.f8166k) - clockFaceView.f8151n;
            if (height != clockFaceView.f8218e) {
                clockFaceView.f8218e = height;
                clockFaceView.r();
                ClockHandView clockHandView = clockFaceView.f8144g;
                clockHandView.f8175t = clockFaceView.f8218e;
                clockHandView.invalidate();
            }
            return true;
        }
        return true;
    }
}
