package com.google.android.material.datepicker;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class x extends E {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MaterialTextInputPicker f7968a;

    public x(MaterialTextInputPicker materialTextInputPicker) {
        this.f7968a = materialTextInputPicker;
    }

    @Override // com.google.android.material.datepicker.E
    public final void a(Object obj) {
        Iterator it = this.f7968a.f7912d.iterator();
        while (it.hasNext()) {
            ((E) it.next()).a(obj);
        }
    }
}
