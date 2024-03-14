package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public final class MaterialTextInputPicker extends PickerFragment {

    /* renamed from: e  reason: collision with root package name */
    public int f7909e;

    /* renamed from: f  reason: collision with root package name */
    public InterfaceC0732g f7910f;

    /* renamed from: g  reason: collision with root package name */
    public C0729d f7911g;

    @Override // androidx.fragment.app.K
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f7909e = bundle.getInt("THEME_RES_ID_KEY");
        this.f7910f = (InterfaceC0732g) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f7911g = (C0729d) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.K
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f7909e));
        InterfaceC0732g interfaceC0732g = this.f7910f;
        new x(this);
        return interfaceC0732g.l();
    }

    @Override // androidx.fragment.app.K
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f7909e);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f7910f);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f7911g);
    }
}
