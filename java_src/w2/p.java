package w2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Property;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.PathInterpolator;
import com.android.systemui.shared.R;
import j2.C1114a;
import j2.C1115b;
import java.util.ArrayList;
import java.util.Iterator;
import x2.C1474l;
import y2.C1491a;
/* loaded from: classes.dex */
public class p {

    /* renamed from: b  reason: collision with root package name */
    public final C1474l f12791b;

    /* renamed from: c  reason: collision with root package name */
    public Animator f12792c;

    /* renamed from: d  reason: collision with root package name */
    public j2.g f12793d;

    /* renamed from: e  reason: collision with root package name */
    public j2.g f12794e;

    /* renamed from: f  reason: collision with root package name */
    public float f12795f;

    /* renamed from: i  reason: collision with root package name */
    public ArrayList f12798i;

    /* renamed from: j  reason: collision with root package name */
    public ArrayList f12799j;

    /* renamed from: k  reason: collision with root package name */
    public ArrayList f12800k;

    /* renamed from: l  reason: collision with root package name */
    public final g f12801l;

    /* renamed from: m  reason: collision with root package name */
    public final e f12802m;

    /* renamed from: o  reason: collision with root package name */
    public final Matrix f12804o;

    /* renamed from: p  reason: collision with root package name */
    public l f12805p;

    /* renamed from: q  reason: collision with root package name */
    public static final U.a f12780q = C1114a.f10702c;

    /* renamed from: r  reason: collision with root package name */
    public static final int f12781r = R.attr.motionDurationLong2;

    /* renamed from: s  reason: collision with root package name */
    public static final int f12782s = R.attr.motionEasingEmphasizedInterpolator;

    /* renamed from: t  reason: collision with root package name */
    public static final int f12783t = R.attr.motionDurationMedium1;

    /* renamed from: u  reason: collision with root package name */
    public static final int f12784u = R.attr.motionEasingEmphasizedAccelerateInterpolator;

    /* renamed from: v  reason: collision with root package name */
    public static final int[] f12785v = {16842919, 16842910};

    /* renamed from: w  reason: collision with root package name */
    public static final int[] f12786w = {16843623, 16842908, 16842910};

    /* renamed from: x  reason: collision with root package name */
    public static final int[] f12787x = {16842908, 16842910};

    /* renamed from: y  reason: collision with root package name */
    public static final int[] f12788y = {16843623, 16842910};

    /* renamed from: z  reason: collision with root package name */
    public static final int[] f12789z = {16842910};

    /* renamed from: A  reason: collision with root package name */
    public static final int[] f12779A = new int[0];

    /* renamed from: a  reason: collision with root package name */
    public boolean f12790a = true;

    /* renamed from: g  reason: collision with root package name */
    public float f12796g = 1.0f;

    /* renamed from: h  reason: collision with root package name */
    public int f12797h = 0;

    /* renamed from: n  reason: collision with root package name */
    public final Rect f12803n = new Rect();

    public p(g gVar, e eVar) {
        new RectF();
        new RectF();
        this.f12804o = new Matrix();
        this.f12801l = gVar;
        this.f12802m = eVar;
        C1474l c1474l = new C1474l();
        this.f12791b = c1474l;
        q qVar = (q) this;
        c1474l.a(f12785v, c(new m(qVar, 2)));
        c1474l.a(f12786w, c(new m(qVar, 1)));
        c1474l.a(f12787x, c(new m(qVar, 1)));
        c1474l.a(f12788y, c(new m(qVar, 1)));
        c1474l.a(f12789z, c(new m(qVar, 3)));
        c1474l.a(f12779A, c(new m(qVar, 0)));
        this.f12795f = gVar.getRotation();
    }

    public static ValueAnimator c(m mVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f12780q);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(mVar);
        valueAnimator.addUpdateListener(mVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    public final AnimatorSet a(j2.g gVar, float f4, float f5, float f6) {
        ArrayList arrayList = new ArrayList();
        Property property = View.ALPHA;
        float[] fArr = {f4};
        g gVar2 = this.f12801l;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(gVar2, property, fArr);
        gVar.c("opacity").a(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(gVar2, View.SCALE_X, f5);
        gVar.c("scale").a(ofFloat2);
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(gVar2, View.SCALE_Y, f5);
        gVar.c("scale").a(ofFloat3);
        arrayList.add(ofFloat3);
        Matrix matrix = this.f12804o;
        matrix.reset();
        gVar2.getDrawable();
        ObjectAnimator ofObject = ObjectAnimator.ofObject(gVar2, new j2.f(), new j(this), new Matrix(matrix));
        gVar.c("iconScale").a(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        C1115b.a(animatorSet, arrayList);
        return animatorSet;
    }

    public final AnimatorSet b(float f4, float f5, float f6, int i4, int i5) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        g gVar = this.f12801l;
        ofFloat.addUpdateListener(new k(this, gVar.getAlpha(), f4, gVar.getScaleX(), f5, gVar.getScaleY(), this.f12796g, f6, new Matrix(this.f12804o)));
        arrayList.add(ofFloat);
        C1115b.a(animatorSet, arrayList);
        Context context = gVar.getContext();
        int integer = gVar.getContext().getResources().getInteger(R.integer.material_motion_duration_long_1);
        TypedValue a4 = A2.c.a(i4, context);
        if (a4 != null && a4.type == 16) {
            integer = a4.data;
        }
        animatorSet.setDuration(integer);
        Context context2 = gVar.getContext();
        TimeInterpolator timeInterpolator = C1114a.f10701b;
        TypedValue typedValue = new TypedValue();
        if (context2.getTheme().resolveAttribute(i5, typedValue, true)) {
            if (typedValue.type != 3) {
                throw new IllegalArgumentException("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
            }
            String valueOf = String.valueOf(typedValue.string);
            if (!(C1491a.b(valueOf, "cubic-bezier") || C1491a.b(valueOf, "path"))) {
                timeInterpolator = AnimationUtils.loadInterpolator(context2, typedValue.resourceId);
            } else if (C1491a.b(valueOf, "cubic-bezier")) {
                String[] split = valueOf.substring(13, valueOf.length() - 1).split(",");
                if (split.length != 4) {
                    throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + split.length);
                }
                timeInterpolator = new PathInterpolator(C1491a.a(split, 0), C1491a.a(split, 1), C1491a.a(split, 2), C1491a.a(split, 3));
            } else if (!C1491a.b(valueOf, "path")) {
                throw new IllegalArgumentException("Invalid motion easing type: ".concat(valueOf));
            } else {
                timeInterpolator = new PathInterpolator(E.e.c(valueOf.substring(5, valueOf.length() - 1)));
            }
        }
        animatorSet.setInterpolator(timeInterpolator);
        return animatorSet;
    }

    public void d(Rect rect) {
        throw null;
    }

    public void e() {
        throw null;
    }

    public void f(int[] iArr) {
        throw null;
    }

    public final void g() {
        ArrayList arrayList = this.f12800k;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((n) it.next()).a();
            }
        }
    }

    public void h() {
        throw null;
    }

    public final void i() {
        d(this.f12803n);
        L.f.b(null, "Didn't initialize content background");
        throw null;
    }
}
