package androidx.constraintlayout.widget;

import android.view.ViewGroup;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public int f2897a;

    /* renamed from: b  reason: collision with root package name */
    public final o f2898b = new o();

    /* renamed from: c  reason: collision with root package name */
    public final n f2899c = new n();

    /* renamed from: d  reason: collision with root package name */
    public final m f2900d = new m();

    /* renamed from: e  reason: collision with root package name */
    public final p f2901e = new p();

    /* renamed from: f  reason: collision with root package name */
    public HashMap f2902f = new HashMap();

    public final void a(d dVar) {
        m mVar = this.f2900d;
        dVar.f2827e = mVar.f2944h;
        dVar.f2829f = mVar.f2946i;
        dVar.f2831g = mVar.f2948j;
        dVar.f2833h = mVar.f2950k;
        dVar.f2835i = mVar.f2952l;
        dVar.f2837j = mVar.f2954m;
        dVar.f2839k = mVar.f2956n;
        dVar.f2841l = mVar.f2958o;
        dVar.f2843m = mVar.f2960p;
        dVar.f2845n = mVar.f2961q;
        dVar.f2847o = mVar.f2962r;
        dVar.f2854s = mVar.f2963s;
        dVar.f2855t = mVar.f2964t;
        dVar.f2856u = mVar.f2965u;
        dVar.f2857v = mVar.f2966v;
        ((ViewGroup.MarginLayoutParams) dVar).leftMargin = mVar.f2909F;
        ((ViewGroup.MarginLayoutParams) dVar).rightMargin = mVar.f2910G;
        ((ViewGroup.MarginLayoutParams) dVar).topMargin = mVar.f2911H;
        ((ViewGroup.MarginLayoutParams) dVar).bottomMargin = mVar.f2912I;
        dVar.f2793A = mVar.f2921R;
        dVar.f2794B = mVar.f2920Q;
        dVar.f2859x = mVar.f2917N;
        dVar.f2861z = mVar.f2919P;
        dVar.f2797E = mVar.f2967w;
        dVar.f2798F = mVar.f2968x;
        dVar.f2849p = mVar.f2970z;
        dVar.f2851q = mVar.f2904A;
        dVar.f2853r = mVar.f2905B;
        dVar.f2799G = mVar.f2969y;
        dVar.f2812T = mVar.f2906C;
        dVar.f2813U = mVar.f2907D;
        dVar.f2801I = mVar.f2923T;
        dVar.f2800H = mVar.f2924U;
        dVar.f2803K = mVar.f2926W;
        dVar.f2802J = mVar.f2925V;
        dVar.f2815W = mVar.f2953l0;
        dVar.f2816X = mVar.f2955m0;
        dVar.f2804L = mVar.f2927X;
        dVar.f2805M = mVar.f2928Y;
        dVar.f2808P = mVar.f2929Z;
        dVar.f2809Q = mVar.f2931a0;
        dVar.f2806N = mVar.f2933b0;
        dVar.f2807O = mVar.f2935c0;
        dVar.f2810R = mVar.f2937d0;
        dVar.f2811S = mVar.f2939e0;
        dVar.f2814V = mVar.f2908E;
        dVar.f2823c = mVar.f2940f;
        dVar.f2819a = mVar.f2936d;
        dVar.f2821b = mVar.f2938e;
        ((ViewGroup.MarginLayoutParams) dVar).width = mVar.f2932b;
        ((ViewGroup.MarginLayoutParams) dVar).height = mVar.f2934c;
        String str = mVar.f2951k0;
        if (str != null) {
            dVar.f2817Y = str;
        }
        dVar.f2818Z = mVar.f2959o0;
        dVar.setMarginStart(mVar.f2914K);
        dVar.setMarginEnd(mVar.f2913J);
        dVar.a();
    }

    public final void b(int i4, d dVar) {
        this.f2897a = i4;
        int i5 = dVar.f2827e;
        m mVar = this.f2900d;
        mVar.f2944h = i5;
        mVar.f2946i = dVar.f2829f;
        mVar.f2948j = dVar.f2831g;
        mVar.f2950k = dVar.f2833h;
        mVar.f2952l = dVar.f2835i;
        mVar.f2954m = dVar.f2837j;
        mVar.f2956n = dVar.f2839k;
        mVar.f2958o = dVar.f2841l;
        mVar.f2960p = dVar.f2843m;
        mVar.f2961q = dVar.f2845n;
        mVar.f2962r = dVar.f2847o;
        mVar.f2963s = dVar.f2854s;
        mVar.f2964t = dVar.f2855t;
        mVar.f2965u = dVar.f2856u;
        mVar.f2966v = dVar.f2857v;
        mVar.f2967w = dVar.f2797E;
        mVar.f2968x = dVar.f2798F;
        mVar.f2969y = dVar.f2799G;
        mVar.f2970z = dVar.f2849p;
        mVar.f2904A = dVar.f2851q;
        mVar.f2905B = dVar.f2853r;
        mVar.f2906C = dVar.f2812T;
        mVar.f2907D = dVar.f2813U;
        mVar.f2908E = dVar.f2814V;
        mVar.f2940f = dVar.f2823c;
        mVar.f2936d = dVar.f2819a;
        mVar.f2938e = dVar.f2821b;
        mVar.f2932b = ((ViewGroup.MarginLayoutParams) dVar).width;
        mVar.f2934c = ((ViewGroup.MarginLayoutParams) dVar).height;
        mVar.f2909F = ((ViewGroup.MarginLayoutParams) dVar).leftMargin;
        mVar.f2910G = ((ViewGroup.MarginLayoutParams) dVar).rightMargin;
        mVar.f2911H = ((ViewGroup.MarginLayoutParams) dVar).topMargin;
        mVar.f2912I = ((ViewGroup.MarginLayoutParams) dVar).bottomMargin;
        mVar.f2915L = dVar.f2796D;
        mVar.f2923T = dVar.f2801I;
        mVar.f2924U = dVar.f2800H;
        mVar.f2926W = dVar.f2803K;
        mVar.f2925V = dVar.f2802J;
        mVar.f2953l0 = dVar.f2815W;
        mVar.f2955m0 = dVar.f2816X;
        mVar.f2927X = dVar.f2804L;
        mVar.f2928Y = dVar.f2805M;
        mVar.f2929Z = dVar.f2808P;
        mVar.f2931a0 = dVar.f2809Q;
        mVar.f2933b0 = dVar.f2806N;
        mVar.f2935c0 = dVar.f2807O;
        mVar.f2937d0 = dVar.f2810R;
        mVar.f2939e0 = dVar.f2811S;
        mVar.f2951k0 = dVar.f2817Y;
        mVar.f2917N = dVar.f2859x;
        mVar.f2919P = dVar.f2861z;
        mVar.f2916M = dVar.f2858w;
        mVar.f2918O = dVar.f2860y;
        mVar.f2921R = dVar.f2793A;
        mVar.f2920Q = dVar.f2794B;
        mVar.f2922S = dVar.f2795C;
        mVar.f2959o0 = dVar.f2818Z;
        mVar.f2913J = dVar.getMarginEnd();
        mVar.f2914K = dVar.getMarginStart();
    }

    public final void c(int i4, r rVar) {
        b(i4, rVar);
        this.f2898b.f2983c = rVar.f3009r0;
        float f4 = rVar.f3012u0;
        p pVar = this.f2901e;
        pVar.f2986a = f4;
        pVar.f2987b = rVar.f3013v0;
        pVar.f2988c = rVar.f3014w0;
        pVar.f2989d = rVar.f3015x0;
        pVar.f2990e = rVar.f3016y0;
        pVar.f2991f = rVar.f3017z0;
        pVar.f2992g = rVar.f3005A0;
        pVar.f2994i = rVar.f3006B0;
        pVar.f2995j = rVar.f3007C0;
        pVar.f2996k = rVar.f3008D0;
        pVar.f2998m = rVar.f3011t0;
        pVar.f2997l = rVar.f3010s0;
    }

    public final Object clone() {
        l lVar = new l();
        m mVar = lVar.f2900d;
        mVar.getClass();
        m mVar2 = this.f2900d;
        mVar.f2930a = mVar2.f2930a;
        mVar.f2932b = mVar2.f2932b;
        mVar.f2934c = mVar2.f2934c;
        mVar.f2936d = mVar2.f2936d;
        mVar.f2938e = mVar2.f2938e;
        mVar.f2940f = mVar2.f2940f;
        mVar.f2942g = mVar2.f2942g;
        mVar.f2944h = mVar2.f2944h;
        mVar.f2946i = mVar2.f2946i;
        mVar.f2948j = mVar2.f2948j;
        mVar.f2950k = mVar2.f2950k;
        mVar.f2952l = mVar2.f2952l;
        mVar.f2954m = mVar2.f2954m;
        mVar.f2956n = mVar2.f2956n;
        mVar.f2958o = mVar2.f2958o;
        mVar.f2960p = mVar2.f2960p;
        mVar.f2961q = mVar2.f2961q;
        mVar.f2962r = mVar2.f2962r;
        mVar.f2963s = mVar2.f2963s;
        mVar.f2964t = mVar2.f2964t;
        mVar.f2965u = mVar2.f2965u;
        mVar.f2966v = mVar2.f2966v;
        mVar.f2967w = mVar2.f2967w;
        mVar.f2968x = mVar2.f2968x;
        mVar.f2969y = mVar2.f2969y;
        mVar.f2970z = mVar2.f2970z;
        mVar.f2904A = mVar2.f2904A;
        mVar.f2905B = mVar2.f2905B;
        mVar.f2906C = mVar2.f2906C;
        mVar.f2907D = mVar2.f2907D;
        mVar.f2908E = mVar2.f2908E;
        mVar.f2909F = mVar2.f2909F;
        mVar.f2910G = mVar2.f2910G;
        mVar.f2911H = mVar2.f2911H;
        mVar.f2912I = mVar2.f2912I;
        mVar.f2913J = mVar2.f2913J;
        mVar.f2914K = mVar2.f2914K;
        mVar.f2915L = mVar2.f2915L;
        mVar.f2916M = mVar2.f2916M;
        mVar.f2917N = mVar2.f2917N;
        mVar.f2918O = mVar2.f2918O;
        mVar.f2919P = mVar2.f2919P;
        mVar.f2920Q = mVar2.f2920Q;
        mVar.f2921R = mVar2.f2921R;
        mVar.f2922S = mVar2.f2922S;
        mVar.f2923T = mVar2.f2923T;
        mVar.f2924U = mVar2.f2924U;
        mVar.f2925V = mVar2.f2925V;
        mVar.f2926W = mVar2.f2926W;
        mVar.f2927X = mVar2.f2927X;
        mVar.f2928Y = mVar2.f2928Y;
        mVar.f2929Z = mVar2.f2929Z;
        mVar.f2931a0 = mVar2.f2931a0;
        mVar.f2933b0 = mVar2.f2933b0;
        mVar.f2935c0 = mVar2.f2935c0;
        mVar.f2937d0 = mVar2.f2937d0;
        mVar.f2939e0 = mVar2.f2939e0;
        mVar.f2941f0 = mVar2.f2941f0;
        mVar.f2943g0 = mVar2.f2943g0;
        mVar.f2945h0 = mVar2.f2945h0;
        mVar.f2951k0 = mVar2.f2951k0;
        int[] iArr = mVar2.f2947i0;
        if (iArr == null || mVar2.f2949j0 != null) {
            mVar.f2947i0 = null;
        } else {
            mVar.f2947i0 = Arrays.copyOf(iArr, iArr.length);
        }
        mVar.f2949j0 = mVar2.f2949j0;
        mVar.f2953l0 = mVar2.f2953l0;
        mVar.f2955m0 = mVar2.f2955m0;
        mVar.f2957n0 = mVar2.f2957n0;
        mVar.f2959o0 = mVar2.f2959o0;
        n nVar = lVar.f2899c;
        nVar.getClass();
        n nVar2 = this.f2899c;
        nVar2.getClass();
        nVar.f2972a = nVar2.f2972a;
        nVar.f2974c = nVar2.f2974c;
        nVar.f2976e = nVar2.f2976e;
        nVar.f2975d = nVar2.f2975d;
        o oVar = lVar.f2898b;
        oVar.getClass();
        o oVar2 = this.f2898b;
        oVar2.getClass();
        oVar.f2981a = oVar2.f2981a;
        oVar.f2983c = oVar2.f2983c;
        oVar.f2984d = oVar2.f2984d;
        oVar.f2982b = oVar2.f2982b;
        p pVar = lVar.f2901e;
        pVar.getClass();
        p pVar2 = this.f2901e;
        pVar2.getClass();
        pVar.f2986a = pVar2.f2986a;
        pVar.f2987b = pVar2.f2987b;
        pVar.f2988c = pVar2.f2988c;
        pVar.f2989d = pVar2.f2989d;
        pVar.f2990e = pVar2.f2990e;
        pVar.f2991f = pVar2.f2991f;
        pVar.f2992g = pVar2.f2992g;
        pVar.f2993h = pVar2.f2993h;
        pVar.f2994i = pVar2.f2994i;
        pVar.f2995j = pVar2.f2995j;
        pVar.f2996k = pVar2.f2996k;
        pVar.f2997l = pVar2.f2997l;
        pVar.f2998m = pVar2.f2998m;
        lVar.f2897a = this.f2897a;
        return lVar;
    }
}
