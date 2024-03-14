package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
/* loaded from: classes.dex */
public final class r implements TextView.OnEditorActionListener, View.OnKeyListener {

    /* renamed from: d  reason: collision with root package name */
    public final ChipTextInputComboView f8237d;

    /* renamed from: e  reason: collision with root package name */
    public final ChipTextInputComboView f8238e;

    /* renamed from: f  reason: collision with root package name */
    public final n f8239f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f8240g = false;

    public r(ChipTextInputComboView chipTextInputComboView, ChipTextInputComboView chipTextInputComboView2, n nVar) {
        this.f8237d = chipTextInputComboView;
        this.f8238e = chipTextInputComboView2;
        this.f8239f = nVar;
    }

    public final void a(int i4) {
        this.f8238e.setChecked(i4 == 12);
        this.f8237d.setChecked(i4 == 10);
        this.f8239f.f8225i = i4;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
        boolean z4 = i4 == 5;
        if (z4) {
            a(12);
        }
        return z4;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
        if (this.f8240g) {
            return false;
        }
        boolean z4 = true;
        this.f8240g = true;
        EditText editText = (EditText) view;
        if (this.f8239f.f8225i == 12) {
            if (i4 == 67 && keyEvent.getAction() == 0 && TextUtils.isEmpty(editText.getText())) {
                a(10);
            }
            z4 = false;
        } else {
            Editable text = editText.getText();
            if (text != null) {
                if (i4 >= 7 && i4 <= 16 && keyEvent.getAction() == 1 && editText.getSelectionStart() == 2 && text.length() == 2) {
                    a(12);
                }
            }
            z4 = false;
        }
        this.f8240g = false;
        return z4;
    }
}
