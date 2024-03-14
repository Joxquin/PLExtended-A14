package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.TextView;
import androidx.core.view.C0186x;
import i2.C0980a;
import java.util.WeakHashMap;
/* renamed from: com.google.android.material.datepicker.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0730e {

    /* renamed from: a  reason: collision with root package name */
    public final Rect f7927a;

    /* renamed from: b  reason: collision with root package name */
    public final ColorStateList f7928b;

    /* renamed from: c  reason: collision with root package name */
    public final ColorStateList f7929c;

    /* renamed from: d  reason: collision with root package name */
    public final ColorStateList f7930d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7931e;

    /* renamed from: f  reason: collision with root package name */
    public final C2.n f7932f;

    public C0730e(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i4, C2.n nVar, Rect rect) {
        L.f.a(rect.left);
        L.f.a(rect.top);
        L.f.a(rect.right);
        L.f.a(rect.bottom);
        this.f7927a = rect;
        this.f7928b = colorStateList2;
        this.f7929c = colorStateList;
        this.f7930d = colorStateList3;
        this.f7931e = i4;
        this.f7932f = nVar;
    }

    public static C0730e a(int i4, Context context) {
        if (i4 != 0) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i4, C0980a.f9640p);
            Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(0, 0), obtainStyledAttributes.getDimensionPixelOffset(2, 0), obtainStyledAttributes.getDimensionPixelOffset(1, 0), obtainStyledAttributes.getDimensionPixelOffset(3, 0));
            ColorStateList a4 = A2.d.a(context, obtainStyledAttributes, 4);
            ColorStateList a5 = A2.d.a(context, obtainStyledAttributes, 9);
            ColorStateList a6 = A2.d.a(context, obtainStyledAttributes, 7);
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, 0);
            C2.n nVar = new C2.n(C2.n.a(context, obtainStyledAttributes.getResourceId(5, 0), obtainStyledAttributes.getResourceId(6, 0), new C2.a(0)));
            obtainStyledAttributes.recycle();
            return new C0730e(a4, a5, a6, dimensionPixelSize, nVar, rect);
        }
        throw new IllegalArgumentException("Cannot create a CalendarItemStyle with a styleResId of 0");
    }

    public final void b(TextView textView) {
        C2.i iVar = new C2.i();
        C2.i iVar2 = new C2.i();
        C2.n nVar = this.f7932f;
        iVar.b(nVar);
        iVar2.b(nVar);
        iVar.l(this.f7929c);
        iVar.f160d.f147k = this.f7931e;
        iVar.invalidateSelf();
        C2.h hVar = iVar.f160d;
        ColorStateList colorStateList = hVar.f140d;
        ColorStateList colorStateList2 = this.f7930d;
        if (colorStateList != colorStateList2) {
            hVar.f140d = colorStateList2;
            iVar.onStateChange(iVar.getState());
        }
        ColorStateList colorStateList3 = this.f7928b;
        textView.setTextColor(colorStateList3);
        RippleDrawable rippleDrawable = new RippleDrawable(colorStateList3.withAlpha(30), iVar, iVar2);
        Rect rect = this.f7927a;
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom);
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        C0186x.m(textView, insetDrawable);
    }
}
