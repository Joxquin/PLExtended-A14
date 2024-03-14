package androidx.recyclerview.widget;

import android.view.View;
/* loaded from: classes.dex */
public final class T0 {

    /* renamed from: a  reason: collision with root package name */
    public final S0 f3902a;

    /* renamed from: b  reason: collision with root package name */
    public final R0 f3903b = new R0();

    public T0(C0276j0 c0276j0) {
        this.f3902a = c0276j0;
    }

    public final View a(int i4, int i5, int i6, int i7) {
        int paddingTop;
        View childAt;
        C0276j0 c0276j0 = (C0276j0) this.f3902a;
        int i8 = c0276j0.f3961a;
        AbstractC0280l0 abstractC0280l0 = c0276j0.f3962b;
        switch (i8) {
            case 0:
                paddingTop = abstractC0280l0.getPaddingLeft();
                break;
            default:
                paddingTop = abstractC0280l0.getPaddingTop();
                break;
        }
        int c4 = c0276j0.c();
        int i9 = i5 > i4 ? 1 : -1;
        View view = null;
        while (i4 != i5) {
            int i10 = c0276j0.f3961a;
            AbstractC0280l0 abstractC0280l02 = c0276j0.f3962b;
            switch (i10) {
                case 0:
                    childAt = abstractC0280l02.getChildAt(i4);
                    break;
                default:
                    childAt = abstractC0280l02.getChildAt(i4);
                    break;
            }
            int b4 = c0276j0.b(childAt);
            int a4 = c0276j0.a(childAt);
            R0 r02 = this.f3903b;
            r02.f3870b = paddingTop;
            r02.f3871c = c4;
            r02.f3872d = b4;
            r02.f3873e = a4;
            if (i6 != 0) {
                r02.f3869a = i6 | 0;
                if (r02.a()) {
                    return childAt;
                }
            }
            if (i7 != 0) {
                r02.f3869a = i7 | 0;
                if (r02.a()) {
                    view = childAt;
                }
            }
            i4 += i9;
        }
        return view;
    }

    public final boolean b(View view) {
        int paddingTop;
        C0276j0 c0276j0 = (C0276j0) this.f3902a;
        int i4 = c0276j0.f3961a;
        AbstractC0280l0 abstractC0280l0 = c0276j0.f3962b;
        switch (i4) {
            case 0:
                paddingTop = abstractC0280l0.getPaddingLeft();
                break;
            default:
                paddingTop = abstractC0280l0.getPaddingTop();
                break;
        }
        int c4 = c0276j0.c();
        int b4 = c0276j0.b(view);
        int a4 = c0276j0.a(view);
        R0 r02 = this.f3903b;
        r02.f3870b = paddingTop;
        r02.f3871c = c4;
        r02.f3872d = b4;
        r02.f3873e = a4;
        r02.f3869a = 24579 | 0;
        return r02.a();
    }
}
