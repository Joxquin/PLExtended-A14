package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public final class S extends T {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f3876d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ S(AbstractC0280l0 abstractC0280l0, int i4) {
        super(abstractC0280l0);
        this.f3876d = i4;
    }

    @Override // androidx.recyclerview.widget.T
    public final int b(View view) {
        int bottom;
        int i4;
        int i5 = this.f3876d;
        AbstractC0280l0 abstractC0280l0 = this.f3899a;
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

    @Override // androidx.recyclerview.widget.T
    public final int c(View view) {
        int measuredHeight;
        int i4;
        int i5 = this.f3876d;
        AbstractC0280l0 abstractC0280l0 = this.f3899a;
        switch (i5) {
            case 0:
                C0282m0 c0282m0 = (C0282m0) view.getLayoutParams();
                abstractC0280l0.getClass();
                Rect rect = ((C0282m0) view.getLayoutParams()).f3984b;
                measuredHeight = view.getMeasuredWidth() + rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c0282m0).leftMargin;
                i4 = ((ViewGroup.MarginLayoutParams) c0282m0).rightMargin;
                break;
            default:
                C0282m0 c0282m02 = (C0282m0) view.getLayoutParams();
                abstractC0280l0.getClass();
                Rect rect2 = ((C0282m0) view.getLayoutParams()).f3984b;
                measuredHeight = view.getMeasuredHeight() + rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) c0282m02).topMargin;
                i4 = ((ViewGroup.MarginLayoutParams) c0282m02).bottomMargin;
                break;
        }
        return measuredHeight + i4;
    }

    @Override // androidx.recyclerview.widget.T
    public final int d(View view) {
        int decoratedTop;
        int i4;
        int i5 = this.f3876d;
        AbstractC0280l0 abstractC0280l0 = this.f3899a;
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

    @Override // androidx.recyclerview.widget.T
    public final int e() {
        int i4 = this.f3876d;
        AbstractC0280l0 abstractC0280l0 = this.f3899a;
        switch (i4) {
            case 0:
                return abstractC0280l0.getWidth();
            default:
                return abstractC0280l0.getHeight();
        }
    }

    @Override // androidx.recyclerview.widget.T
    public final int f() {
        int height;
        int paddingBottom;
        int i4 = this.f3876d;
        AbstractC0280l0 abstractC0280l0 = this.f3899a;
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

    @Override // androidx.recyclerview.widget.T
    public final int g() {
        int i4 = this.f3876d;
        AbstractC0280l0 abstractC0280l0 = this.f3899a;
        switch (i4) {
            case 0:
                return abstractC0280l0.getWidthMode();
            default:
                return abstractC0280l0.getHeightMode();
        }
    }

    @Override // androidx.recyclerview.widget.T
    public final int h() {
        int i4 = this.f3876d;
        AbstractC0280l0 abstractC0280l0 = this.f3899a;
        switch (i4) {
            case 0:
                return abstractC0280l0.getPaddingLeft();
            default:
                return abstractC0280l0.getPaddingTop();
        }
    }

    @Override // androidx.recyclerview.widget.T
    public final int i() {
        int height;
        int paddingBottom;
        int i4 = this.f3876d;
        AbstractC0280l0 abstractC0280l0 = this.f3899a;
        switch (i4) {
            case 0:
                height = abstractC0280l0.getWidth() - abstractC0280l0.getPaddingLeft();
                paddingBottom = abstractC0280l0.getPaddingRight();
                break;
            default:
                height = abstractC0280l0.getHeight() - abstractC0280l0.getPaddingTop();
                paddingBottom = abstractC0280l0.getPaddingBottom();
                break;
        }
        return height - paddingBottom;
    }

    @Override // androidx.recyclerview.widget.T
    public final int k(View view) {
        int i4 = this.f3876d;
        Rect rect = this.f3901c;
        AbstractC0280l0 abstractC0280l0 = this.f3899a;
        switch (i4) {
            case 0:
                abstractC0280l0.getTransformedBoundingBox(view, rect);
                return rect.right;
            default:
                abstractC0280l0.getTransformedBoundingBox(view, rect);
                return rect.bottom;
        }
    }

    @Override // androidx.recyclerview.widget.T
    public final int l(View view) {
        int i4 = this.f3876d;
        Rect rect = this.f3901c;
        AbstractC0280l0 abstractC0280l0 = this.f3899a;
        switch (i4) {
            case 0:
                abstractC0280l0.getTransformedBoundingBox(view, rect);
                return rect.left;
            default:
                abstractC0280l0.getTransformedBoundingBox(view, rect);
                return rect.top;
        }
    }

    @Override // androidx.recyclerview.widget.T
    public final void m(int i4) {
        int i5 = this.f3876d;
        AbstractC0280l0 abstractC0280l0 = this.f3899a;
        switch (i5) {
            case 0:
                abstractC0280l0.offsetChildrenHorizontal(i4);
                return;
            default:
                abstractC0280l0.offsetChildrenVertical(i4);
                return;
        }
    }

    public final int n(View view) {
        int measuredWidth;
        int i4;
        int i5 = this.f3876d;
        AbstractC0280l0 abstractC0280l0 = this.f3899a;
        switch (i5) {
            case 0:
                C0282m0 c0282m0 = (C0282m0) view.getLayoutParams();
                abstractC0280l0.getClass();
                Rect rect = ((C0282m0) view.getLayoutParams()).f3984b;
                measuredWidth = view.getMeasuredHeight() + rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c0282m0).topMargin;
                i4 = ((ViewGroup.MarginLayoutParams) c0282m0).bottomMargin;
                break;
            default:
                C0282m0 c0282m02 = (C0282m0) view.getLayoutParams();
                abstractC0280l0.getClass();
                Rect rect2 = ((C0282m0) view.getLayoutParams()).f3984b;
                measuredWidth = view.getMeasuredWidth() + rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) c0282m02).leftMargin;
                i4 = ((ViewGroup.MarginLayoutParams) c0282m02).rightMargin;
                break;
        }
        return measuredWidth + i4;
    }
}
