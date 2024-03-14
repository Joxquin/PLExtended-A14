package com.google.android.material.internal;

import A2.b;
import A2.i;
import K.g;
import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import androidx.core.view.C0186x;
import androidx.core.view.C0187y;
import androidx.core.view.J;
import j2.C1114a;
import java.util.WeakHashMap;
import w.f;
import x2.C1466d;
import x2.C1475m;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: A  reason: collision with root package name */
    public Typeface f7993A;

    /* renamed from: B  reason: collision with root package name */
    public Typeface f7994B;

    /* renamed from: C  reason: collision with root package name */
    public Typeface f7995C;

    /* renamed from: D  reason: collision with root package name */
    public b f7996D;

    /* renamed from: E  reason: collision with root package name */
    public b f7997E;

    /* renamed from: G  reason: collision with root package name */
    public CharSequence f7999G;

    /* renamed from: H  reason: collision with root package name */
    public CharSequence f8000H;

    /* renamed from: I  reason: collision with root package name */
    public boolean f8001I;

    /* renamed from: K  reason: collision with root package name */
    public Bitmap f8003K;

    /* renamed from: L  reason: collision with root package name */
    public float f8004L;

    /* renamed from: M  reason: collision with root package name */
    public float f8005M;

    /* renamed from: N  reason: collision with root package name */
    public float f8006N;

    /* renamed from: O  reason: collision with root package name */
    public float f8007O;

    /* renamed from: P  reason: collision with root package name */
    public float f8008P;

    /* renamed from: Q  reason: collision with root package name */
    public int f8009Q;

    /* renamed from: R  reason: collision with root package name */
    public int[] f8010R;

    /* renamed from: S  reason: collision with root package name */
    public boolean f8011S;

    /* renamed from: T  reason: collision with root package name */
    public final TextPaint f8012T;

    /* renamed from: U  reason: collision with root package name */
    public final TextPaint f8013U;

    /* renamed from: V  reason: collision with root package name */
    public TimeInterpolator f8014V;

    /* renamed from: W  reason: collision with root package name */
    public TimeInterpolator f8015W;

    /* renamed from: X  reason: collision with root package name */
    public float f8016X;

    /* renamed from: Y  reason: collision with root package name */
    public float f8017Y;

    /* renamed from: Z  reason: collision with root package name */
    public float f8018Z;

    /* renamed from: a  reason: collision with root package name */
    public final View f8019a;

    /* renamed from: a0  reason: collision with root package name */
    public ColorStateList f8020a0;

    /* renamed from: b  reason: collision with root package name */
    public float f8021b;

    /* renamed from: b0  reason: collision with root package name */
    public float f8022b0;

    /* renamed from: c  reason: collision with root package name */
    public boolean f8023c;

    /* renamed from: c0  reason: collision with root package name */
    public float f8024c0;

    /* renamed from: d  reason: collision with root package name */
    public float f8025d;

    /* renamed from: d0  reason: collision with root package name */
    public float f8026d0;

    /* renamed from: e  reason: collision with root package name */
    public float f8027e;

    /* renamed from: e0  reason: collision with root package name */
    public ColorStateList f8028e0;

    /* renamed from: f  reason: collision with root package name */
    public int f8029f;

    /* renamed from: f0  reason: collision with root package name */
    public float f8030f0;

    /* renamed from: g  reason: collision with root package name */
    public final Rect f8031g;

    /* renamed from: g0  reason: collision with root package name */
    public float f8032g0;

    /* renamed from: h  reason: collision with root package name */
    public final Rect f8033h;

    /* renamed from: h0  reason: collision with root package name */
    public float f8034h0;

    /* renamed from: i  reason: collision with root package name */
    public final RectF f8035i;

    /* renamed from: i0  reason: collision with root package name */
    public StaticLayout f8036i0;

    /* renamed from: j0  reason: collision with root package name */
    public float f8038j0;

    /* renamed from: k0  reason: collision with root package name */
    public float f8040k0;

    /* renamed from: l0  reason: collision with root package name */
    public float f8042l0;

    /* renamed from: m0  reason: collision with root package name */
    public CharSequence f8044m0;

    /* renamed from: n  reason: collision with root package name */
    public ColorStateList f8045n;

    /* renamed from: o  reason: collision with root package name */
    public ColorStateList f8047o;

    /* renamed from: p  reason: collision with root package name */
    public int f8049p;

    /* renamed from: q  reason: collision with root package name */
    public float f8051q;

    /* renamed from: r  reason: collision with root package name */
    public float f8052r;

    /* renamed from: s  reason: collision with root package name */
    public float f8053s;

    /* renamed from: t  reason: collision with root package name */
    public float f8054t;

    /* renamed from: u  reason: collision with root package name */
    public float f8055u;

    /* renamed from: v  reason: collision with root package name */
    public float f8056v;

    /* renamed from: w  reason: collision with root package name */
    public Typeface f8057w;

    /* renamed from: x  reason: collision with root package name */
    public Typeface f8058x;

    /* renamed from: y  reason: collision with root package name */
    public Typeface f8059y;

    /* renamed from: z  reason: collision with root package name */
    public Typeface f8060z;

    /* renamed from: j  reason: collision with root package name */
    public int f8037j = 16;

    /* renamed from: k  reason: collision with root package name */
    public int f8039k = 16;

    /* renamed from: l  reason: collision with root package name */
    public float f8041l = 15.0f;

    /* renamed from: m  reason: collision with root package name */
    public float f8043m = 15.0f;

    /* renamed from: F  reason: collision with root package name */
    public TextUtils.TruncateAt f7998F = TextUtils.TruncateAt.END;

    /* renamed from: J  reason: collision with root package name */
    public boolean f8002J = true;

    /* renamed from: n0  reason: collision with root package name */
    public int f8046n0 = 1;

    /* renamed from: o0  reason: collision with root package name */
    public final float f8048o0 = 1.0f;

    /* renamed from: p0  reason: collision with root package name */
    public final int f8050p0 = 1;

    public a(View view) {
        this.f8019a = view;
        TextPaint textPaint = new TextPaint(129);
        this.f8012T = textPaint;
        this.f8013U = new TextPaint(textPaint);
        this.f8033h = new Rect();
        this.f8031g = new Rect();
        this.f8035i = new RectF();
        float f4 = this.f8025d;
        this.f8027e = f.a(1.0f, f4, 0.5f, f4);
        h(view.getContext().getResources().getConfiguration());
    }

    public static int a(int i4, int i5, float f4) {
        float f5 = 1.0f - f4;
        return Color.argb(Math.round((Color.alpha(i5) * f4) + (Color.alpha(i4) * f5)), Math.round((Color.red(i5) * f4) + (Color.red(i4) * f5)), Math.round((Color.green(i5) * f4) + (Color.green(i4) * f5)), Math.round((Color.blue(i5) * f4) + (Color.blue(i4) * f5)));
    }

    public static float g(float f4, float f5, float f6, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f6 = timeInterpolator.getInterpolation(f6);
        }
        TimeInterpolator timeInterpolator2 = C1114a.f10700a;
        return f.a(f5, f4, f6, f4);
    }

    public final boolean b(CharSequence charSequence) {
        WeakHashMap weakHashMap = J.f3079a;
        boolean z4 = C0187y.c(this.f8019a) == 1;
        if (this.f8002J) {
            return (z4 ? g.f877d : g.f876c).b(charSequence, charSequence.length());
        }
        return z4;
    }

    public final void c(float f4, boolean z4) {
        float f5;
        float f6;
        Typeface typeface;
        boolean z5;
        StaticLayout staticLayout;
        Layout.Alignment alignment;
        if (this.f7999G == null) {
            return;
        }
        float width = this.f8033h.width();
        float width2 = this.f8031g.width();
        if (Math.abs(f4 - 1.0f) < 1.0E-5f) {
            f5 = this.f8043m;
            f6 = this.f8030f0;
            this.f8004L = 1.0f;
            typeface = this.f8057w;
        } else {
            float f7 = this.f8041l;
            float f8 = this.f8032g0;
            Typeface typeface2 = this.f8060z;
            if (Math.abs(f4 - 0.0f) < 1.0E-5f) {
                this.f8004L = 1.0f;
            } else {
                this.f8004L = g(this.f8041l, this.f8043m, f4, this.f8015W) / this.f8041l;
            }
            float f9 = this.f8043m / this.f8041l;
            width = (!z4 && width2 * f9 > width) ? Math.min(width / f9, width2) : width2;
            f5 = f7;
            f6 = f8;
            typeface = typeface2;
        }
        int i4 = (width > 0.0f ? 1 : (width == 0.0f ? 0 : -1));
        TextPaint textPaint = this.f8012T;
        if (i4 > 0) {
            boolean z6 = this.f8005M != f5;
            boolean z7 = this.f8034h0 != f6;
            boolean z8 = this.f7995C != typeface;
            StaticLayout staticLayout2 = this.f8036i0;
            boolean z9 = z6 || z7 || (staticLayout2 != null && (width > ((float) staticLayout2.getWidth()) ? 1 : (width == ((float) staticLayout2.getWidth()) ? 0 : -1)) != 0) || z8 || this.f8011S;
            this.f8005M = f5;
            this.f8034h0 = f6;
            this.f7995C = typeface;
            this.f8011S = false;
            textPaint.setLinearText(this.f8004L != 1.0f);
            z5 = z9;
        } else {
            z5 = false;
        }
        if (this.f8000H == null || z5) {
            textPaint.setTextSize(this.f8005M);
            textPaint.setTypeface(this.f7995C);
            textPaint.setLetterSpacing(this.f8034h0);
            boolean b4 = b(this.f7999G);
            this.f8001I = b4;
            int i5 = this.f8046n0;
            if (!(i5 > 1 && (!b4 || this.f8023c))) {
                i5 = 1;
            }
            try {
                if (i5 == 1) {
                    alignment = Layout.Alignment.ALIGN_NORMAL;
                } else {
                    int absoluteGravity = Gravity.getAbsoluteGravity(this.f8037j, b4 ? 1 : 0) & 7;
                    alignment = absoluteGravity != 1 ? absoluteGravity != 5 ? this.f8001I ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : this.f8001I ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER;
                }
                C1475m c1475m = new C1475m(this.f7999G, textPaint, (int) width);
                c1475m.f12874l = this.f7998F;
                c1475m.f12873k = b4;
                c1475m.f12867e = alignment;
                c1475m.f12872j = false;
                c1475m.f12868f = i5;
                float f10 = this.f8048o0;
                c1475m.f12869g = 0.0f;
                c1475m.f12870h = f10;
                c1475m.f12871i = this.f8050p0;
                staticLayout = c1475m.a();
            } catch (StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException e4) {
                Log.e("CollapsingTextHelper", e4.getCause().getMessage(), e4);
                staticLayout = null;
            }
            staticLayout.getClass();
            this.f8036i0 = staticLayout;
            this.f8000H = staticLayout.getText();
        }
    }

    public final void d(Canvas canvas) {
        int save = canvas.save();
        if (this.f8000H != null) {
            RectF rectF = this.f8035i;
            if (rectF.width() <= 0.0f || rectF.height() <= 0.0f) {
                return;
            }
            TextPaint textPaint = this.f8012T;
            textPaint.setTextSize(this.f8005M);
            float f4 = this.f8055u;
            float f5 = this.f8056v;
            float f6 = this.f8004L;
            if (f6 != 1.0f && !this.f8023c) {
                canvas.scale(f6, f6, f4, f5);
            }
            boolean z4 = true;
            if (this.f8046n0 <= 1 || (this.f8001I && !this.f8023c)) {
                z4 = false;
            }
            if (!z4 || (this.f8023c && this.f8021b <= this.f8027e)) {
                canvas.translate(f4, f5);
                this.f8036i0.draw(canvas);
            } else {
                int alpha = textPaint.getAlpha();
                canvas.translate(this.f8055u - this.f8036i0.getLineStart(0), f5);
                float f7 = alpha;
                textPaint.setAlpha((int) (this.f8042l0 * f7));
                float f8 = this.f8006N;
                float f9 = this.f8007O;
                float f10 = this.f8008P;
                int i4 = this.f8009Q;
                textPaint.setShadowLayer(f8, f9, f10, E.a.k(i4, (Color.alpha(i4) * textPaint.getAlpha()) / 255));
                this.f8036i0.draw(canvas);
                textPaint.setAlpha((int) (this.f8040k0 * f7));
                float f11 = this.f8006N;
                float f12 = this.f8007O;
                float f13 = this.f8008P;
                int i5 = this.f8009Q;
                textPaint.setShadowLayer(f11, f12, f13, E.a.k(i5, (Color.alpha(i5) * textPaint.getAlpha()) / 255));
                int lineBaseline = this.f8036i0.getLineBaseline(0);
                CharSequence charSequence = this.f8044m0;
                float f14 = lineBaseline;
                canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f14, textPaint);
                textPaint.setShadowLayer(this.f8006N, this.f8007O, this.f8008P, this.f8009Q);
                if (!this.f8023c) {
                    String trim = this.f8044m0.toString().trim();
                    if (trim.endsWith("…")) {
                        trim = trim.substring(0, trim.length() - 1);
                    }
                    String str = trim;
                    textPaint.setAlpha(alpha);
                    canvas.drawText(str, 0, Math.min(this.f8036i0.getLineEnd(0), str.length()), 0.0f, f14, (Paint) textPaint);
                }
            }
            canvas.restoreToCount(save);
        }
    }

    public final float e() {
        TextPaint textPaint = this.f8013U;
        textPaint.setTextSize(this.f8043m);
        textPaint.setTypeface(this.f8057w);
        textPaint.setLetterSpacing(this.f8030f0);
        return -textPaint.ascent();
    }

    public final int f(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f8010R;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    public final void h(Configuration configuration) {
        Typeface typeface = this.f8059y;
        if (typeface != null) {
            this.f8058x = i.a(configuration, typeface);
        }
        Typeface typeface2 = this.f7994B;
        if (typeface2 != null) {
            this.f7993A = i.a(configuration, typeface2);
        }
        Typeface typeface3 = this.f8058x;
        if (typeface3 == null) {
            typeface3 = this.f8059y;
        }
        this.f8057w = typeface3;
        Typeface typeface4 = this.f7993A;
        if (typeface4 == null) {
            typeface4 = this.f7994B;
        }
        this.f8060z = typeface4;
        i(true);
    }

    public final void i(boolean z4) {
        StaticLayout staticLayout;
        float measureText;
        float f4;
        StaticLayout staticLayout2;
        View view = this.f8019a;
        if ((view.getHeight() <= 0 || view.getWidth() <= 0) && !z4) {
            return;
        }
        c(1.0f, z4);
        CharSequence charSequence = this.f8000H;
        TextPaint textPaint = this.f8012T;
        if (charSequence != null && (staticLayout2 = this.f8036i0) != null) {
            this.f8044m0 = TextUtils.ellipsize(charSequence, textPaint, staticLayout2.getWidth(), this.f7998F);
        }
        CharSequence charSequence2 = this.f8044m0;
        if (charSequence2 != null) {
            this.f8038j0 = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.f8038j0 = 0.0f;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(this.f8039k, this.f8001I ? 1 : 0);
        int i4 = absoluteGravity & 112;
        Rect rect = this.f8033h;
        if (i4 == 48) {
            this.f8052r = rect.top;
        } else if (i4 != 80) {
            this.f8052r = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.f8052r = textPaint.ascent() + rect.bottom;
        }
        int i5 = absoluteGravity & 8388615;
        if (i5 == 1) {
            this.f8054t = rect.centerX() - (this.f8038j0 / 2.0f);
        } else if (i5 != 5) {
            this.f8054t = rect.left;
        } else {
            this.f8054t = rect.right - this.f8038j0;
        }
        c(0.0f, z4);
        float height = this.f8036i0 != null ? staticLayout.getHeight() : 0.0f;
        StaticLayout staticLayout3 = this.f8036i0;
        if (staticLayout3 == null || this.f8046n0 <= 1) {
            CharSequence charSequence3 = this.f8000H;
            measureText = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        } else {
            measureText = staticLayout3.getWidth();
        }
        StaticLayout staticLayout4 = this.f8036i0;
        this.f8049p = staticLayout4 != null ? staticLayout4.getLineCount() : 0;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(this.f8037j, this.f8001I ? 1 : 0);
        int i6 = absoluteGravity2 & 112;
        Rect rect2 = this.f8031g;
        if (i6 == 48) {
            this.f8051q = rect2.top;
        } else if (i6 != 80) {
            this.f8051q = rect2.centerY() - (height / 2.0f);
        } else {
            this.f8051q = textPaint.descent() + (rect2.bottom - height);
        }
        int i7 = absoluteGravity2 & 8388615;
        if (i7 == 1) {
            this.f8053s = rect2.centerX() - (measureText / 2.0f);
        } else if (i7 != 5) {
            this.f8053s = rect2.left;
        } else {
            this.f8053s = rect2.right - measureText;
        }
        Bitmap bitmap = this.f8003K;
        if (bitmap != null) {
            bitmap.recycle();
            this.f8003K = null;
        }
        p(this.f8021b);
        float f5 = this.f8021b;
        boolean z5 = this.f8023c;
        RectF rectF = this.f8035i;
        if (z5) {
            if (f5 < this.f8027e) {
                rect = rect2;
            }
            rectF.set(rect);
        } else {
            rectF.left = g(rect2.left, rect.left, f5, this.f8014V);
            rectF.top = g(this.f8051q, this.f8052r, f5, this.f8014V);
            rectF.right = g(rect2.right, rect.right, f5, this.f8014V);
            rectF.bottom = g(rect2.bottom, rect.bottom, f5, this.f8014V);
        }
        if (!this.f8023c) {
            this.f8055u = g(this.f8053s, this.f8054t, f5, this.f8014V);
            this.f8056v = g(this.f8051q, this.f8052r, f5, this.f8014V);
            p(f5);
            f4 = f5;
        } else if (f5 < this.f8027e) {
            this.f8055u = this.f8053s;
            this.f8056v = this.f8051q;
            p(0.0f);
            f4 = 0.0f;
        } else {
            this.f8055u = this.f8054t;
            this.f8056v = this.f8052r - Math.max(0, this.f8029f);
            p(1.0f);
            f4 = 1.0f;
        }
        U.b bVar = C1114a.f10701b;
        this.f8040k0 = 1.0f - g(0.0f, 1.0f, 1.0f - f5, bVar);
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.i(view);
        this.f8042l0 = g(1.0f, 0.0f, f5, bVar);
        C0186x.i(view);
        ColorStateList colorStateList = this.f8047o;
        ColorStateList colorStateList2 = this.f8045n;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(a(f(colorStateList2), f(this.f8047o), f4));
        } else {
            textPaint.setColor(f(colorStateList));
        }
        float f6 = this.f8030f0;
        float f7 = this.f8032g0;
        if (f6 != f7) {
            textPaint.setLetterSpacing(g(f7, f6, f5, bVar));
        } else {
            textPaint.setLetterSpacing(f6);
        }
        this.f8006N = g(this.f8022b0, this.f8016X, f5, null);
        this.f8007O = g(this.f8024c0, this.f8017Y, f5, null);
        this.f8008P = g(this.f8026d0, this.f8018Z, f5, null);
        int a4 = a(f(this.f8028e0), f(this.f8020a0), f5);
        this.f8009Q = a4;
        textPaint.setShadowLayer(this.f8006N, this.f8007O, this.f8008P, a4);
        if (this.f8023c) {
            int alpha = textPaint.getAlpha();
            float f8 = this.f8027e;
            textPaint.setAlpha((int) ((f5 <= f8 ? C1114a.a(1.0f, 0.0f, this.f8025d, f8, f5) : C1114a.a(0.0f, 1.0f, f8, 1.0f, f5)) * alpha));
        }
        C0186x.i(view);
    }

    public final void j(int i4) {
        View view = this.f8019a;
        A2.g gVar = new A2.g(i4, view.getContext());
        ColorStateList colorStateList = gVar.f99j;
        if (colorStateList != null) {
            this.f8047o = colorStateList;
        }
        float f4 = gVar.f100k;
        if (f4 != 0.0f) {
            this.f8043m = f4;
        }
        ColorStateList colorStateList2 = gVar.f90a;
        if (colorStateList2 != null) {
            this.f8020a0 = colorStateList2;
        }
        this.f8017Y = gVar.f94e;
        this.f8018Z = gVar.f95f;
        this.f8016X = gVar.f96g;
        this.f8030f0 = gVar.f98i;
        b bVar = this.f7997E;
        if (bVar != null) {
            bVar.f83c = true;
        }
        C1466d c1466d = new C1466d(this, 0);
        gVar.a();
        this.f7997E = new b(c1466d, gVar.f103n);
        gVar.b(view.getContext(), this.f7997E);
        i(false);
    }

    public final void k(ColorStateList colorStateList) {
        if (this.f8047o != colorStateList) {
            this.f8047o = colorStateList;
            i(false);
        }
    }

    public final boolean l(Typeface typeface) {
        b bVar = this.f7997E;
        if (bVar != null) {
            bVar.f83c = true;
        }
        if (this.f8059y != typeface) {
            this.f8059y = typeface;
            Typeface a4 = i.a(this.f8019a.getContext().getResources().getConfiguration(), typeface);
            this.f8058x = a4;
            if (a4 == null) {
                a4 = this.f8059y;
            }
            this.f8057w = a4;
            return true;
        }
        return false;
    }

    public final void m(int i4) {
        View view = this.f8019a;
        A2.g gVar = new A2.g(i4, view.getContext());
        ColorStateList colorStateList = gVar.f99j;
        if (colorStateList != null) {
            this.f8045n = colorStateList;
        }
        float f4 = gVar.f100k;
        if (f4 != 0.0f) {
            this.f8041l = f4;
        }
        ColorStateList colorStateList2 = gVar.f90a;
        if (colorStateList2 != null) {
            this.f8028e0 = colorStateList2;
        }
        this.f8024c0 = gVar.f94e;
        this.f8026d0 = gVar.f95f;
        this.f8022b0 = gVar.f96g;
        this.f8032g0 = gVar.f98i;
        b bVar = this.f7996D;
        if (bVar != null) {
            bVar.f83c = true;
        }
        C1466d c1466d = new C1466d(this, 1);
        gVar.a();
        this.f7996D = new b(c1466d, gVar.f103n);
        gVar.b(view.getContext(), this.f7996D);
        i(false);
    }

    public final boolean n(Typeface typeface) {
        b bVar = this.f7996D;
        if (bVar != null) {
            bVar.f83c = true;
        }
        if (this.f7994B != typeface) {
            this.f7994B = typeface;
            Typeface a4 = i.a(this.f8019a.getContext().getResources().getConfiguration(), typeface);
            this.f7993A = a4;
            if (a4 == null) {
                a4 = this.f7994B;
            }
            this.f8060z = a4;
            return true;
        }
        return false;
    }

    public final void o(float f4) {
        float f5;
        float a4 = H.a.a(f4);
        if (a4 != this.f8021b) {
            this.f8021b = a4;
            boolean z4 = this.f8023c;
            RectF rectF = this.f8035i;
            Rect rect = this.f8033h;
            Rect rect2 = this.f8031g;
            if (z4) {
                if (a4 < this.f8027e) {
                    rect = rect2;
                }
                rectF.set(rect);
            } else {
                rectF.left = g(rect2.left, rect.left, a4, this.f8014V);
                rectF.top = g(this.f8051q, this.f8052r, a4, this.f8014V);
                rectF.right = g(rect2.right, rect.right, a4, this.f8014V);
                rectF.bottom = g(rect2.bottom, rect.bottom, a4, this.f8014V);
            }
            if (!this.f8023c) {
                this.f8055u = g(this.f8053s, this.f8054t, a4, this.f8014V);
                this.f8056v = g(this.f8051q, this.f8052r, a4, this.f8014V);
                p(a4);
                f5 = a4;
            } else if (a4 < this.f8027e) {
                this.f8055u = this.f8053s;
                this.f8056v = this.f8051q;
                p(0.0f);
                f5 = 0.0f;
            } else {
                this.f8055u = this.f8054t;
                this.f8056v = this.f8052r - Math.max(0, this.f8029f);
                p(1.0f);
                f5 = 1.0f;
            }
            U.b bVar = C1114a.f10701b;
            this.f8040k0 = 1.0f - g(0.0f, 1.0f, 1.0f - a4, bVar);
            WeakHashMap weakHashMap = J.f3079a;
            View view = this.f8019a;
            C0186x.i(view);
            this.f8042l0 = g(1.0f, 0.0f, a4, bVar);
            C0186x.i(view);
            ColorStateList colorStateList = this.f8047o;
            ColorStateList colorStateList2 = this.f8045n;
            TextPaint textPaint = this.f8012T;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(a(f(colorStateList2), f(this.f8047o), f5));
            } else {
                textPaint.setColor(f(colorStateList));
            }
            float f6 = this.f8030f0;
            float f7 = this.f8032g0;
            if (f6 != f7) {
                textPaint.setLetterSpacing(g(f7, f6, a4, bVar));
            } else {
                textPaint.setLetterSpacing(f6);
            }
            this.f8006N = g(this.f8022b0, this.f8016X, a4, null);
            this.f8007O = g(this.f8024c0, this.f8017Y, a4, null);
            this.f8008P = g(this.f8026d0, this.f8018Z, a4, null);
            int a5 = a(f(this.f8028e0), f(this.f8020a0), a4);
            this.f8009Q = a5;
            textPaint.setShadowLayer(this.f8006N, this.f8007O, this.f8008P, a5);
            if (this.f8023c) {
                int alpha = textPaint.getAlpha();
                float f8 = this.f8027e;
                textPaint.setAlpha((int) ((a4 <= f8 ? C1114a.a(1.0f, 0.0f, this.f8025d, f8, a4) : C1114a.a(0.0f, 1.0f, f8, 1.0f, a4)) * alpha));
            }
            C0186x.i(view);
        }
    }

    public final void p(float f4) {
        c(f4, false);
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.i(this.f8019a);
    }

    public final boolean q(int[] iArr) {
        ColorStateList colorStateList;
        this.f8010R = iArr;
        ColorStateList colorStateList2 = this.f8047o;
        if ((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f8045n) != null && colorStateList.isStateful())) {
            i(false);
            return true;
        }
        return false;
    }
}
