package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.android.systemui.shared.R;
import i2.C0980a;
/* renamed from: com.google.android.material.datepicker.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0731f {

    /* renamed from: a  reason: collision with root package name */
    public final C0730e f7933a;

    /* renamed from: b  reason: collision with root package name */
    public final C0730e f7934b;

    /* renamed from: c  reason: collision with root package name */
    public final C0730e f7935c;

    /* renamed from: d  reason: collision with root package name */
    public final C0730e f7936d;

    /* renamed from: e  reason: collision with root package name */
    public final C0730e f7937e;

    /* renamed from: f  reason: collision with root package name */
    public final C0730e f7938f;

    /* renamed from: g  reason: collision with root package name */
    public final C0730e f7939g;

    /* renamed from: h  reason: collision with root package name */
    public final Paint f7940h;

    public C0731f(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(A2.c.b(R.attr.materialCalendarStyle, context, MaterialCalendar.class.getCanonicalName()).data, C0980a.f9639o);
        this.f7933a = C0730e.a(obtainStyledAttributes.getResourceId(3, 0), context);
        this.f7939g = C0730e.a(obtainStyledAttributes.getResourceId(1, 0), context);
        this.f7934b = C0730e.a(obtainStyledAttributes.getResourceId(2, 0), context);
        this.f7935c = C0730e.a(obtainStyledAttributes.getResourceId(4, 0), context);
        ColorStateList a4 = A2.d.a(context, obtainStyledAttributes, 6);
        this.f7936d = C0730e.a(obtainStyledAttributes.getResourceId(8, 0), context);
        this.f7937e = C0730e.a(obtainStyledAttributes.getResourceId(7, 0), context);
        this.f7938f = C0730e.a(obtainStyledAttributes.getResourceId(9, 0), context);
        Paint paint = new Paint();
        this.f7940h = paint;
        paint.setColor(a4.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
