package com.airbnb.lottie;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Choreographer;
import android.view.View;
import android.widget.ImageView;
import com.airbnb.lottie.model.layer.Layer$LayerType;
import com.airbnb.lottie.model.layer.Layer$MatteType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import k0.C1177B;
import k0.C1189d;
import k0.C1198m;
import k0.InterfaceC1178C;
import k0.InterfaceC1182G;
import k0.t;
import k0.w;
import k0.x;
import l0.C1265a;
import o0.C1320a;
import o0.C1321b;
import p0.C1343e;
import p0.C1346h;
import p0.InterfaceC1344f;
import q0.l;
import s0.c;
import s0.e;
import u0.v;
import v0.C1430a;
import w0.C1446c;
import w0.Choreographer$FrameCallbackC1447d;
import w0.f;
/* loaded from: classes.dex */
public final class a extends Drawable implements Drawable.Callback, Animatable {

    /* renamed from: A  reason: collision with root package name */
    public Canvas f4305A;

    /* renamed from: B  reason: collision with root package name */
    public Rect f4306B;

    /* renamed from: C  reason: collision with root package name */
    public RectF f4307C;

    /* renamed from: D  reason: collision with root package name */
    public C1265a f4308D;

    /* renamed from: E  reason: collision with root package name */
    public Rect f4309E;

    /* renamed from: F  reason: collision with root package name */
    public Rect f4310F;

    /* renamed from: G  reason: collision with root package name */
    public RectF f4311G;

    /* renamed from: H  reason: collision with root package name */
    public RectF f4312H;

    /* renamed from: I  reason: collision with root package name */
    public Matrix f4313I;

    /* renamed from: J  reason: collision with root package name */
    public Matrix f4314J;

    /* renamed from: K  reason: collision with root package name */
    public boolean f4315K;

    /* renamed from: d  reason: collision with root package name */
    public C1198m f4316d;

    /* renamed from: e  reason: collision with root package name */
    public final Choreographer$FrameCallbackC1447d f4317e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f4318f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f4319g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f4320h;

    /* renamed from: i  reason: collision with root package name */
    public LottieDrawable$OnVisibleAction f4321i;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayList f4322j;

    /* renamed from: k  reason: collision with root package name */
    public final C1177B f4323k;

    /* renamed from: l  reason: collision with root package name */
    public C1321b f4324l;

    /* renamed from: m  reason: collision with root package name */
    public String f4325m;

    /* renamed from: n  reason: collision with root package name */
    public C1320a f4326n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f4327o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f4328p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f4329q;

    /* renamed from: r  reason: collision with root package name */
    public c f4330r;

    /* renamed from: s  reason: collision with root package name */
    public int f4331s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f4332t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f4333u;

    /* renamed from: v  reason: collision with root package name */
    public boolean f4334v;

    /* renamed from: w  reason: collision with root package name */
    public RenderMode f4335w;

    /* renamed from: x  reason: collision with root package name */
    public boolean f4336x;

    /* renamed from: y  reason: collision with root package name */
    public final Matrix f4337y;

    /* renamed from: z  reason: collision with root package name */
    public Bitmap f4338z;

    public a() {
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = new Choreographer$FrameCallbackC1447d();
        this.f4317e = choreographer$FrameCallbackC1447d;
        this.f4318f = true;
        this.f4319g = false;
        this.f4320h = false;
        this.f4321i = LottieDrawable$OnVisibleAction.NONE;
        this.f4322j = new ArrayList();
        C1177B c1177b = new C1177B(this);
        this.f4323k = c1177b;
        this.f4328p = false;
        this.f4329q = true;
        this.f4331s = 255;
        this.f4335w = RenderMode.AUTOMATIC;
        this.f4336x = false;
        this.f4337y = new Matrix();
        this.f4315K = false;
        choreographer$FrameCallbackC1447d.addUpdateListener(c1177b);
    }

