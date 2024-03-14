package A2;

import D.n;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import android.util.TypedValue;
import i2.C0980a;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final ColorStateList f90a;

    /* renamed from: b  reason: collision with root package name */
    public final String f91b;

    /* renamed from: c  reason: collision with root package name */
    public final int f92c;

    /* renamed from: d  reason: collision with root package name */
    public final int f93d;

    /* renamed from: e  reason: collision with root package name */
    public final float f94e;

    /* renamed from: f  reason: collision with root package name */
    public final float f95f;

    /* renamed from: g  reason: collision with root package name */
    public final float f96g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f97h;

    /* renamed from: i  reason: collision with root package name */
    public final float f98i;

    /* renamed from: j  reason: collision with root package name */
    public ColorStateList f99j;

    /* renamed from: k  reason: collision with root package name */
    public float f100k;

    /* renamed from: l  reason: collision with root package name */
    public final int f101l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f102m = false;

    /* renamed from: n  reason: collision with root package name */
    public Typeface f103n;

    public g(int i4, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i4, C0980a.f9621A);
        this.f100k = obtainStyledAttributes.getDimension(0, 0.0f);
        this.f99j = d.a(context, obtainStyledAttributes, 3);
        d.a(context, obtainStyledAttributes, 4);
        d.a(context, obtainStyledAttributes, 5);
        this.f92c = obtainStyledAttributes.getInt(2, 0);
        this.f93d = obtainStyledAttributes.getInt(1, 1);
        int i5 = obtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.f101l = obtainStyledAttributes.getResourceId(i5, 0);
        this.f91b = obtainStyledAttributes.getString(i5);
        obtainStyledAttributes.getBoolean(14, false);
        this.f90a = d.a(context, obtainStyledAttributes, 6);
        this.f94e = obtainStyledAttributes.getFloat(7, 0.0f);
        this.f95f = obtainStyledAttributes.getFloat(8, 0.0f);
        this.f96g = obtainStyledAttributes.getFloat(9, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i4, C0980a.f9644t);
        this.f97h = obtainStyledAttributes2.hasValue(0);
        this.f98i = obtainStyledAttributes2.getFloat(0, 0.0f);
        obtainStyledAttributes2.recycle();
    }

    public final void a() {
        String str;
        Typeface typeface = this.f103n;
        int i4 = this.f92c;
        if (typeface == null && (str = this.f91b) != null) {
            this.f103n = Typeface.create(str, i4);
        }
        if (this.f103n == null) {
            int i5 = this.f93d;
            if (i5 == 1) {
                this.f103n = Typeface.SANS_SERIF;
            } else if (i5 == 2) {
                this.f103n = Typeface.SERIF;
            } else if (i5 != 3) {
                this.f103n = Typeface.DEFAULT;
            } else {
                this.f103n = Typeface.MONOSPACE;
            }
            this.f103n = Typeface.create(this.f103n, i4);
        }
    }

    public final void b(Context context, h hVar) {
        if (c(context)) {
            getFont(context);
        } else {
            a();
        }
        int i4 = this.f101l;
        if (i4 == 0) {
            this.f102m = true;
        }
        if (this.f102m) {
            hVar.b(this.f103n, true);
            return;
        }
        try {
            e eVar = new e(this, hVar);
            ThreadLocal threadLocal = n.f278a;
            if (context.isRestricted()) {
                eVar.a(-4);
            } else {
                n.b(context, i4, new TypedValue(), 0, eVar, false, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.f102m = true;
            hVar.a(1);
        } catch (Exception e4) {
            Log.d("TextAppearance", "Error loading font " + this.f91b, e4);
            this.f102m = true;
            hVar.a(-3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001f A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0021 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(android.content.Context r8) {
        /*
            r7 = this;
            int r1 = r7.f101l
            if (r1 == 0) goto L1c
            java.lang.ThreadLocal r7 = D.n.f278a
            boolean r7 = r8.isRestricted()
            if (r7 == 0) goto Ld
            goto L1c
        Ld:
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 1
            r0 = r8
            android.graphics.Typeface r7 = D.n.b(r0, r1, r2, r3, r4, r5, r6)
            goto L1d
        L1c:
            r7 = 0
        L1d:
            if (r7 == 0) goto L21
            r7 = 1
            goto L22
        L21:
            r7 = 0
        L22:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: A2.g.c(android.content.Context):boolean");
    }

    public final void d(Context context, TextPaint textPaint, h hVar) {
        e(context, textPaint, hVar);
        ColorStateList colorStateList = this.f99j;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        ColorStateList colorStateList2 = this.f90a;
        textPaint.setShadowLayer(this.f96g, this.f94e, this.f95f, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public final void e(Context context, TextPaint textPaint, h hVar) {
        if (c(context)) {
            f(context, textPaint, getFont(context));
            return;
        }
        a();
        f(context, textPaint, this.f103n);
        b(context, new f(this, context, textPaint, hVar));
    }

    public final void f(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface a4 = i.a(context.getResources().getConfiguration(), typeface);
        if (a4 != null) {
            typeface = a4;
        }
        textPaint.setTypeface(typeface);
        int i4 = (~typeface.getStyle()) & this.f92c;
        textPaint.setFakeBoldText((i4 & 1) != 0);
        textPaint.setTextSkewX((i4 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f100k);
        if (this.f97h) {
            textPaint.setLetterSpacing(this.f98i);
        }
    }

    public Typeface getFont(Context context) {
        if (this.f102m) {
            return this.f103n;
        }
        if (!context.isRestricted()) {
            try {
                Typeface a4 = n.a(this.f101l, context);
                this.f103n = a4;
                if (a4 != null) {
                    this.f103n = Typeface.create(a4, this.f92c);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e4) {
                Log.d("TextAppearance", "Error loading font " + this.f91b, e4);
            }
        }
        a();
        this.f102m = true;
        return this.f103n;
    }
}
