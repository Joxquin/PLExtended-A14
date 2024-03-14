package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public class d extends ViewGroup.MarginLayoutParams {

    /* renamed from: A  reason: collision with root package name */
    public int f2793A;

    /* renamed from: B  reason: collision with root package name */
    public int f2794B;

    /* renamed from: C  reason: collision with root package name */
    public final int f2795C;

    /* renamed from: D  reason: collision with root package name */
    public final int f2796D;

    /* renamed from: E  reason: collision with root package name */
    public float f2797E;

    /* renamed from: F  reason: collision with root package name */
    public float f2798F;

    /* renamed from: G  reason: collision with root package name */
    public String f2799G;

    /* renamed from: H  reason: collision with root package name */
    public float f2800H;

    /* renamed from: I  reason: collision with root package name */
    public float f2801I;

    /* renamed from: J  reason: collision with root package name */
    public int f2802J;

    /* renamed from: K  reason: collision with root package name */
    public int f2803K;

    /* renamed from: L  reason: collision with root package name */
    public int f2804L;

    /* renamed from: M  reason: collision with root package name */
    public int f2805M;

    /* renamed from: N  reason: collision with root package name */
    public int f2806N;

    /* renamed from: O  reason: collision with root package name */
    public int f2807O;

    /* renamed from: P  reason: collision with root package name */
    public int f2808P;

    /* renamed from: Q  reason: collision with root package name */
    public int f2809Q;

    /* renamed from: R  reason: collision with root package name */
    public float f2810R;

    /* renamed from: S  reason: collision with root package name */
    public float f2811S;

    /* renamed from: T  reason: collision with root package name */
    public int f2812T;

    /* renamed from: U  reason: collision with root package name */
    public int f2813U;

    /* renamed from: V  reason: collision with root package name */
    public int f2814V;

    /* renamed from: W  reason: collision with root package name */
    public boolean f2815W;

    /* renamed from: X  reason: collision with root package name */
    public boolean f2816X;

    /* renamed from: Y  reason: collision with root package name */
    public String f2817Y;

    /* renamed from: Z  reason: collision with root package name */
    public int f2818Z;

    /* renamed from: a  reason: collision with root package name */
    public int f2819a;

    /* renamed from: a0  reason: collision with root package name */
    public boolean f2820a0;

    /* renamed from: b  reason: collision with root package name */
    public int f2821b;

    /* renamed from: b0  reason: collision with root package name */
    public boolean f2822b0;

    /* renamed from: c  reason: collision with root package name */
    public float f2823c;

    /* renamed from: c0  reason: collision with root package name */
    public boolean f2824c0;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f2825d;

    /* renamed from: d0  reason: collision with root package name */
    public boolean f2826d0;

    /* renamed from: e  reason: collision with root package name */
    public int f2827e;

    /* renamed from: e0  reason: collision with root package name */
    public boolean f2828e0;

    /* renamed from: f  reason: collision with root package name */
    public int f2829f;

    /* renamed from: f0  reason: collision with root package name */
    public boolean f2830f0;

    /* renamed from: g  reason: collision with root package name */
    public int f2831g;

    /* renamed from: g0  reason: collision with root package name */
    public int f2832g0;

    /* renamed from: h  reason: collision with root package name */
    public int f2833h;

    /* renamed from: h0  reason: collision with root package name */
    public int f2834h0;

    /* renamed from: i  reason: collision with root package name */
    public int f2835i;

    /* renamed from: i0  reason: collision with root package name */
    public int f2836i0;

    /* renamed from: j  reason: collision with root package name */
    public int f2837j;

    /* renamed from: j0  reason: collision with root package name */
    public int f2838j0;

    /* renamed from: k  reason: collision with root package name */
    public int f2839k;

    /* renamed from: k0  reason: collision with root package name */
    public int f2840k0;

    /* renamed from: l  reason: collision with root package name */
    public int f2841l;

    /* renamed from: l0  reason: collision with root package name */
    public int f2842l0;

    /* renamed from: m  reason: collision with root package name */
    public int f2843m;

    /* renamed from: m0  reason: collision with root package name */
    public float f2844m0;

    /* renamed from: n  reason: collision with root package name */
    public int f2845n;

    /* renamed from: n0  reason: collision with root package name */
    public int f2846n0;

    /* renamed from: o  reason: collision with root package name */
    public int f2847o;

    /* renamed from: o0  reason: collision with root package name */
    public int f2848o0;

    /* renamed from: p  reason: collision with root package name */
    public int f2849p;

    /* renamed from: p0  reason: collision with root package name */
    public float f2850p0;

    /* renamed from: q  reason: collision with root package name */
    public int f2851q;

    /* renamed from: q0  reason: collision with root package name */
    public v.f f2852q0;

    /* renamed from: r  reason: collision with root package name */
    public float f2853r;

    /* renamed from: s  reason: collision with root package name */
    public int f2854s;

    /* renamed from: t  reason: collision with root package name */
    public int f2855t;

    /* renamed from: u  reason: collision with root package name */
    public int f2856u;

    /* renamed from: v  reason: collision with root package name */
    public int f2857v;

    /* renamed from: w  reason: collision with root package name */
    public final int f2858w;

    /* renamed from: x  reason: collision with root package name */
    public int f2859x;

    /* renamed from: y  reason: collision with root package name */
    public final int f2860y;

    /* renamed from: z  reason: collision with root package name */
    public int f2861z;

    public d(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f2819a = -1;
        this.f2821b = -1;
        this.f2823c = -1.0f;
        this.f2825d = true;
        this.f2827e = -1;
        this.f2829f = -1;
        this.f2831g = -1;
        this.f2833h = -1;
        this.f2835i = -1;
        this.f2837j = -1;
        this.f2839k = -1;
        this.f2841l = -1;
        this.f2843m = -1;
        this.f2845n = -1;
        this.f2847o = -1;
        this.f2849p = -1;
        this.f2851q = 0;
        this.f2853r = 0.0f;
        this.f2854s = -1;
        this.f2855t = -1;
        this.f2856u = -1;
        this.f2857v = -1;
        this.f2858w = Integer.MIN_VALUE;
        this.f2859x = Integer.MIN_VALUE;
        this.f2860y = Integer.MIN_VALUE;
        this.f2861z = Integer.MIN_VALUE;
        this.f2793A = Integer.MIN_VALUE;
        this.f2794B = Integer.MIN_VALUE;
        this.f2795C = Integer.MIN_VALUE;
        this.f2796D = 0;
        this.f2797E = 0.5f;
        this.f2798F = 0.5f;
        this.f2799G = null;
        this.f2800H = -1.0f;
        this.f2801I = -1.0f;
        this.f2802J = 0;
        this.f2803K = 0;
        this.f2804L = 0;
        this.f2805M = 0;
        this.f2806N = 0;
        this.f2807O = 0;
        this.f2808P = 0;
        this.f2809Q = 0;
        this.f2810R = 1.0f;
        this.f2811S = 1.0f;
        this.f2812T = -1;
        this.f2813U = -1;
        this.f2814V = -1;
        this.f2815W = false;
        this.f2816X = false;
        this.f2817Y = null;
        this.f2818Z = 0;
        this.f2820a0 = true;
        this.f2822b0 = true;
        this.f2824c0 = false;
        this.f2826d0 = false;
        this.f2828e0 = false;
        this.f2830f0 = false;
        this.f2832g0 = -1;
        this.f2834h0 = -1;
        this.f2836i0 = -1;
        this.f2838j0 = -1;
        this.f2840k0 = Integer.MIN_VALUE;
        this.f2842l0 = Integer.MIN_VALUE;
        this.f2844m0 = 0.5f;
        this.f2852q0 = new v.f();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
            setMarginStart(marginLayoutParams.getMarginStart());
            setMarginEnd(marginLayoutParams.getMarginEnd());
        }
        if (layoutParams instanceof d) {
            d dVar = (d) layoutParams;
            this.f2819a = dVar.f2819a;
            this.f2821b = dVar.f2821b;
            this.f2823c = dVar.f2823c;
            this.f2825d = dVar.f2825d;
            this.f2827e = dVar.f2827e;
            this.f2829f = dVar.f2829f;
            this.f2831g = dVar.f2831g;
            this.f2833h = dVar.f2833h;
            this.f2835i = dVar.f2835i;
            this.f2837j = dVar.f2837j;
            this.f2839k = dVar.f2839k;
            this.f2841l = dVar.f2841l;
            this.f2843m = dVar.f2843m;
            this.f2845n = dVar.f2845n;
            this.f2847o = dVar.f2847o;
            this.f2849p = dVar.f2849p;
            this.f2851q = dVar.f2851q;
            this.f2853r = dVar.f2853r;
            this.f2854s = dVar.f2854s;
            this.f2855t = dVar.f2855t;
            this.f2856u = dVar.f2856u;
            this.f2857v = dVar.f2857v;
            this.f2858w = dVar.f2858w;
            this.f2859x = dVar.f2859x;
            this.f2860y = dVar.f2860y;
            this.f2861z = dVar.f2861z;
            this.f2793A = dVar.f2793A;
            this.f2794B = dVar.f2794B;
            this.f2795C = dVar.f2795C;
            this.f2796D = dVar.f2796D;
            this.f2797E = dVar.f2797E;
            this.f2798F = dVar.f2798F;
            this.f2799G = dVar.f2799G;
            this.f2800H = dVar.f2800H;
            this.f2801I = dVar.f2801I;
            this.f2802J = dVar.f2802J;
            this.f2803K = dVar.f2803K;
            this.f2815W = dVar.f2815W;
            this.f2816X = dVar.f2816X;
            this.f2804L = dVar.f2804L;
            this.f2805M = dVar.f2805M;
            this.f2806N = dVar.f2806N;
            this.f2808P = dVar.f2808P;
            this.f2807O = dVar.f2807O;
            this.f2809Q = dVar.f2809Q;
            this.f2810R = dVar.f2810R;
            this.f2811S = dVar.f2811S;
            this.f2812T = dVar.f2812T;
            this.f2813U = dVar.f2813U;
            this.f2814V = dVar.f2814V;
            this.f2820a0 = dVar.f2820a0;
            this.f2822b0 = dVar.f2822b0;
            this.f2824c0 = dVar.f2824c0;
            this.f2826d0 = dVar.f2826d0;
            this.f2832g0 = dVar.f2832g0;
            this.f2834h0 = dVar.f2834h0;
            this.f2836i0 = dVar.f2836i0;
            this.f2838j0 = dVar.f2838j0;
            this.f2840k0 = dVar.f2840k0;
            this.f2842l0 = dVar.f2842l0;
            this.f2844m0 = dVar.f2844m0;
            this.f2817Y = dVar.f2817Y;
            this.f2818Z = dVar.f2818Z;
            this.f2852q0 = dVar.f2852q0;
        }
    }

    public final void a() {
        this.f2826d0 = false;
        this.f2820a0 = true;
        this.f2822b0 = true;
        int i4 = ((ViewGroup.MarginLayoutParams) this).width;
        if (i4 == -2 && this.f2815W) {
            this.f2820a0 = false;
            if (this.f2804L == 0) {
                this.f2804L = 1;
            }
        }
        int i5 = ((ViewGroup.MarginLayoutParams) this).height;
        if (i5 == -2 && this.f2816X) {
            this.f2822b0 = false;
            if (this.f2805M == 0) {
                this.f2805M = 1;
            }
        }
        if (i4 == 0 || i4 == -1) {
            this.f2820a0 = false;
            if (i4 == 0 && this.f2804L == 1) {
                ((ViewGroup.MarginLayoutParams) this).width = -2;
                this.f2815W = true;
            }
        }
        if (i5 == 0 || i5 == -1) {
            this.f2822b0 = false;
            if (i5 == 0 && this.f2805M == 1) {
                ((ViewGroup.MarginLayoutParams) this).height = -2;
                this.f2816X = true;
            }
        }
        if (this.f2823c == -1.0f && this.f2819a == -1 && this.f2821b == -1) {
            return;
        }
        this.f2826d0 = true;
        this.f2820a0 = true;
        this.f2822b0 = true;
        if (!(this.f2852q0 instanceof v.j)) {
            this.f2852q0 = new v.j();
        }
        ((v.j) this.f2852q0).S(this.f2814V);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0082  */
    @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void resolveLayoutDirection(int r11) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.d.resolveLayoutDirection(int):void");
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2819a = -1;
        this.f2821b = -1;
        this.f2823c = -1.0f;
        this.f2825d = true;
        this.f2827e = -1;
        this.f2829f = -1;
        this.f2831g = -1;
        this.f2833h = -1;
        this.f2835i = -1;
        this.f2837j = -1;
        this.f2839k = -1;
        this.f2841l = -1;
        this.f2843m = -1;
        this.f2845n = -1;
        this.f2847o = -1;
        this.f2849p = -1;
        this.f2851q = 0;
        this.f2853r = 0.0f;
        this.f2854s = -1;
        this.f2855t = -1;
        this.f2856u = -1;
        this.f2857v = -1;
        this.f2858w = Integer.MIN_VALUE;
        this.f2859x = Integer.MIN_VALUE;
        this.f2860y = Integer.MIN_VALUE;
        this.f2861z = Integer.MIN_VALUE;
        this.f2793A = Integer.MIN_VALUE;
        this.f2794B = Integer.MIN_VALUE;
        this.f2795C = Integer.MIN_VALUE;
        this.f2796D = 0;
        this.f2797E = 0.5f;
        this.f2798F = 0.5f;
        this.f2799G = null;
        this.f2800H = -1.0f;
        this.f2801I = -1.0f;
        this.f2802J = 0;
        this.f2803K = 0;
        this.f2804L = 0;
        this.f2805M = 0;
        this.f2806N = 0;
        this.f2807O = 0;
        this.f2808P = 0;
        this.f2809Q = 0;
        this.f2810R = 1.0f;
        this.f2811S = 1.0f;
        this.f2812T = -1;
        this.f2813U = -1;
        this.f2814V = -1;
        this.f2815W = false;
        this.f2816X = false;
        this.f2817Y = null;
        this.f2818Z = 0;
        this.f2820a0 = true;
        this.f2822b0 = true;
        this.f2824c0 = false;
        this.f2826d0 = false;
        this.f2828e0 = false;
        this.f2830f0 = false;
        this.f2832g0 = -1;
        this.f2834h0 = -1;
        this.f2836i0 = -1;
        this.f2838j0 = -1;
        this.f2840k0 = Integer.MIN_VALUE;
        this.f2842l0 = Integer.MIN_VALUE;
        this.f2844m0 = 0.5f;
        this.f2852q0 = new v.f();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, w.f3021b);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i4 = 0; i4 < indexCount; i4++) {
            int index = obtainStyledAttributes.getIndex(i4);
            int i5 = c.f2792a.get(index);
            switch (i5) {
                case 1:
                    this.f2814V = obtainStyledAttributes.getInt(index, this.f2814V);
                    break;
                case 2:
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.f2849p);
                    this.f2849p = resourceId;
                    if (resourceId == -1) {
                        this.f2849p = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    this.f2851q = obtainStyledAttributes.getDimensionPixelSize(index, this.f2851q);
                    break;
                case 4:
                    float f4 = obtainStyledAttributes.getFloat(index, this.f2853r) % 360.0f;
                    this.f2853r = f4;
                    if (f4 < 0.0f) {
                        this.f2853r = (360.0f - f4) % 360.0f;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    this.f2819a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2819a);
                    break;
                case 6:
                    this.f2821b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2821b);
                    break;
                case 7:
                    this.f2823c = obtainStyledAttributes.getFloat(index, this.f2823c);
                    break;
                case 8:
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f2827e);
                    this.f2827e = resourceId2;
                    if (resourceId2 == -1) {
                        this.f2827e = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f2829f);
                    this.f2829f = resourceId3;
                    if (resourceId3 == -1) {
                        this.f2829f = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 10:
                    int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f2831g);
                    this.f2831g = resourceId4;
                    if (resourceId4 == -1) {
                        this.f2831g = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f2833h);
                    this.f2833h = resourceId5;
                    if (resourceId5 == -1) {
                        this.f2833h = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f2835i);
                    this.f2835i = resourceId6;
                    if (resourceId6 == -1) {
                        this.f2835i = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f2837j);
                    this.f2837j = resourceId7;
                    if (resourceId7 == -1) {
                        this.f2837j = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f2839k);
                    this.f2839k = resourceId8;
                    if (resourceId8 == -1) {
                        this.f2839k = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f2841l);
                    this.f2841l = resourceId9;
                    if (resourceId9 == -1) {
                        this.f2841l = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f2843m);
                    this.f2843m = resourceId10;
                    if (resourceId10 == -1) {
                        this.f2843m = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f2854s);
                    this.f2854s = resourceId11;
                    if (resourceId11 == -1) {
                        this.f2854s = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 18:
                    int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f2855t);
                    this.f2855t = resourceId12;
                    if (resourceId12 == -1) {
                        this.f2855t = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 19:
                    int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f2856u);
                    this.f2856u = resourceId13;
                    if (resourceId13 == -1) {
                        this.f2856u = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 20:
                    int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f2857v);
                    this.f2857v = resourceId14;
                    if (resourceId14 == -1) {
                        this.f2857v = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 21:
                    this.f2858w = obtainStyledAttributes.getDimensionPixelSize(index, this.f2858w);
                    break;
                case 22:
                    this.f2859x = obtainStyledAttributes.getDimensionPixelSize(index, this.f2859x);
                    break;
                case 23:
                    this.f2860y = obtainStyledAttributes.getDimensionPixelSize(index, this.f2860y);
                    break;
                case 24:
                    this.f2861z = obtainStyledAttributes.getDimensionPixelSize(index, this.f2861z);
                    break;
                case 25:
                    this.f2793A = obtainStyledAttributes.getDimensionPixelSize(index, this.f2793A);
                    break;
                case 26:
                    this.f2794B = obtainStyledAttributes.getDimensionPixelSize(index, this.f2794B);
                    break;
                case 27:
                    this.f2815W = obtainStyledAttributes.getBoolean(index, this.f2815W);
                    break;
                case 28:
                    this.f2816X = obtainStyledAttributes.getBoolean(index, this.f2816X);
                    break;
                case 29:
                    this.f2797E = obtainStyledAttributes.getFloat(index, this.f2797E);
                    break;
                case 30:
                    this.f2798F = obtainStyledAttributes.getFloat(index, this.f2798F);
                    break;
                case 31:
                    int i6 = obtainStyledAttributes.getInt(index, 0);
                    this.f2804L = i6;
                    if (i6 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        break;
                    } else {
                        break;
                    }
                case 32:
                    int i7 = obtainStyledAttributes.getInt(index, 0);
                    this.f2805M = i7;
                    if (i7 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        break;
                    } else {
                        break;
                    }
                case 33:
                    try {
                        this.f2806N = obtainStyledAttributes.getDimensionPixelSize(index, this.f2806N);
                        break;
                    } catch (Exception unused) {
                        if (obtainStyledAttributes.getInt(index, this.f2806N) == -2) {
                            this.f2806N = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 34:
                    try {
                        this.f2808P = obtainStyledAttributes.getDimensionPixelSize(index, this.f2808P);
                        break;
                    } catch (Exception unused2) {
                        if (obtainStyledAttributes.getInt(index, this.f2808P) == -2) {
                            this.f2808P = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 35:
                    this.f2810R = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f2810R));
                    this.f2804L = 2;
                    break;
                case 36:
                    try {
                        this.f2807O = obtainStyledAttributes.getDimensionPixelSize(index, this.f2807O);
                        break;
                    } catch (Exception unused3) {
                        if (obtainStyledAttributes.getInt(index, this.f2807O) == -2) {
                            this.f2807O = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 37:
                    try {
                        this.f2809Q = obtainStyledAttributes.getDimensionPixelSize(index, this.f2809Q);
                        break;
                    } catch (Exception unused4) {
                        if (obtainStyledAttributes.getInt(index, this.f2809Q) == -2) {
                            this.f2809Q = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 38:
                    this.f2811S = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f2811S));
                    this.f2805M = 2;
                    break;
                default:
                    switch (i5) {
                        case 44:
                            q.j(this, obtainStyledAttributes.getString(index));
                            continue;
                        case 45:
                            this.f2800H = obtainStyledAttributes.getFloat(index, this.f2800H);
                            continue;
                        case 46:
                            this.f2801I = obtainStyledAttributes.getFloat(index, this.f2801I);
                            continue;
                        case 47:
                            this.f2802J = obtainStyledAttributes.getInt(index, 0);
                            continue;
                        case 48:
                            this.f2803K = obtainStyledAttributes.getInt(index, 0);
                            continue;
                        case 49:
                            this.f2812T = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2812T);
                            continue;
                        case 50:
                            this.f2813U = obtainStyledAttributes.getDimensionPixelOffset(index, this.f2813U);
                            continue;
                        case 51:
                            this.f2817Y = obtainStyledAttributes.getString(index);
                            continue;
                        case 52:
                            int resourceId15 = obtainStyledAttributes.getResourceId(index, this.f2845n);
                            this.f2845n = resourceId15;
                            if (resourceId15 == -1) {
                                this.f2845n = obtainStyledAttributes.getInt(index, -1);
                                break;
                            } else {
                                continue;
                            }
                        case 53:
                            int resourceId16 = obtainStyledAttributes.getResourceId(index, this.f2847o);
                            this.f2847o = resourceId16;
                            if (resourceId16 == -1) {
                                this.f2847o = obtainStyledAttributes.getInt(index, -1);
                                break;
                            } else {
                                continue;
                            }
                        case 54:
                            this.f2796D = obtainStyledAttributes.getDimensionPixelSize(index, this.f2796D);
                            continue;
                        case 55:
                            this.f2795C = obtainStyledAttributes.getDimensionPixelSize(index, this.f2795C);
                            continue;
                        default:
                            switch (i5) {
                                case 64:
                                    q.i(this, obtainStyledAttributes, index, 0);
                                    continue;
                                    continue;
                                case 65:
                                    q.i(this, obtainStyledAttributes, index, 1);
                                    continue;
                                case 66:
                                    this.f2818Z = obtainStyledAttributes.getInt(index, this.f2818Z);
                                    continue;
                                case 67:
                                    this.f2825d = obtainStyledAttributes.getBoolean(index, this.f2825d);
                                    continue;
                            }
                    }
            }
        }
        obtainStyledAttributes.recycle();
        a();
    }

    public d(int i4, int i5) {
        super(i4, i5);
        this.f2819a = -1;
        this.f2821b = -1;
        this.f2823c = -1.0f;
        this.f2825d = true;
        this.f2827e = -1;
        this.f2829f = -1;
        this.f2831g = -1;
        this.f2833h = -1;
        this.f2835i = -1;
        this.f2837j = -1;
        this.f2839k = -1;
        this.f2841l = -1;
        this.f2843m = -1;
        this.f2845n = -1;
        this.f2847o = -1;
        this.f2849p = -1;
        this.f2851q = 0;
        this.f2853r = 0.0f;
        this.f2854s = -1;
        this.f2855t = -1;
        this.f2856u = -1;
        this.f2857v = -1;
        this.f2858w = Integer.MIN_VALUE;
        this.f2859x = Integer.MIN_VALUE;
        this.f2860y = Integer.MIN_VALUE;
        this.f2861z = Integer.MIN_VALUE;
        this.f2793A = Integer.MIN_VALUE;
        this.f2794B = Integer.MIN_VALUE;
        this.f2795C = Integer.MIN_VALUE;
        this.f2796D = 0;
        this.f2797E = 0.5f;
        this.f2798F = 0.5f;
        this.f2799G = null;
        this.f2800H = -1.0f;
        this.f2801I = -1.0f;
        this.f2802J = 0;
        this.f2803K = 0;
        this.f2804L = 0;
        this.f2805M = 0;
        this.f2806N = 0;
        this.f2807O = 0;
        this.f2808P = 0;
        this.f2809Q = 0;
        this.f2810R = 1.0f;
        this.f2811S = 1.0f;
        this.f2812T = -1;
        this.f2813U = -1;
        this.f2814V = -1;
        this.f2815W = false;
        this.f2816X = false;
        this.f2817Y = null;
        this.f2818Z = 0;
        this.f2820a0 = true;
        this.f2822b0 = true;
        this.f2824c0 = false;
        this.f2826d0 = false;
        this.f2828e0 = false;
        this.f2830f0 = false;
        this.f2832g0 = -1;
        this.f2834h0 = -1;
        this.f2836i0 = -1;
        this.f2838j0 = -1;
        this.f2840k0 = Integer.MIN_VALUE;
        this.f2842l0 = Integer.MIN_VALUE;
        this.f2844m0 = 0.5f;
        this.f2852q0 = new v.f();
    }
}
