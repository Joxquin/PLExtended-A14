package com.google.android.material.timepicker;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
/* loaded from: classes.dex */
public final class A implements View.OnTouchListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ GestureDetector f8139d;

    public A(GestureDetector gestureDetector) {
        this.f8139d = gestureDetector;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (((Checkable) view).isChecked()) {
            return this.f8139d.onTouchEvent(motionEvent);
        }
        return false;
    }
}
