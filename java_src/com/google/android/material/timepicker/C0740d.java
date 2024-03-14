package com.google.android.material.timepicker;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.C0165b;
import com.android.systemui.shared.R;
/* renamed from: com.google.android.material.timepicker.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0740d extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f8211d;

    public C0740d(ClockFaceView clockFaceView) {
        this.f8211d = clockFaceView;
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        super.onInitializeAccessibilityNodeInfo(view, eVar);
        int intValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f1349a;
        if (intValue > 0) {
            accessibilityNodeInfo.setTraversalAfter((View) this.f8211d.f8147j.get(intValue - 1));
        }
        eVar.i(M.d.a(0, 1, intValue, 1, false, view.isSelected()));
        accessibilityNodeInfo.setClickable(true);
        eVar.b(M.c.f1334e);
    }

    @Override // androidx.core.view.C0165b
    public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
        if (i4 == 16) {
            long uptimeMillis = SystemClock.uptimeMillis();
            float x4 = view.getX() + (view.getWidth() / 2.0f);
            float height = (view.getHeight() / 2.0f) + view.getY();
            ClockFaceView clockFaceView = this.f8211d;
            clockFaceView.f8144g.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, x4, height, 0));
            clockFaceView.f8144g.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 1, x4, height, 0));
            return true;
        }
        return super.performAccessibilityAction(view, i4, bundle);
    }
}
