package com.google.android.material.timepicker;

import android.view.View;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class y implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ TimePickerView f8257d;

    public y(TimePickerView timePickerView) {
        this.f8257d = timePickerView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        D d4 = this.f8257d.f8206k;
        if (d4 != null) {
            d4.b(((Integer) view.getTag(R.id.selection_type)).intValue());
        }
    }
}