    public static void f(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    public final void a(final C1343e c1343e, final Object obj, final x0.c cVar) {
        float f4;
        c cVar2 = this.f4330r;
        if (cVar2 == null) {
            this.f4322j.add(new InterfaceC1178C() { // from class: k0.z
                @Override // k0.InterfaceC1178C
                public final void run() {
                    com.airbnb.lottie.a.this.a(c1343e, obj, cVar);
                }
            });
            return;
        }
        boolean z4 = true;
        if (c1343e == C1343e.f11918c) {
            cVar2.e(cVar, obj);
        } else {
            InterfaceC1344f interfaceC1344f = c1343e.f11920b;
            if (interfaceC1344f != null) {
                interfaceC1344f.e(cVar, obj);
            } else {
                List l4 = l(c1343e);
                for (int i4 = 0; i4 < l4.size(); i4++) {
                    ((C1343e) l4.get(i4)).f11920b.e(cVar, obj);
                }
                z4 = true ^ l4.isEmpty();
            }
        }
        if (z4) {
            invalidateSelf();
            if (obj == InterfaceC1182G.f11052E) {
                Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4317e;
                C1198m c1198m = choreographer$FrameCallbackC1447d.f12730m;
                if (c1198m == null) {
                    f4 = 0.0f;
                } else {
                    float f5 = choreographer$FrameCallbackC1447d.f12726i;
                    float f6 = c1198m.f11131k;
                    f4 = (f5 - f6) / (c1198m.f11132l - f6);
                }
                z(f4);
            }
        }
    }

    public final boolean b() {
        return this.f4318f || this.f4319g;
    }

    public final void c() {
        C1198m c1198m = this.f4316d;
        if (c1198m == null) {
            return;
        }
        C1430a c1430a = v.f12423a;
        Rect rect = c1198m.f11130j;
        c cVar = new c(this, new e(Collections.emptyList(), c1198m, "__container", -1L, Layer$LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new l(), 0, 0, 0, 0.0f, 0.0f, rect.width(), rect.height(), null, null, Collections.emptyList(), Layer$MatteType.NONE, null, false, null, null), c1198m.f11129i, c1198m);
        this.f4330r = cVar;
        if (this.f4333u) {
            cVar.s(true);
        }
        this.f4330r.f12223K = this.f4329q;
    }

    public final void d() {
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4317e;
        if (choreographer$FrameCallbackC1447d.f12731n) {
            choreographer$FrameCallbackC1447d.cancel();
            if (!isVisible()) {
                this.f4321i = LottieDrawable$OnVisibleAction.NONE;
            }
        }
        this.f4316d = null;
        this.f4330r = null;
        this.f4324l = null;
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d2 = this.f4317e;
        choreographer$FrameCallbackC1447d2.f12730m = null;
        choreographer$FrameCallbackC1447d2.f12728k = -2.14748365E9f;
        choreographer$FrameCallbackC1447d2.f12729l = 2.14748365E9f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f4320h) {
            try {
                if (this.f4336x) {
                    k(canvas, this.f4330r);
                } else {
                    g(canvas);
                }
            } catch (Throwable unused) {
                C1446c.f12720a.getClass();
            }
        } else if (this.f4336x) {
            k(canvas, this.f4330r);
        } else {
            g(canvas);
        }
        this.f4315K = false;
        C1189d.a();
    }

    public final void e() {
        C1198m c1198m = this.f4316d;
        if (c1198m == null) {
            return;
        }
        RenderMode renderMode = this.f4335w;
        boolean z4 = c1198m.f11134n;
        int i4 = c1198m.f11135o;
        int ordinal = renderMode.ordinal();
        boolean z5 = false;
        if (ordinal != 1 && (ordinal == 2 || i4 > 4)) {
            z5 = true;
        }
        this.f4336x = z5;
    }

    public final void g(Canvas canvas) {
        c cVar = this.f4330r;
        C1198m c1198m = this.f4316d;
        if (cVar == null || c1198m == null) {
            return;
        }
        this.f4337y.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            float height = bounds.height() / c1198m.f11130j.height();
            this.f4337y.preScale(bounds.width() / c1198m.f11130j.width(), height);
        }
        cVar.f(canvas, this.f4337y, this.f4331s);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f4331s;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        C1198m c1198m = this.f4316d;
        if (c1198m == null) {
            return -1;
        }
        return c1198m.f11130j.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        C1198m c1198m = this.f4316d;
        if (c1198m == null) {
            return -1;
        }
        return c1198m.f11130j.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final C1321b h() {
        if (getCallback() == null) {
            return null;
        }
        C1321b c1321b = this.f4324l;
        if (c1321b != null) {
            Drawable.Callback callback = getCallback();
            Context context = (callback != null && (callback instanceof View)) ? ((View) callback).getContext() : null;
            Context context2 = c1321b.f11846a;
            if (!((context == null && context2 == null) || context2.equals(context))) {
                this.f4324l = null;
            }
        }
        if (this.f4324l == null) {
            this.f4324l = new C1321b(getCallback(), this.f4325m, this.f4316d.f11124d);
        }
        return this.f4324l;
    }

