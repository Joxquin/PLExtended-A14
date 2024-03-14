package com.google.android.material.datepicker;

import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class A extends BaseAdapter {

    /* renamed from: i  reason: collision with root package name */
    public static final int f7848i = H.d(null).getMaximum(4);

    /* renamed from: j  reason: collision with root package name */
    public static final int f7849j = (H.d(null).getMaximum(7) + H.d(null).getMaximum(5)) - 1;

    /* renamed from: d  reason: collision with root package name */
    public final z f7850d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC0732g f7851e;

    /* renamed from: f  reason: collision with root package name */
    public Collection f7852f;

    /* renamed from: g  reason: collision with root package name */
    public C0731f f7853g;

    /* renamed from: h  reason: collision with root package name */
    public final C0729d f7854h;

    public A(z zVar, InterfaceC0732g interfaceC0732g, C0729d c0729d) {
        this.f7850d = zVar;
        this.f7851e = interfaceC0732g;
        this.f7854h = c0729d;
        this.f7852f = interfaceC0732g.i();
    }

    public final int b() {
        z zVar = this.f7850d;
        int i4 = this.f7854h.f7924h;
        int i5 = zVar.f7969d.get(7);
        if (i4 <= 0) {
            i4 = zVar.f7969d.getFirstDayOfWeek();
        }
        int i6 = i5 - i4;
        return i6 < 0 ? i6 + zVar.f7972g : i6;
    }

    @Override // android.widget.Adapter
    /* renamed from: c */
    public final Long getItem(int i4) {
        if (i4 >= b()) {
            int b4 = b();
            z zVar = this.f7850d;
            if (i4 > (b4 + zVar.f7973h) - 1) {
                return null;
            }
            Calendar b5 = H.b(zVar.f7969d);
            b5.set(5, (i4 - b()) + 1);
            return Long.valueOf(b5.getTimeInMillis());
        }
        return null;
    }

    public final void d(TextView textView, long j4) {
        C0730e c0730e;
        if (textView == null) {
            return;
        }
        boolean z4 = false;
        if (this.f7854h.f7922f.g(j4)) {
            textView.setEnabled(true);
            Iterator it = this.f7851e.i().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (H.a(j4) == H.a(((Long) it.next()).longValue())) {
                    z4 = true;
                    break;
                }
            }
            c0730e = z4 ? this.f7853g.f7934b : H.c().getTimeInMillis() == j4 ? this.f7853g.f7935c : this.f7853g.f7933a;
        } else {
            textView.setEnabled(false);
            c0730e = this.f7853g.f7939g;
        }
        c0730e.b(textView);
    }

    public final void e(MaterialCalendarGridView materialCalendarGridView, long j4) {
        if (z.p(j4).equals(this.f7850d)) {
            Calendar b4 = H.b(this.f7850d.f7969d);
            b4.setTimeInMillis(j4);
            int i4 = b4.get(5);
            d((TextView) materialCalendarGridView.getChildAt((materialCalendarGridView.getAdapter2().b() + (i4 - 1)) - materialCalendarGridView.getFirstVisiblePosition()), j4);
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return f7849j;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i4) {
        return i4 / this.f7850d.f7972g;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00cb  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            r6 = this;
            android.content.Context r0 = r9.getContext()
            com.google.android.material.datepicker.f r1 = r6.f7853g
            if (r1 != 0) goto Lf
            com.google.android.material.datepicker.f r1 = new com.google.android.material.datepicker.f
            r1.<init>(r0)
            r6.f7853g = r1
        Lf:
            r0 = r8
            android.widget.TextView r0 = (android.widget.TextView) r0
            r1 = 0
            if (r8 != 0) goto L27
            android.content.Context r8 = r9.getContext()
            android.view.LayoutInflater r8 = android.view.LayoutInflater.from(r8)
            r0 = 2131558567(0x7f0d00a7, float:1.8742453E38)
            android.view.View r8 = r8.inflate(r0, r9, r1)
            r0 = r8
            android.widget.TextView r0 = (android.widget.TextView) r0
        L27:
            int r8 = r6.b()
            int r8 = r7 - r8
            if (r8 < 0) goto Lbc
            com.google.android.material.datepicker.z r9 = r6.f7850d
            int r2 = r9.f7973h
            if (r8 < r2) goto L37
            goto Lbc
        L37:
            r2 = 1
            int r8 = r8 + r2
            r0.setTag(r9)
            android.content.res.Resources r9 = r0.getResources()
            android.content.res.Configuration r9 = r9.getConfiguration()
            java.util.Locale r9 = r9.locale
            java.lang.Integer r3 = java.lang.Integer.valueOf(r8)
            java.lang.Object[] r3 = new java.lang.Object[]{r3}
            java.lang.String r4 = "%d"
            java.lang.String r9 = java.lang.String.format(r9, r4, r3)
            r0.setText(r9)
            com.google.android.material.datepicker.z r9 = r6.f7850d
            java.util.Calendar r9 = r9.f7969d
            java.util.Calendar r9 = com.google.android.material.datepicker.H.b(r9)
            r3 = 5
            r9.set(r3, r8)
            long r8 = r9.getTimeInMillis()
            com.google.android.material.datepicker.z r3 = r6.f7850d
            int r3 = r3.f7971f
            com.google.android.material.datepicker.z r4 = new com.google.android.material.datepicker.z
            java.util.Calendar r5 = com.google.android.material.datepicker.H.c()
            r4.<init>(r5)
            int r4 = r4.f7971f
            java.lang.String r5 = "UTC"
            if (r3 != r4) goto L98
            java.util.Locale r3 = java.util.Locale.getDefault()
            java.lang.String r4 = "MMMEd"
            android.icu.text.DateFormat r3 = android.icu.text.DateFormat.getInstanceForSkeleton(r4, r3)
            android.icu.util.TimeZone r4 = android.icu.util.TimeZone.getTimeZone(r5)
            r3.setTimeZone(r4)
            java.util.Date r4 = new java.util.Date
            r4.<init>(r8)
            java.lang.String r8 = r3.format(r4)
            r0.setContentDescription(r8)
            goto Lb5
        L98:
            java.util.Locale r3 = java.util.Locale.getDefault()
            java.lang.String r4 = "yMMMEd"
            android.icu.text.DateFormat r3 = android.icu.text.DateFormat.getInstanceForSkeleton(r4, r3)
            android.icu.util.TimeZone r4 = android.icu.util.TimeZone.getTimeZone(r5)
            r3.setTimeZone(r4)
            java.util.Date r4 = new java.util.Date
            r4.<init>(r8)
            java.lang.String r8 = r3.format(r4)
            r0.setContentDescription(r8)
        Lb5:
            r0.setVisibility(r1)
            r0.setEnabled(r2)
            goto Lc4
        Lbc:
            r8 = 8
            r0.setVisibility(r8)
            r0.setEnabled(r1)
        Lc4:
            java.lang.Long r7 = r6.getItem(r7)
            if (r7 != 0) goto Lcb
            goto Ld2
        Lcb:
            long r7 = r7.longValue()
            r6.d(r0, r7)
        Ld2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.A.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
