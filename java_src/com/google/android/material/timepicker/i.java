package com.google.android.material.timepicker;

import android.view.View;
/* loaded from: classes.dex */
public final class i implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f8213d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ MaterialTimePicker f8214e;

    public /* synthetic */ i(MaterialTimePicker materialTimePicker, int i4) {
        this.f8213d = i4;
        this.f8214e = materialTimePicker;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f8213d) {
            case 0:
                for (View.OnClickListener onClickListener : this.f8214e.f8176d) {
                    onClickListener.onClick(view);
                }
                this.f8214e.dismiss();
                return;
            case 1:
                for (View.OnClickListener onClickListener2 : this.f8214e.f8177e) {
                    onClickListener2.onClick(view);
                }
                this.f8214e.dismiss();
                return;
            default:
                MaterialTimePicker materialTimePicker = this.f8214e;
                materialTimePicker.f8195w = materialTimePicker.f8195w == 0 ? 1 : 0;
                materialTimePicker.b(materialTimePicker.f8193u);
                return;
        }
    }
}
