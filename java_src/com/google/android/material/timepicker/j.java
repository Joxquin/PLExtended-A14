package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;
/* loaded from: classes.dex */
public final class j implements InputFilter {

    /* renamed from: a  reason: collision with root package name */
    public final int f8215a;

    public j(int i4) {
        this.f8215a = i4;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i4, int i5, Spanned spanned, int i6, int i7) {
        try {
            StringBuilder sb = new StringBuilder(spanned);
            sb.replace(i6, i7, charSequence.subSequence(i4, i5).toString());
            if (Integer.parseInt(sb.toString()) <= this.f8215a) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }
}
