package androidx.core.view;

import android.view.WindowInsets;
/* loaded from: classes.dex */
public class Y extends X {

    /* renamed from: i  reason: collision with root package name */
    public E.b f3097i;

    /* renamed from: j  reason: collision with root package name */
    public E.b f3098j;

    /* renamed from: k  reason: collision with root package name */
    public E.b f3099k;

    public Y(c0 c0Var, WindowInsets windowInsets) {
        super(c0Var, windowInsets);
        this.f3097i = null;
        this.f3098j = null;
        this.f3099k = null;
    }

    @Override // androidx.core.view.a0
    public E.b g() {
        if (this.f3098j == null) {
            this.f3098j = E.b.b(this.f3091c.getMandatorySystemGestureInsets());
        }
        return this.f3098j;
    }

    @Override // androidx.core.view.a0
    public E.b i() {
        if (this.f3097i == null) {
            this.f3097i = E.b.b(this.f3091c.getSystemGestureInsets());
        }
        return this.f3097i;
    }

    @Override // androidx.core.view.a0
    public E.b k() {
        if (this.f3099k == null) {
            this.f3099k = E.b.b(this.f3091c.getTappableElementInsets());
        }
        return this.f3099k;
    }

    @Override // androidx.core.view.V, androidx.core.view.a0
    public c0 l(int i4, int i5, int i6, int i7) {
        return c0.g(this.f3091c.inset(i4, i5, i6, i7), null);
    }
}
