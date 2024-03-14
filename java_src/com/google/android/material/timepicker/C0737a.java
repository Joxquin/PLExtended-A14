package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import com.google.android.material.chip.Chip;
import x2.C1479q;
/* renamed from: com.google.android.material.timepicker.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0737a extends C1479q {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ChipTextInputComboView f8208d;

    public C0737a(ChipTextInputComboView chipTextInputComboView) {
        this.f8208d = chipTextInputComboView;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        if (TextUtils.isEmpty(editable)) {
            ChipTextInputComboView chipTextInputComboView = this.f8208d;
            Chip chip = chipTextInputComboView.f8140d;
            Resources resources = chipTextInputComboView.getResources();
            Parcelable.Creator creator = n.CREATOR;
            chip.setText(String.format(resources.getConfiguration().locale, "%02d", Integer.valueOf(Integer.parseInt("00"))));
            return;
        }
        ChipTextInputComboView chipTextInputComboView2 = this.f8208d;
        Chip chip2 = chipTextInputComboView2.f8140d;
        Resources resources2 = chipTextInputComboView2.getResources();
        Parcelable.Creator creator2 = n.CREATOR;
        chip2.setText(String.format(resources2.getConfiguration().locale, "%02d", Integer.valueOf(Integer.parseInt(String.valueOf(editable)))));
    }
}
