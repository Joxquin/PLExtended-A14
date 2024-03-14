package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import d.C0792a;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* renamed from: k.e0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1134e0 {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f10885a;

    /* renamed from: b  reason: collision with root package name */
    public P0 f10886b;

    /* renamed from: c  reason: collision with root package name */
    public P0 f10887c;

    /* renamed from: d  reason: collision with root package name */
    public P0 f10888d;

    /* renamed from: e  reason: collision with root package name */
    public P0 f10889e;

    /* renamed from: f  reason: collision with root package name */
    public P0 f10890f;

    /* renamed from: g  reason: collision with root package name */
    public P0 f10891g;

    /* renamed from: h  reason: collision with root package name */
    public final C1146k0 f10892h;

    /* renamed from: i  reason: collision with root package name */
    public int f10893i = 0;

    /* renamed from: j  reason: collision with root package name */
    public int f10894j = -1;

    /* renamed from: k  reason: collision with root package name */
    public Typeface f10895k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f10896l;

    public C1134e0(TextView textView) {
        this.f10885a = textView;
        this.f10892h = new C1146k0(textView);
    }

    public static P0 c(Context context, C1117A c1117a, int i4) {
        ColorStateList h4;
        synchronized (c1117a) {
            h4 = c1117a.f10719a.h(i4, context);
        }
        if (h4 != null) {
            P0 p02 = new P0();
            p02.f10818d = true;
            p02.f10815a = h4;
            return p02;
        }
        return null;
    }

    public final void a(Drawable drawable, P0 p02) {
        if (drawable == null || p02 == null) {
            return;
        }
        C1117A.e(drawable, p02, this.f10885a.getDrawableState());
    }

    public final void b() {
        P0 p02 = this.f10886b;
        TextView textView = this.f10885a;
        if (p02 != null || this.f10887c != null || this.f10888d != null || this.f10889e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.f10886b);
            a(compoundDrawables[1], this.f10887c);
            a(compoundDrawables[2], this.f10888d);
            a(compoundDrawables[3], this.f10889e);
        }
        if (this.f10890f == null && this.f10891g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f10890f);
        a(compoundDrawablesRelative[2], this.f10891g);
    }

    public final void d(AttributeSet attributeSet, int i4) {
        String str;
        String str2;
        boolean z4;
        boolean z5;
        int i5;
        Drawable drawable;
        int i6;
        int i7;
        int i8;
        int resourceId;
        TextView textView = this.f10885a;
        Context context = textView.getContext();
        C1117A a4 = C1117A.a();
        int[] iArr = C0792a.f8738h;
        R0 m4 = R0.m(context, attributeSet, iArr, i4);
        Context context2 = textView.getContext();
        TypedArray typedArray = m4.f10822b;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        androidx.core.view.H.b(textView, context2, iArr, attributeSet, typedArray, i4, 0);
        int i9 = m4.i(0, -1);
        if (m4.l(3)) {
            this.f10886b = c(context, a4, m4.i(3, 0));
        }
        if (m4.l(1)) {
            this.f10887c = c(context, a4, m4.i(1, 0));
        }
        if (m4.l(4)) {
            this.f10888d = c(context, a4, m4.i(4, 0));
        }
        if (m4.l(2)) {
            this.f10889e = c(context, a4, m4.i(2, 0));
        }
        if (m4.l(5)) {
            this.f10890f = c(context, a4, m4.i(5, 0));
        }
        if (m4.l(6)) {
            this.f10891g = c(context, a4, m4.i(6, 0));
        }
        m4.n();
        boolean z6 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr2 = C0792a.f8753w;
        if (i9 != -1) {
            R0 r02 = new R0(context, context.obtainStyledAttributes(i9, iArr2));
            if (z6 || !r02.l(14)) {
                z4 = false;
                z5 = false;
            } else {
                z4 = r02.a(14, false);
                z5 = true;
            }
            f(context, r02);
            str = r02.l(15) ? r02.j(15) : null;
            str2 = r02.l(13) ? r02.j(13) : null;
            r02.n();
        } else {
            str = null;
            str2 = null;
            z4 = false;
            z5 = false;
        }
        R0 r03 = new R0(context, context.obtainStyledAttributes(attributeSet, iArr2, i4, 0));
        if (!z6 && r03.l(14)) {
            z4 = r03.a(14, false);
            z5 = true;
        }
        if (r03.l(15)) {
            str = r03.j(15);
        }
        if (r03.l(13)) {
            str2 = r03.j(13);
        }
        String str3 = str2;
        if (r03.l(0) && r03.d(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        f(context, r03);
        r03.n();
        if (!z6 && z5) {
            textView.setAllCaps(z4);
        }
        Typeface typeface = this.f10895k;
        if (typeface != null) {
            if (this.f10894j == -1) {
                textView.setTypeface(typeface, this.f10893i);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (str3 != null) {
            textView.setFontVariationSettings(str3);
        }
        if (str != null) {
            textView.setTextLocales(LocaleList.forLanguageTags(str));
        }
        int[] iArr3 = C0792a.f8739i;
        C1146k0 c1146k0 = this.f10892h;
        Context context3 = c1146k0.f10917i;
        TypedArray obtainStyledAttributes = context3.obtainStyledAttributes(attributeSet, iArr3, i4, 0);
        TextView textView2 = c1146k0.f10916h;
        androidx.core.view.H.b(textView2, textView2.getContext(), iArr3, attributeSet, obtainStyledAttributes, i4, 0);
        if (obtainStyledAttributes.hasValue(5)) {
            c1146k0.f10909a = obtainStyledAttributes.getInt(5, 0);
        }
        float dimension = obtainStyledAttributes.hasValue(4) ? obtainStyledAttributes.getDimension(4, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes.hasValue(2) ? obtainStyledAttributes.getDimension(2, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes.hasValue(1) ? obtainStyledAttributes.getDimension(1, -1.0f) : -1.0f;
        if (obtainStyledAttributes.hasValue(3) && (resourceId = obtainStyledAttributes.getResourceId(3, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            int length = obtainTypedArray.length();
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i10 = 0; i10 < length; i10++) {
                    iArr4[i10] = obtainTypedArray.getDimensionPixelSize(i10, -1);
                }
                c1146k0.f10914f = C1146k0.a(iArr4);
                c1146k0.c();
            }
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes.recycle();
        if (!c1146k0.d()) {
            c1146k0.f10909a = 0;
        } else if (c1146k0.f10909a == 1) {
            if (!c1146k0.f10915g) {
                DisplayMetrics displayMetrics = context3.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    i8 = 2;
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                } else {
                    i8 = 2;
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(i8, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                c1146k0.e(dimension2, dimension3, dimension);
            }
            c1146k0.b();
        }
        Method method = c1.f10879a;
        if (c1146k0.f10909a != 0) {
            int[] iArr5 = c1146k0.f10914f;
            if (iArr5.length > 0) {
                if (textView.getAutoSizeStepGranularity() != -1.0f) {
                    textView.setAutoSizeTextTypeUniformWithConfiguration(Math.round(c1146k0.f10912d), Math.round(c1146k0.f10913e), Math.round(c1146k0.f10911c), 0);
                } else {
                    textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr5, 0);
                }
            }
        }
        R0 r04 = new R0(context, context.obtainStyledAttributes(attributeSet, iArr3));
        int i11 = r04.i(8, -1);
        if (i11 != -1) {
            drawable = a4.b(i11, context);
            i5 = 13;
        } else {
            i5 = 13;
            drawable = null;
        }
        int i12 = r04.i(i5, -1);
        Drawable b4 = i12 != -1 ? a4.b(i12, context) : null;
        int i13 = r04.i(9, -1);
        Drawable b5 = i13 != -1 ? a4.b(i13, context) : null;
        int i14 = r04.i(6, -1);
        Drawable b6 = i14 != -1 ? a4.b(i14, context) : null;
        int i15 = r04.i(10, -1);
        Drawable b7 = i15 != -1 ? a4.b(i15, context) : null;
        int i16 = r04.i(7, -1);
        Drawable b8 = i16 != -1 ? a4.b(i16, context) : null;
        if (b7 != null || b8 != null) {
            Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
            if (b7 == null) {
                b7 = compoundDrawablesRelative[0];
            }
            if (b4 == null) {
                b4 = compoundDrawablesRelative[1];
            }
            if (b8 == null) {
                b8 = compoundDrawablesRelative[2];
            }
            if (b6 == null) {
                b6 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(b7, b4, b8, b6);
        } else if (drawable != null || b4 != null || b5 != null || b6 != null) {
            Drawable[] compoundDrawablesRelative2 = textView.getCompoundDrawablesRelative();
            Drawable drawable2 = compoundDrawablesRelative2[0];
            if (drawable2 == null && compoundDrawablesRelative2[2] == null) {
                Drawable[] compoundDrawables = textView.getCompoundDrawables();
                if (drawable == null) {
                    drawable = compoundDrawables[0];
                }
                if (b4 == null) {
                    b4 = compoundDrawables[1];
                }
                if (b5 == null) {
                    b5 = compoundDrawables[2];
                }
                if (b6 == null) {
                    b6 = compoundDrawables[3];
                }
                textView.setCompoundDrawablesWithIntrinsicBounds(drawable, b4, b5, b6);
            } else {
                if (b4 == null) {
                    b4 = compoundDrawablesRelative2[1];
                }
                Drawable drawable3 = compoundDrawablesRelative2[2];
                if (b6 == null) {
                    b6 = compoundDrawablesRelative2[3];
                }
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable2, b4, drawable3, b6);
            }
        }
        if (r04.l(11)) {
            textView.setCompoundDrawableTintList(r04.b(11));
        }
        if (r04.l(12)) {
            i6 = -1;
            textView.setCompoundDrawableTintMode(C1154o0.b(r04.h(12, -1), null));
        } else {
            i6 = -1;
        }
        int d4 = r04.d(15, i6);
        int d5 = r04.d(18, i6);
        int d6 = r04.d(19, i6);
        r04.n();
        if (d4 != i6) {
            L.f.a(d4);
            textView.setFirstBaselineToTopHeight(d4);
        }
        if (d5 != i6) {
            L.f.a(d5);
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            int i17 = textView.getIncludeFontPadding() ? fontMetricsInt.bottom : fontMetricsInt.descent;
            if (d5 > Math.abs(i17)) {
                textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), d5 - i17);
            }
            i7 = -1;
        } else {
            i7 = i6;
        }
        if (d6 != i7) {
            N.i.a(textView, d6);
        }
    }

    public final void e(int i4, Context context) {
        String j4;
        R0 r02 = new R0(context, context.obtainStyledAttributes(i4, C0792a.f8753w));
        boolean l4 = r02.l(14);
        TextView textView = this.f10885a;
        if (l4) {
            textView.setAllCaps(r02.a(14, false));
        }
        if (r02.l(0) && r02.d(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        f(context, r02);
        if (r02.l(13) && (j4 = r02.j(13)) != null) {
            textView.setFontVariationSettings(j4);
        }
        r02.n();
        Typeface typeface = this.f10895k;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f10893i);
        }
    }

    public final void f(Context context, R0 r02) {
        String j4;
        this.f10893i = r02.h(2, this.f10893i);
        int h4 = r02.h(11, -1);
        this.f10894j = h4;
        if (h4 != -1) {
            this.f10893i = (this.f10893i & 2) | 0;
        }
        if (!r02.l(10) && !r02.l(12)) {
            if (r02.l(1)) {
                this.f10896l = false;
                int h5 = r02.h(1, 1);
                if (h5 == 1) {
                    this.f10895k = Typeface.SANS_SERIF;
                    return;
                } else if (h5 == 2) {
                    this.f10895k = Typeface.SERIF;
                    return;
                } else if (h5 != 3) {
                    return;
                } else {
                    this.f10895k = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f10895k = null;
        int i4 = r02.l(12) ? 12 : 10;
        int i5 = this.f10894j;
        int i6 = this.f10893i;
        if (!context.isRestricted()) {
            try {
                Typeface g4 = r02.g(i4, this.f10893i, new C1130c0(this, i5, i6, new WeakReference(this.f10885a)));
                if (g4 != null) {
                    if (this.f10894j != -1) {
                        this.f10895k = Typeface.create(Typeface.create(g4, 0), this.f10894j, (this.f10893i & 2) != 0);
                    } else {
                        this.f10895k = g4;
                    }
                }
                this.f10896l = this.f10895k == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f10895k != null || (j4 = r02.j(i4)) == null) {
            return;
        }
        if (this.f10894j != -1) {
            this.f10895k = Typeface.create(Typeface.create(j4, 0), this.f10894j, (this.f10893i & 2) != 0);
        } else {
            this.f10895k = Typeface.create(j4, this.f10893i);
        }
    }
}
