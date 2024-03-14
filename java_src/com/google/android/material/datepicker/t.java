package com.google.android.material.datepicker;

import android.view.View;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class t implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7962d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ MaterialDatePicker f7963e;

    public /* synthetic */ t(MaterialDatePicker materialDatePicker, int i4) {
        this.f7962d = i4;
        this.f7963e = materialDatePicker;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f7962d) {
            case 0:
                Iterator it = this.f7963e.f7887d.iterator();
                while (it.hasNext()) {
                    this.f7963e.b().k();
                    ((w) it.next()).a();
                }
                this.f7963e.dismiss();
                return;
            case 1:
                Iterator it2 = this.f7963e.f7888e.iterator();
                while (it2.hasNext()) {
                    ((View.OnClickListener) it2.next()).onClick(view);
                }
                this.f7963e.dismiss();
                return;
            default:
                MaterialDatePicker materialDatePicker = this.f7963e;
                materialDatePicker.f7907x.setEnabled(materialDatePicker.b().h());
                this.f7963e.f7905v.toggle();
                MaterialDatePicker materialDatePicker2 = this.f7963e;
                materialDatePicker2.i(materialDatePicker2.f7905v);
                this.f7963e.g();
                return;
        }
    }
}
