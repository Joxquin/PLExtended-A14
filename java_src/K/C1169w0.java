package k;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import d.C0792a;
import f.C0832a;
import java.util.WeakHashMap;
/* renamed from: k.w0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1169w0 extends ViewGroup {

    /* renamed from: d  reason: collision with root package name */
    public boolean f11003d;

    /* renamed from: e  reason: collision with root package name */
    public final int f11004e;

    /* renamed from: f  reason: collision with root package name */
    public int f11005f;

    /* renamed from: g  reason: collision with root package name */
    public int f11006g;

    /* renamed from: h  reason: collision with root package name */
    public int f11007h;

    /* renamed from: i  reason: collision with root package name */
    public int f11008i;

    /* renamed from: j  reason: collision with root package name */
    public final float f11009j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f11010k;

    /* renamed from: l  reason: collision with root package name */
    public int[] f11011l;

    /* renamed from: m  reason: collision with root package name */
    public int[] f11012m;

    /* renamed from: n  reason: collision with root package name */
    public Drawable f11013n;

    /* renamed from: o  reason: collision with root package name */
    public int f11014o;

    /* renamed from: p  reason: collision with root package name */
    public int f11015p;

    /* renamed from: q  reason: collision with root package name */
    public final int f11016q;

    /* renamed from: r  reason: collision with root package name */
    public final int f11017r;

    public C1169w0(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1167v0;
    }

    final void e(int i4, Canvas canvas) {
        this.f11013n.setBounds(getPaddingLeft() + this.f11017r, i4, (getWidth() - getPaddingRight()) - this.f11017r, this.f11015p + i4);
        this.f11013n.draw(canvas);
    }

    final void f(int i4, Canvas canvas) {
        this.f11013n.setBounds(i4, getPaddingTop() + this.f11017r, this.f11014o + i4, (getHeight() - getPaddingBottom()) - this.f11017r);
        this.f11013n.draw(canvas);
    }

    @Override // android.view.ViewGroup
    /* renamed from: g */
    public C1167v0 generateDefaultLayoutParams() {
        int i4 = this.f11006g;
        if (i4 == 0) {
            return new C1167v0(-2);
        }
        if (i4 == 1) {
            return new C1167v0(-1);
        }
        return null;
    }

    @Override // android.view.View
    public final int getBaseline() {
        int i4;
        if (this.f11004e < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i5 = this.f11004e;
        if (childCount > i5) {
            View childAt = getChildAt(i5);
            int baseline = childAt.getBaseline();
            if (baseline == -1) {
                if (this.f11004e == 0) {
                    return -1;
                }
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            int i6 = this.f11005f;
            if (this.f11006g == 1 && (i4 = this.f11007h & 112) != 48) {
                if (i4 == 16) {
                    i6 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f11008i) / 2;
                } else if (i4 == 80) {
                    i6 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f11008i;
                }
            }
            return i6 + ((LinearLayout.LayoutParams) ((C1167v0) childAt.getLayoutParams())).topMargin + baseline;
        }
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
    }

    @Override // android.view.ViewGroup
    /* renamed from: h */
    public C1167v0 generateLayoutParams(AttributeSet attributeSet) {
        return new C1167v0(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* renamed from: i */
    public C1167v0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1167v0 ? new C1167v0((C1167v0) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C1167v0((ViewGroup.MarginLayoutParams) layoutParams) : new C1167v0(layoutParams);
    }

    public final boolean j(int i4) {
        if (i4 == 0) {
            return (this.f11016q & 1) != 0;
        } else if (i4 == getChildCount()) {
            return (this.f11016q & 4) != 0;
        } else if ((this.f11016q & 2) != 0) {
            for (int i5 = i4 - 1; i5 >= 0; i5--) {
                if (getChildAt(i5).getVisibility() != 8) {
                    return true;
                }
            }
            return false;
        } else {
            return false;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i4;
        if (this.f11013n == null) {
            return;
        }
        int i5 = 0;
        if (this.f11006g == 1) {
            int childCount = getChildCount();
            while (i5 < childCount) {
                View childAt = getChildAt(i5);
                if (childAt != null && childAt.getVisibility() != 8 && j(i5)) {
                    e((childAt.getTop() - ((LinearLayout.LayoutParams) ((C1167v0) childAt.getLayoutParams())).topMargin) - this.f11015p, canvas);
                }
                i5++;
            }
            if (j(childCount)) {
                View childAt2 = getChildAt(childCount - 1);
                e(childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f11015p : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((C1167v0) childAt2.getLayoutParams())).bottomMargin, canvas);
                return;
            }
            return;
        }
        int childCount2 = getChildCount();
        boolean a4 = c1.a(this);
        while (i5 < childCount2) {
            View childAt3 = getChildAt(i5);
            if (childAt3 != null && childAt3.getVisibility() != 8 && j(i5)) {
                C1167v0 c1167v0 = (C1167v0) childAt3.getLayoutParams();
                f(a4 ? childAt3.getRight() + ((LinearLayout.LayoutParams) c1167v0).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) c1167v0).leftMargin) - this.f11014o, canvas);
            }
            i5++;
        }
        if (j(childCount2)) {
            View childAt4 = getChildAt(childCount2 - 1);
            if (childAt4 != null) {
                C1167v0 c1167v02 = (C1167v0) childAt4.getLayoutParams();
                if (a4) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) c1167v02).leftMargin;
                    i4 = this.f11014o;
                    right = left - i4;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) c1167v02).rightMargin;
                }
            } else if (a4) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i4 = this.f11014o;
                right = left - i4;
            }
            f(right, canvas);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ab  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r26, int r27, int r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k.C1169w0.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x04cb  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x056b  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0579  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x06cb  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x06e7  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x08a4  */
    /* JADX WARN: Removed duplicated region for block: B:448:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r39, int r40) {
        /*
            Method dump skipped, instructions count: 2274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k.C1169w0.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public C1169w0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C1169w0(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Drawable drawable;
        int resourceId;
        this.f11003d = true;
        this.f11004e = -1;
        this.f11005f = 0;
        this.f11007h = 8388659;
        int[] iArr = C0792a.f8744n;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i4, 0);
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        androidx.core.view.H.b(this, context, iArr, attributeSet, obtainStyledAttributes, i4, 0);
        int i5 = obtainStyledAttributes.getInt(1, -1);
        if (i5 >= 0 && this.f11006g != i5) {
            this.f11006g = i5;
            requestLayout();
        }
        int i6 = obtainStyledAttributes.getInt(0, -1);
        if (i6 >= 0 && this.f11007h != i6) {
            i6 = (8388615 & i6) == 0 ? i6 | 8388611 : i6;
            this.f11007h = (i6 & 112) == 0 ? i6 | 48 : i6;
            requestLayout();
        }
        boolean z4 = obtainStyledAttributes.getBoolean(2, true);
        if (!z4) {
            this.f11003d = z4;
        }
        this.f11009j = obtainStyledAttributes.getFloat(4, -1.0f);
        this.f11004e = obtainStyledAttributes.getInt(3, -1);
        this.f11010k = obtainStyledAttributes.getBoolean(7, false);
        if (obtainStyledAttributes.hasValue(5) && (resourceId = obtainStyledAttributes.getResourceId(5, 0)) != 0) {
            drawable = C0832a.a(resourceId, context);
        } else {
            drawable = obtainStyledAttributes.getDrawable(5);
        }
        if (drawable != this.f11013n) {
            this.f11013n = drawable;
            if (drawable != null) {
                this.f11014o = drawable.getIntrinsicWidth();
                this.f11015p = drawable.getIntrinsicHeight();
            } else {
                this.f11014o = 0;
                this.f11015p = 0;
            }
            setWillNotDraw(drawable == null);
            requestLayout();
        }
        this.f11016q = obtainStyledAttributes.getInt(8, 0);
        this.f11017r = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        obtainStyledAttributes.recycle();
    }
}
