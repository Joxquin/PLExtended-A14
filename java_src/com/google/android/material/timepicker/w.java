package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Resources;
import android.text.InputFilter;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Arrays;
import java.util.Locale;
import o2.InterfaceC1334h;
/* loaded from: classes.dex */
public final class w implements D, q {

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f8247d;

    /* renamed from: e  reason: collision with root package name */
    public final n f8248e;

    /* renamed from: f  reason: collision with root package name */
    public final t f8249f;

    /* renamed from: g  reason: collision with root package name */
    public final t f8250g;

    /* renamed from: h  reason: collision with root package name */
    public final ChipTextInputComboView f8251h;

    /* renamed from: i  reason: collision with root package name */
    public final ChipTextInputComboView f8252i;

    /* renamed from: j  reason: collision with root package name */
    public final EditText f8253j;

    /* renamed from: k  reason: collision with root package name */
    public final EditText f8254k;

    /* renamed from: l  reason: collision with root package name */
    public MaterialButtonToggleGroup f8255l;

    public w(LinearLayout linearLayout, n nVar) {
        t tVar = new t(this, 0);
        this.f8249f = tVar;
        t tVar2 = new t(this, 1);
        this.f8250g = tVar2;
        this.f8247d = linearLayout;
        this.f8248e = nVar;
        Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_minute_text_input);
        this.f8251h = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_hour_text_input);
        this.f8252i = chipTextInputComboView2;
        ((TextView) chipTextInputComboView.findViewById(R.id.material_label)).setText(resources.getString(R.string.material_timepicker_minute));
        ((TextView) chipTextInputComboView2.findViewById(R.id.material_label)).setText(resources.getString(R.string.material_timepicker_hour));
        chipTextInputComboView.setTag(R.id.selection_type, 12);
        chipTextInputComboView2.setTag(R.id.selection_type, 10);
        if (nVar.f8222f == 0) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) linearLayout.findViewById(R.id.material_clock_period_toggle);
            this.f8255l = materialButtonToggleGroup;
            materialButtonToggleGroup.f7822f.add(new InterfaceC1334h() { // from class: com.google.android.material.timepicker.s
                @Override // o2.InterfaceC1334h
                public final void a(int i4, boolean z4) {
                    w wVar = w.this;
                    wVar.getClass();
                    if (z4) {
                        int i5 = i4 == R.id.material_clock_period_pm_button ? 1 : 0;
                        n nVar2 = wVar.f8248e;
                        if (i5 != nVar2.f8226j) {
                            nVar2.f8226j = i5;
                            int i6 = nVar2.f8223g;
                            if (i6 < 12 && i5 == 1) {
                                nVar2.f8223g = i6 + 12;
                            } else if (i6 < 12 || i5 != 0) {
                            } else {
                                nVar2.f8223g = i6 - 12;
                            }
                        }
                    }
                }
            });
            this.f8255l.setVisibility(0);
            d();
        }
        u uVar = new u(this);
        chipTextInputComboView2.setOnClickListener(uVar);
        chipTextInputComboView.setOnClickListener(uVar);
        j jVar = nVar.f8221e;
        InputFilter[] filters = chipTextInputComboView2.f8142f.getFilters();
        InputFilter[] inputFilterArr = (InputFilter[]) Arrays.copyOf(filters, filters.length + 1);
        inputFilterArr[filters.length] = jVar;
        chipTextInputComboView2.f8142f.setFilters(inputFilterArr);
        j jVar2 = nVar.f8220d;
        InputFilter[] filters2 = chipTextInputComboView.f8142f.getFilters();
        InputFilter[] inputFilterArr2 = (InputFilter[]) Arrays.copyOf(filters2, filters2.length + 1);
        inputFilterArr2[filters2.length] = jVar2;
        chipTextInputComboView.f8142f.setFilters(inputFilterArr2);
        EditText editText = chipTextInputComboView2.f8141e.f8099g;
        this.f8253j = editText;
        EditText editText2 = chipTextInputComboView.f8141e.f8099g;
        this.f8254k = editText2;
        r rVar = new r(chipTextInputComboView2, chipTextInputComboView, nVar);
        J.h(chipTextInputComboView2.f8140d, new v(linearLayout.getContext(), R.string.material_hour_selection, nVar, 0));
        J.h(chipTextInputComboView.f8140d, new v(linearLayout.getContext(), R.string.material_minute_selection, nVar, 1));
        editText.addTextChangedListener(tVar2);
        editText2.addTextChangedListener(tVar);
        c(nVar);
        TextInputLayout textInputLayout = chipTextInputComboView2.f8141e;
        TextInputLayout textInputLayout2 = chipTextInputComboView.f8141e;
        EditText editText3 = textInputLayout.f8099g;
        EditText editText4 = textInputLayout2.f8099g;
        editText3.setImeOptions(268435461);
        editText4.setImeOptions(268435462);
        editText3.setOnEditorActionListener(rVar);
        editText3.setOnKeyListener(rVar);
        editText4.setOnKeyListener(rVar);
    }

    @Override // com.google.android.material.timepicker.q
    public final void a() {
        c(this.f8248e);
    }

    @Override // com.google.android.material.timepicker.D
    public final void b(int i4) {
        this.f8248e.f8225i = i4;
        this.f8251h.setChecked(i4 == 12);
        this.f8252i.setChecked(i4 == 10);
        d();
    }

    public final void c(n nVar) {
        EditText editText = this.f8253j;
        t tVar = this.f8250g;
        editText.removeTextChangedListener(tVar);
        EditText editText2 = this.f8254k;
        t tVar2 = this.f8249f;
        editText2.removeTextChangedListener(tVar2);
        Locale locale = this.f8247d.getResources().getConfiguration().locale;
        String format = String.format(locale, "%02d", Integer.valueOf(nVar.f8224h));
        String format2 = String.format(locale, "%02d", Integer.valueOf(nVar.b()));
        this.f8251h.a(format);
        this.f8252i.a(format2);
        editText.addTextChangedListener(tVar);
        editText2.addTextChangedListener(tVar2);
        d();
    }

    public final void d() {
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f8255l;
        if (materialButtonToggleGroup == null) {
            return;
        }
        materialButtonToggleGroup.b(this.f8248e.f8226j == 0 ? R.id.material_clock_period_am_button : R.id.material_clock_period_pm_button, true);
    }

    @Override // com.google.android.material.timepicker.q
    public final void hide() {
        LinearLayout linearLayout = this.f8247d;
        View focusedChild = linearLayout.getFocusedChild();
        if (focusedChild != null) {
            Context context = focusedChild.getContext();
            Object obj = B.c.f105a;
            InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService(InputMethodManager.class);
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(focusedChild.getWindowToken(), 0);
            }
        }
        linearLayout.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.q
    public final void show() {
        this.f8247d.setVisibility(0);
        b(this.f8248e.f8225i);
    }
}