    public final void i() {
        this.f4322j.clear();
        this.f4317e.k(true);
        if (isVisible()) {
            return;
        }
        this.f4321i = LottieDrawable$OnVisibleAction.NONE;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        if (this.f4315K) {
            return;
        }
        this.f4315K = true;
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4317e;
        if (choreographer$FrameCallbackC1447d == null) {
            return false;
        }
        return choreographer$FrameCallbackC1447d.f12731n;
    }

    public final void j() {
        if (this.f4330r == null) {
            this.f4322j.add(new w(this, 1));
            return;
        }
        e();
        boolean b4 = b();
        LottieDrawable$OnVisibleAction lottieDrawable$OnVisibleAction = LottieDrawable$OnVisibleAction.NONE;
        if (b4 || this.f4317e.getRepeatCount() == 0) {
            if (isVisible()) {
                Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4317e;
                choreographer$FrameCallbackC1447d.f12731n = true;
                boolean f4 = choreographer$FrameCallbackC1447d.f();
                Iterator it = ((CopyOnWriteArraySet) choreographer$FrameCallbackC1447d.f12722e).iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorListener) it.next()).onAnimationStart(choreographer$FrameCallbackC1447d, f4);
                }
                choreographer$FrameCallbackC1447d.o((int) (choreographer$FrameCallbackC1447d.f() ? choreographer$FrameCallbackC1447d.c() : choreographer$FrameCallbackC1447d.d()));
                choreographer$FrameCallbackC1447d.f12725h = 0L;
                choreographer$FrameCallbackC1447d.f12727j = 0;
                if (choreographer$FrameCallbackC1447d.f12731n) {
                    choreographer$FrameCallbackC1447d.k(false);
                    Choreographer.getInstance().postFrameCallback(choreographer$FrameCallbackC1447d);
                }
                this.f4321i = lottieDrawable$OnVisibleAction;
            } else {
                this.f4321i = LottieDrawable$OnVisibleAction.PLAY;
            }
        }
        if (b()) {
            return;
        }
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d2 = this.f4317e;
        o((int) (choreographer$FrameCallbackC1447d2.f12723f < 0.0f ? choreographer$FrameCallbackC1447d2.d() : choreographer$FrameCallbackC1447d2.c()));
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d3 = this.f4317e;
        choreographer$FrameCallbackC1447d3.k(true);
        choreographer$FrameCallbackC1447d3.g(choreographer$FrameCallbackC1447d3.f());
        if (isVisible()) {
            return;
        }
        this.f4321i = lottieDrawable$OnVisibleAction;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k(android.graphics.Canvas r10, s0.c r11) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.a.k(android.graphics.Canvas, s0.c):void");
    }

    public final List l(C1343e c1343e) {
        if (this.f4330r == null) {
            C1446c.b("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.f4330r.h(c1343e, 0, arrayList, new C1343e(new String[0]));
        return arrayList;
    }

    public final void m() {
        if (this.f4330r == null) {
            this.f4322j.add(new w(this, 0));
            return;
        }
        e();
        boolean b4 = b();
        LottieDrawable$OnVisibleAction lottieDrawable$OnVisibleAction = LottieDrawable$OnVisibleAction.NONE;
        if (b4 || this.f4317e.getRepeatCount() == 0) {
            if (isVisible()) {
                Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4317e;
                choreographer$FrameCallbackC1447d.f12731n = true;
                choreographer$FrameCallbackC1447d.k(false);
                Choreographer.getInstance().postFrameCallback(choreographer$FrameCallbackC1447d);
                choreographer$FrameCallbackC1447d.f12725h = 0L;
                if (choreographer$FrameCallbackC1447d.f() && choreographer$FrameCallbackC1447d.f12726i == choreographer$FrameCallbackC1447d.d()) {
                    choreographer$FrameCallbackC1447d.f12726i = choreographer$FrameCallbackC1447d.c();
                } else if (!choreographer$FrameCallbackC1447d.f() && choreographer$FrameCallbackC1447d.f12726i == choreographer$FrameCallbackC1447d.c()) {
                    choreographer$FrameCallbackC1447d.f12726i = choreographer$FrameCallbackC1447d.d();
                }
                this.f4321i = lottieDrawable$OnVisibleAction;
            } else {
                this.f4321i = LottieDrawable$OnVisibleAction.RESUME;
            }
        }
        if (b()) {
            return;
        }
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d2 = this.f4317e;
        o((int) (choreographer$FrameCallbackC1447d2.f12723f < 0.0f ? choreographer$FrameCallbackC1447d2.d() : choreographer$FrameCallbackC1447d2.c()));
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d3 = this.f4317e;
        choreographer$FrameCallbackC1447d3.k(true);
        choreographer$FrameCallbackC1447d3.g(choreographer$FrameCallbackC1447d3.f());
        if (isVisible()) {
            return;
        }
        this.f4321i = lottieDrawable$OnVisibleAction;
    }

    public final boolean n(C1198m c1198m) {
        if (this.f4316d == c1198m) {
            return false;
        }
        this.f4315K = true;
        d();
        this.f4316d = c1198m;
        c();
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4317e;
        boolean z4 = choreographer$FrameCallbackC1447d.f12730m == null;
        choreographer$FrameCallbackC1447d.f12730m = c1198m;
        if (z4) {
            choreographer$FrameCallbackC1447d.q(Math.max(choreographer$FrameCallbackC1447d.f12728k, c1198m.f11131k), Math.min(choreographer$FrameCallbackC1447d.f12729l, c1198m.f11132l));
        } else {
            choreographer$FrameCallbackC1447d.q((int) c1198m.f11131k, (int) c1198m.f11132l);
        }
        float f4 = choreographer$FrameCallbackC1447d.f12726i;
        choreographer$FrameCallbackC1447d.f12726i = 0.0f;
        choreographer$FrameCallbackC1447d.o((int) f4);
        choreographer$FrameCallbackC1447d.h();
        z(this.f4317e.getAnimatedFraction());
        Iterator it = new ArrayList(this.f4322j).iterator();
        while (it.hasNext()) {
            InterfaceC1178C interfaceC1178C = (InterfaceC1178C) it.next();
            if (interfaceC1178C != null) {
                interfaceC1178C.run();
            }
            it.remove();
        }
        this.f4322j.clear();
        c1198m.f11121a.f11098a = this.f4332t;
        e();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public final void o(int i4) {
        if (this.f4316d == null) {
            this.f4322j.add(new k0.v(this, i4, 2));
        } else {
            this.f4317e.o(i4);
        }
    }

    public final void p(int i4) {
        if (this.f4316d == null) {
            this.f4322j.add(new k0.v(this, i4, 1));
            return;
        }
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4317e;
        choreographer$FrameCallbackC1447d.q(choreographer$FrameCallbackC1447d.f12728k, i4 + 0.99f);
    }

    public final void q(String str) {
        C1198m c1198m = this.f4316d;
        if (c1198m == null) {
            this.f4322j.add(new x(this, str, 0));
            return;
        }
        C1346h c4 = c1198m.c(str);
        if (c4 == null) {
            throw new IllegalArgumentException(E.c.a("Cannot find marker with name ", str, "."));
        }
        p((int) (c4.f11924b + c4.f11925c));
    }

    public final void r(float f4) {
        C1198m c1198m = this.f4316d;
        if (c1198m == null) {
            this.f4322j.add(new t(this, f4, 2));
            return;
        }
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4317e;
        float f5 = c1198m.f11131k;
        float f6 = c1198m.f11132l;
        PointF pointF = f.f12733a;
        choreographer$FrameCallbackC1447d.q(choreographer$FrameCallbackC1447d.f12728k, w.f.a(f6, f5, f4, f5));
    }

    public final void s(final int i4, final int i5) {
        if (this.f4316d == null) {
            this.f4322j.add(new InterfaceC1178C() { // from class: k0.A
                @Override // k0.InterfaceC1178C
                public final void run() {
                    com.airbnb.lottie.a.this.s(i4, i5);
                }
            });
        } else {
            this.f4317e.q(i4, i5 + 0.99f);
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j4) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j4);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
        this.f4331s = i4;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        C1446c.b("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z4, boolean z5) {
        boolean z6 = !isVisible();
        boolean visible = super.setVisible(z4, z5);
        LottieDrawable$OnVisibleAction lottieDrawable$OnVisibleAction = LottieDrawable$OnVisibleAction.RESUME;
        if (z4) {
            LottieDrawable$OnVisibleAction lottieDrawable$OnVisibleAction2 = this.f4321i;
            if (lottieDrawable$OnVisibleAction2 == LottieDrawable$OnVisibleAction.PLAY) {
                j();
            } else if (lottieDrawable$OnVisibleAction2 == lottieDrawable$OnVisibleAction) {
                m();
            }
        } else if (this.f4317e.f12731n) {
            i();
            this.f4321i = lottieDrawable$OnVisibleAction;
        } else if (!z6) {
            this.f4321i = LottieDrawable$OnVisibleAction.NONE;
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        j();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f4322j.clear();
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4317e;
        choreographer$FrameCallbackC1447d.k(true);
        choreographer$FrameCallbackC1447d.g(choreographer$FrameCallbackC1447d.f());
        if (isVisible()) {
            return;
        }
        this.f4321i = LottieDrawable$OnVisibleAction.NONE;
    }

    public final void t(String str) {
        C1198m c1198m = this.f4316d;
        if (c1198m == null) {
            this.f4322j.add(new x(this, str, 2));
            return;
        }
        C1346h c4 = c1198m.c(str);
        if (c4 == null) {
            throw new IllegalArgumentException(E.c.a("Cannot find marker with name ", str, "."));
        }
        int i4 = (int) c4.f11924b;
        s(i4, ((int) c4.f11925c) + i4);
    }

    public final void u(final String str, final String str2, final boolean z4) {
        C1198m c1198m = this.f4316d;
        if (c1198m == null) {
            this.f4322j.add(new InterfaceC1178C() { // from class: k0.y
                @Override // k0.InterfaceC1178C
                public final void run() {
                    com.airbnb.lottie.a.this.u(str, str2, z4);
                }
            });
            return;
        }
        C1346h c4 = c1198m.c(str);
        if (c4 == null) {
            throw new IllegalArgumentException(E.c.a("Cannot find marker with name ", str, "."));
        }
        int i4 = (int) c4.f11924b;
        C1346h c5 = this.f4316d.c(str2);
        if (c5 == null) {
            throw new IllegalArgumentException(E.c.a("Cannot find marker with name ", str2, "."));
        }
        s(i4, (int) (c5.f11924b + (z4 ? 1.0f : 0.0f)));
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public final void v(final float f4, final float f5) {
        C1198m c1198m = this.f4316d;
        if (c1198m == null) {
            this.f4322j.add(new InterfaceC1178C() { // from class: k0.u
                @Override // k0.InterfaceC1178C
                public final void run() {
                    com.airbnb.lottie.a.this.v(f4, f5);
                }
            });
            return;
        }
        float f6 = c1198m.f11131k;
        float f7 = c1198m.f11132l;
        PointF pointF = f.f12733a;
        s((int) w.f.a(f7, f6, f4, f6), (int) w.f.a(f7, f6, f5, f6));
    }

    public final void w(int i4) {
        if (this.f4316d == null) {
            this.f4322j.add(new k0.v(this, i4, 0));
            return;
        }
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4317e;
        choreographer$FrameCallbackC1447d.q(i4, (int) choreographer$FrameCallbackC1447d.f12729l);
    }

    public final void x(String str) {
        C1198m c1198m = this.f4316d;
        if (c1198m == null) {
            this.f4322j.add(new x(this, str, 1));
            return;
        }
        C1346h c4 = c1198m.c(str);
        if (c4 == null) {
            throw new IllegalArgumentException(E.c.a("Cannot find marker with name ", str, "."));
        }
        w((int) c4.f11924b);
    }

    public final void y(float f4) {
        C1198m c1198m = this.f4316d;
        if (c1198m == null) {
            this.f4322j.add(new t(this, f4, 1));
            return;
        }
        float f5 = c1198m.f11131k;
        float f6 = c1198m.f11132l;
        PointF pointF = f.f12733a;
        w((int) w.f.a(f6, f5, f4, f5));
    }

    public final void z(float f4) {
        C1198m c1198m = this.f4316d;
        if (c1198m == null) {
            this.f4322j.add(new t(this, f4, 0));
            return;
        }
        Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = this.f4317e;
        float f5 = c1198m.f11131k;
        float f6 = c1198m.f11132l;
        PointF pointF = f.f12733a;
        choreographer$FrameCallbackC1447d.o(((f6 - f5) * f4) + f5);
        C1189d.a();
    }
}
