package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import d.C0792a;
import java.util.WeakHashMap;
/* renamed from: k.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1162t {

    /* renamed from: a  reason: collision with root package name */
    public final View f10975a;

    /* renamed from: d  reason: collision with root package name */
    public P0 f10978d;

    /* renamed from: e  reason: collision with root package name */
    public P0 f10979e;

    /* renamed from: f  reason: collision with root package name */
    public P0 f10980f;

    /* renamed from: c  reason: collision with root package name */
    public int f10977c = -1;

    /* renamed from: b  reason: collision with root package name */
    public final C1117A f10976b = C1117A.a();

    public C1162t(View view) {
        this.f10975a = view;
    }

    public final void a() {
        View view = this.f10975a;
        Drawable background = view.getBackground();
        if (background != null) {
            boolean z4 = false;
            if (this.f10978d != null) {
                if (this.f10980f == null) {
                    this.f10980f = new P0();
                }
                P0 p02 = this.f10980f;
                p02.f10815a = null;
                p02.f10818d = false;
                p02.f10816b = null;
                p02.f10817c = false;
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                ColorStateList b4 = androidx.core.view.D.b(view);
                if (b4 != null) {
                    p02.f10818d = true;
                    p02.f10815a = b4;
                }
                PorterDuff.Mode c4 = androidx.core.view.D.c(view);
                if (c4 != null) {
                    p02.f10817c = true;
                    p02.f10816b = c4;
                }
                if (p02.f10818d || p02.f10817c) {
                    C1117A.e(background, p02, view.getDrawableState());
                    z4 = true;
                }
                if (z4) {
                    return;
                }
            }
            P0 p03 = this.f10979e;
            if (p03 != null) {
                C1117A.e(background, p03, view.getDrawableState());
                return;
            }
            P0 p04 = this.f10978d;
            if (p04 != null) {
                C1117A.e(background, p04, view.getDrawableState());
            }
        }
    }

    public final ColorStateList b() {
        P0 p02 = this.f10979e;
        if (p02 != null) {
            return p02.f10815a;
        }
        return null;
    }

    public final PorterDuff.Mode c() {
        P0 p02 = this.f10979e;
        if (p02 != null) {
            return p02.f10816b;
        }
        return null;
    }

    public final void d(AttributeSet attributeSet, int i4) {
        ColorStateList h4;
        View view = this.f10975a;
        Context context = view.getContext();
        int[] iArr = C0792a.f8756z;
        R0 m4 = R0.m(context, attributeSet, iArr, i4);
        View view2 = this.f10975a;
        Context context2 = view2.getContext();
        TypedArray typedArray = m4.f10822b;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        androidx.core.view.H.b(view2, context2, iArr, attributeSet, typedArray, i4, 0);
        try {
            if (m4.l(0)) {
                this.f10977c = m4.i(0, -1);
                C1117A c1117a = this.f10976b;
                Context context3 = view.getContext();
                int i5 = this.f10977c;
                synchronized (c1117a) {
                    h4 = c1117a.f10719a.h(i5, context3);
                }
                if (h4 != null) {
                    g(h4);
                }
            }
            if (m4.l(1)) {
                androidx.core.view.D.i(view, m4.b(1));
            }
            if (m4.l(2)) {
                androidx.core.view.D.j(view, C1154o0.b(m4.h(2, -1), null));
            }
        } finally {
            m4.n();
        }
    }

    public final void e() {
        this.f10977c = -1;
        g(null);
        a();
    }

    public final void f(int i4) {
        ColorStateList colorStateList;
        this.f10977c = i4;
        C1117A c1117a = this.f10976b;
        if (c1117a != null) {
            Context context = this.f10975a.getContext();
            synchronized (c1117a) {
                colorStateList = c1117a.f10719a.h(i4, context);
            }
        } else {
            colorStateList = null;
        }
        g(colorStateList);
        a();
    }

    public final void g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f10978d == null) {
                this.f10978d = new P0();
            }
            P0 p02 = this.f10978d;
            p02.f10815a = colorStateList;
            p02.f10818d = true;
        } else {
            this.f10978d = null;
        }
        a();
    }

    public final void h(ColorStateList colorStateList) {
        if (this.f10979e == null) {
            this.f10979e = new P0();
        }
        P0 p02 = this.f10979e;
        p02.f10815a = colorStateList;
        p02.f10818d = true;
        a();
    }

    public final void i(PorterDuff.Mode mode) {
        if (this.f10979e == null) {
            this.f10979e = new P0();
        }
        P0 p02 = this.f10979e;
        p02.f10816b = mode;
        p02.f10817c = true;
        a();
    }
}
