package androidx.core.view;

import android.view.View;
import android.view.WindowInsets;
import java.util.Objects;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class c0 {

    /* renamed from: b  reason: collision with root package name */
    public static final c0 f3105b = Z.f3100l;

    /* renamed from: a  reason: collision with root package name */
    public final a0 f3106a;

    public c0(WindowInsets windowInsets) {
        this.f3106a = new Z(this, windowInsets);
    }

    public static E.b e(E.b bVar, int i4, int i5, int i6, int i7) {
        int max = Math.max(0, bVar.f329a - i4);
        int max2 = Math.max(0, bVar.f330b - i5);
        int max3 = Math.max(0, bVar.f331c - i6);
        int max4 = Math.max(0, bVar.f332d - i7);
        return (max == i4 && max2 == i5 && max3 == i6 && max4 == i7) ? bVar : E.b.a(max, max2, max3, max4);
    }

    public static c0 g(WindowInsets windowInsets, View view) {
        windowInsets.getClass();
        c0 c0Var = new c0(windowInsets);
        if (view != null) {
            WeakHashMap weakHashMap = J.f3079a;
            if (A.b(view)) {
                c0 a4 = E.a(view);
                a0 a0Var = c0Var.f3106a;
                a0Var.q(a4);
                a0Var.d(view.getRootView());
            }
        }
        return c0Var;
    }

    @Deprecated
    public final int a() {
        return this.f3106a.j().f332d;
    }

    @Deprecated
    public final int b() {
        return this.f3106a.j().f329a;
    }

    @Deprecated
    public final int c() {
        return this.f3106a.j().f331c;
    }

    @Deprecated
    public final int d() {
        return this.f3106a.j().f330b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c0) {
            return Objects.equals(this.f3106a, ((c0) obj).f3106a);
        }
        return false;
    }

    public final WindowInsets f() {
        a0 a0Var = this.f3106a;
        if (a0Var instanceof V) {
            return ((V) a0Var).f3091c;
        }
        return null;
    }

    public final int hashCode() {
        a0 a0Var = this.f3106a;
        if (a0Var == null) {
            return 0;
        }
        return a0Var.hashCode();
    }

    public c0() {
        this.f3106a = new a0(this);
    }
}
