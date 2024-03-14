package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
/* loaded from: classes.dex */
public abstract class T {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC0280l0 f3899a;

    /* renamed from: b  reason: collision with root package name */
    public int f3900b = Integer.MIN_VALUE;

    /* renamed from: c  reason: collision with root package name */
    public final Rect f3901c = new Rect();

    public T(AbstractC0280l0 abstractC0280l0) {
        this.f3899a = abstractC0280l0;
    }

    public static S a(AbstractC0280l0 abstractC0280l0, int i4) {
        if (i4 != 0) {
            if (i4 == 1) {
                return new S(abstractC0280l0, 1);
            }
            throw new IllegalArgumentException("invalid orientation");
        }
        return new S(abstractC0280l0, 0);
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e();

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public final int j() {
        if (Integer.MIN_VALUE == this.f3900b) {
            return 0;
        }
        return i() - this.f3900b;
    }

    public abstract int k(View view);

    public abstract int l(View view);

    public abstract void m(int i4);
}
