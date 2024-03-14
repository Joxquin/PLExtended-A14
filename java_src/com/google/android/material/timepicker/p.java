package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;
import java.util.Locale;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class p implements h, D, C, g, q {

    /* renamed from: i  reason: collision with root package name */
    public static final String[] f8229i = {"12", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"};

    /* renamed from: j  reason: collision with root package name */
    public static final String[] f8230j = {"00", "2", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22"};

    /* renamed from: k  reason: collision with root package name */
    public static final String[] f8231k = {"00", "5", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55"};

    /* renamed from: d  reason: collision with root package name */
    public final TimePickerView f8232d;

    /* renamed from: e  reason: collision with root package name */
    public final n f8233e;

    /* renamed from: f  reason: collision with root package name */
    public float f8234f;

    /* renamed from: g  reason: collision with root package name */
    public float f8235g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f8236h = false;

    public p(TimePickerView timePickerView, n nVar) {
        this.f8232d = timePickerView;
        this.f8233e = nVar;
        if (nVar.f8222f == 0) {
            timePickerView.f8203h.setVisibility(0);
        }
        ((ArrayList) timePickerView.f8201f.f8165j).add(this);
        timePickerView.f8206k = this;
        timePickerView.f8205j = this;
        timePickerView.f8201f.f8173r = this;
        f("%d", f8229i);
        f("%d", f8230j);
        f("%02d", f8231k);
        a();
    }

    @Override // com.google.android.material.timepicker.q
    public final void a() {
        n nVar = this.f8233e;
        this.f8235g = c() * nVar.b();
        this.f8234f = nVar.f8224h * 6;
        d(nVar.f8225i, false);
        e();
    }

    @Override // com.google.android.material.timepicker.D
    public final void b(int i4) {
        d(i4, true);
    }

    public final int c() {
        return this.f8233e.f8222f == 1 ? 15 : 30;
    }

    public final void d(int i4, boolean z4) {
        boolean z5 = i4 == 12;
        TimePickerView timePickerView = this.f8232d;
        timePickerView.f8201f.f8160e = z5;
        n nVar = this.f8233e;
        nVar.f8225i = i4;
        timePickerView.f8202g.t(z5 ? f8231k : nVar.f8222f == 1 ? f8230j : f8229i, z5 ? R.string.material_minute_suffix : R.string.material_hour_suffix);
        timePickerView.f8201f.b(z5 ? this.f8234f : this.f8235g, z4);
        Chip chip = timePickerView.f8199d;
        boolean z6 = i4 == 12;
        chip.setChecked(z6);
        int i5 = z6 ? 2 : 0;
        WeakHashMap weakHashMap = J.f3079a;
        androidx.core.view.A.e(chip, i5);
        Chip chip2 = timePickerView.f8200e;
        boolean z7 = i4 == 10;
        chip2.setChecked(z7);
        androidx.core.view.A.e(chip2, z7 ? 2 : 0);
        J.h(timePickerView.f8200e, new o(this, timePickerView.getContext(), R.string.material_hour_selection, 0));
        J.h(timePickerView.f8199d, new o(this, timePickerView.getContext(), R.string.material_minute_selection, 1));
    }

    public final void e() {
        n nVar = this.f8233e;
        int i4 = nVar.f8226j;
        int b4 = nVar.b();
        int i5 = nVar.f8224h;
        TimePickerView timePickerView = this.f8232d;
        timePickerView.getClass();
        timePickerView.f8203h.b(i4 == 1 ? R.id.material_clock_period_pm_button : R.id.material_clock_period_am_button, true);
        Locale locale = timePickerView.getResources().getConfiguration().locale;
        String format = String.format(locale, "%02d", Integer.valueOf(i5));
        String format2 = String.format(locale, "%02d", Integer.valueOf(b4));
        if (!TextUtils.equals(timePickerView.f8199d.getText(), format)) {
            timePickerView.f8199d.setText(format);
        }
        if (TextUtils.equals(timePickerView.f8200e.getText(), format2)) {
            return;
        }
        timePickerView.f8200e.setText(format2);
    }

    public final void f(String str, String[] strArr) {
        for (int i4 = 0; i4 < strArr.length; i4++) {
            Resources resources = this.f8232d.getResources();
            String str2 = strArr[i4];
            Parcelable.Creator creator = n.CREATOR;
            strArr[i4] = String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(str2))));
        }
    }

    @Override // com.google.android.material.timepicker.q
    public final void hide() {
        this.f8232d.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.h
    public final void i(float f4, boolean z4) {
        if (this.f8236h) {
            return;
        }
        n nVar = this.f8233e;
        int i4 = nVar.f8223g;
        int i5 = nVar.f8224h;
        int round = Math.round(f4);
        if (nVar.f8225i == 12) {
            int i6 = ((round + 3) / 6) % 60;
            nVar.f8224h = i6;
            this.f8234f = (float) Math.floor(i6 * 6);
        } else {
            nVar.f(((c() / 2) + round) / c());
            this.f8235g = c() * nVar.b();
        }
        if (z4) {
            return;
        }
        e();
        if (nVar.f8224h == i5 && nVar.f8223g == i4) {
            return;
        }
        this.f8232d.performHapticFeedback(4);
    }

    @Override // com.google.android.material.timepicker.q
    public final void show() {
        this.f8232d.setVisibility(0);
    }
}
