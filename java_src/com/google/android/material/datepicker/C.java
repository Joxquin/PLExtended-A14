package com.google.android.material.datepicker;

import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.C0182t;
import androidx.recyclerview.widget.E0;
import com.android.systemui.shared.R;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class C extends E0 {

    /* renamed from: d  reason: collision with root package name */
    public final TextView f7857d;

    /* renamed from: e  reason: collision with root package name */
    public final MaterialCalendarGridView f7858e;

    public C(LinearLayout linearLayout, boolean z4) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
        this.f7857d = textView;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        new C0182t(R.id.tag_accessibility_heading, 3).c(textView, Boolean.TRUE);
        this.f7858e = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
        if (z4) {
            return;
        }
        textView.setVisibility(8);
    }
}
