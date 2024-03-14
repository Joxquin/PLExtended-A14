package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.recyclerview.widget.j0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0276j0 implements S0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f3961a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AbstractC0280l0 f3962b;

    public /* synthetic */ C0276j0(AbstractC0280l0 abstractC0280l0, int i4) {
        this.f3961a = i4;
        this.f3962b = abstractC0280l0;
    }

    public final int a(View view) {
        int bottom;
        int i4;
        int i5 = this.f3961a;
        AbstractC0280l0 abstractC0280l0 = this.f3962b;
        switch (i5) {
            case 0:
                abstractC0280l0.getClass();
                bottom = view.getRight() + ((C0282m0) view.getLayoutParams()).f3984b.right;
                i4 = ((ViewGroup.MarginLayoutParams) ((C0282m0) view.getLayoutParams())).rightMargin;
                break;
            default:
                abstractC0280l0.getClass();
                bottom = view.getBottom() + ((C0282m0) view.getLayoutParams()).f3984b.bottom;
                i4 = ((ViewGroup.MarginLayoutParams) ((C0282m0) view.getLayoutParams())).bottomMargin;
                break;
        }
        return bottom + i4;
    }

    public final int b(View view) {
        int decoratedTop;
        int i4;
        int i5 = this.f3961a;
        AbstractC0280l0 abstractC0280l0 = this.f3962b;
        switch (i5) {
            case 0:
                abstractC0280l0.getClass();
                decoratedTop = view.getLeft() - ((C0282m0) view.getLayoutParams()).f3984b.left;
                i4 = ((ViewGroup.MarginLayoutParams) ((C0282m0) view.getLayoutParams())).leftMargin;
                break;
            default:
                abstractC0280l0.getClass();
                decoratedTop = AbstractC0280l0.getDecoratedTop(view);
                i4 = ((ViewGroup.MarginLayoutParams) ((C0282m0) view.getLayoutParams())).topMargin;
                break;
        }
        return decoratedTop - i4;
    }

    public final int c() {
        int height;
        int paddingBottom;
        int i4 = this.f3961a;
        AbstractC0280l0 abstractC0280l0 = this.f3962b;
        switch (i4) {
            case 0:
                height = abstractC0280l0.getWidth();
                paddingBottom = abstractC0280l0.getPaddingRight();
                break;
            default:
                height = abstractC0280l0.getHeight();
                paddingBottom = abstractC0280l0.getPaddingBottom();
                break;
        }
        return height - paddingBottom;
    }
}
