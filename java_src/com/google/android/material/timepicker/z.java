package com.google.android.material.timepicker;

import android.view.GestureDetector;
import android.view.MotionEvent;
/* loaded from: classes.dex */
public final class z extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ TimePickerView f8258d;

    public z(TimePickerView timePickerView) {
        this.f8258d = timePickerView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        B b4 = this.f8258d.f8207l;
        if (b4 != null) {
            MaterialTimePicker materialTimePicker = (MaterialTimePicker) b4;
            materialTimePicker.f8195w = 1;
            materialTimePicker.b(materialTimePicker.f8193u);
            w wVar = materialTimePicker.f8183k;
            n nVar = wVar.f8248e;
            wVar.f8251h.setChecked(nVar.f8225i == 12);
            wVar.f8252i.setChecked(nVar.f8225i == 10);
            return true;
        }
        return false;
    }
}
