package com.google.android.material.datepicker;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.C0165b;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class l extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7947d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f7948e;

    public /* synthetic */ l(MaterialCalendar materialCalendar, int i4) {
        this.f7947d = i4;
        this.f7948e = materialCalendar;
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        int i4 = this.f7947d;
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f1349a;
        switch (i4) {
            case 0:
                super.onInitializeAccessibilityNodeInfo(view, eVar);
                accessibilityNodeInfo.setCollectionInfo(null);
                return;
            default:
                super.onInitializeAccessibilityNodeInfo(view, eVar);
                MaterialCalendar materialCalendar = this.f7948e;
                accessibilityNodeInfo.setHintText(materialCalendar.f7880n.getVisibility() == 0 ? materialCalendar.getString(R.string.mtrl_picker_toggle_to_year_selection) : materialCalendar.getString(R.string.mtrl_picker_toggle_to_day_selection));
                return;
        }
    }
}
