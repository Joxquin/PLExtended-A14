package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import x2.C1479q;
/* loaded from: classes.dex */
public final class t extends C1479q {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f8242d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ w f8243e;

    public /* synthetic */ t(w wVar, int i4) {
        this.f8242d = i4;
        this.f8243e = wVar;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        switch (this.f8242d) {
            case 0:
                try {
                    if (TextUtils.isEmpty(editable)) {
                        n nVar = this.f8243e.f8248e;
                        nVar.getClass();
                        nVar.f8224h = 0;
                    } else {
                        int parseInt = Integer.parseInt(editable.toString());
                        n nVar2 = this.f8243e.f8248e;
                        nVar2.getClass();
                        nVar2.f8224h = parseInt % 60;
                    }
                    return;
                } catch (NumberFormatException unused) {
                    return;
                }
            default:
                try {
                    if (TextUtils.isEmpty(editable)) {
                        this.f8243e.f8248e.f(0);
                    } else {
                        this.f8243e.f8248e.f(Integer.parseInt(editable.toString()));
                    }
                    return;
                } catch (NumberFormatException unused2) {
                    return;
                }
        }
    }
}
