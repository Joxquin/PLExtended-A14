package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import com.android.systemui.shared.system.QuickStepContract;
import j.C1097o;
import j.InterfaceC1071B;
import j.InterfaceC1074E;
import j.InterfaceC1095m;
import j.InterfaceC1096n;
import j.r;
import k.C1141i;
import k.C1151n;
import k.C1155p;
import k.C1157q;
import k.C1167v0;
import k.C1169w0;
import k.InterfaceC1153o;
import k.T0;
import k.c1;
/* loaded from: classes.dex */
public class ActionMenuView extends C1169w0 implements InterfaceC1096n, InterfaceC1074E {

    /* renamed from: A  reason: collision with root package name */
    public int f2565A;

    /* renamed from: B  reason: collision with root package name */
    public final int f2566B;

    /* renamed from: C  reason: collision with root package name */
    public final int f2567C;

    /* renamed from: D  reason: collision with root package name */
    public T0 f2568D;

    /* renamed from: s  reason: collision with root package name */
    public C1097o f2569s;

    /* renamed from: t  reason: collision with root package name */
    public Context f2570t;

    /* renamed from: u  reason: collision with root package name */
    public int f2571u;

    /* renamed from: v  reason: collision with root package name */
    public boolean f2572v;

    /* renamed from: w  reason: collision with root package name */
    public C1151n f2573w;

    /* renamed from: x  reason: collision with root package name */
    public InterfaceC1071B f2574x;

    /* renamed from: y  reason: collision with root package name */
    public InterfaceC1095m f2575y;

    /* renamed from: z  reason: collision with root package name */
    public boolean f2576z;

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public static C1157q k(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            C1157q c1157q = new C1157q();
            ((LinearLayout.LayoutParams) c1157q).gravity = 16;
            return c1157q;
        }
        C1157q c1157q2 = layoutParams instanceof C1157q ? new C1157q((C1157q) layoutParams) : new C1157q(layoutParams);
        if (((LinearLayout.LayoutParams) c1157q2).gravity <= 0) {
            ((LinearLayout.LayoutParams) c1157q2).gravity = 16;
        }
        return c1157q2;
    }

    @Override // j.InterfaceC1074E
    public final void a(C1097o c1097o) {
        this.f2569s = c1097o;
    }

    @Override // k.C1169w0, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1157q;
    }

    @Override // j.InterfaceC1096n
    public final boolean d(r rVar) {
        return this.f2569s.q(rVar, null, 0);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // k.C1169w0
    public final C1167v0 g() {
        C1157q c1157q = new C1157q();
        ((LinearLayout.LayoutParams) c1157q).gravity = 16;
        return c1157q;
    }

    @Override // k.C1169w0, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        C1157q c1157q = new C1157q();
        ((LinearLayout.LayoutParams) c1157q).gravity = 16;
        return c1157q;
    }

    @Override // k.C1169w0, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return k(layoutParams);
    }

    @Override // k.C1169w0
    public final C1167v0 h(AttributeSet attributeSet) {
        return new C1157q(getContext(), attributeSet);
    }

    @Override // k.C1169w0
    public final /* bridge */ /* synthetic */ C1167v0 i(ViewGroup.LayoutParams layoutParams) {
        return k(layoutParams);
    }

    public final C1097o l() {
        if (this.f2569s == null) {
            Context context = getContext();
            C1097o c1097o = new C1097o(context);
            this.f2569s = c1097o;
            c1097o.f10568e = new k.r(this);
            C1151n c1151n = new C1151n(context);
            this.f2573w = c1151n;
            c1151n.f10933m = true;
            c1151n.f10934n = true;
            InterfaceC1071B interfaceC1071B = this.f2574x;
            if (interfaceC1071B == null) {
                interfaceC1071B = new C1155p();
            }
            c1151n.f10928h = interfaceC1071B;
            this.f2569s.b(c1151n, this.f2570t);
            C1151n c1151n2 = this.f2573w;
            c1151n2.f10931k = this;
            this.f2569s = c1151n2.f10926f;
        }
        return this.f2569s;
    }

    public final boolean m(int i4) {
        boolean z4 = false;
        if (i4 == 0) {
            return false;
        }
        View childAt = getChildAt(i4 - 1);
        View childAt2 = getChildAt(i4);
        if (i4 < getChildCount() && (childAt instanceof InterfaceC1153o)) {
            z4 = false | ((InterfaceC1153o) childAt).a();
        }
        return (i4 <= 0 || !(childAt2 instanceof InterfaceC1153o)) ? z4 : z4 | ((InterfaceC1153o) childAt2).d();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C1151n c1151n = this.f2573w;
        if (c1151n != null) {
            c1151n.d();
            if (this.f2573w.k()) {
                this.f2573w.e();
                this.f2573w.l();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C1151n c1151n = this.f2573w;
        if (c1151n != null) {
            c1151n.e();
            C1141i c1141i = c1151n.f10941u;
            if (c1141i == null || !c1141i.b()) {
                return;
            }
            c1141i.f10464j.dismiss();
        }
    }

    @Override // k.C1169w0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int width;
        int i8;
        if (!this.f2576z) {
            super.onLayout(z4, i4, i5, i6, i7);
            return;
        }
        int childCount = getChildCount();
        int i9 = (i7 - i5) / 2;
        int i10 = this.f11014o;
        int i11 = i6 - i4;
        int paddingRight = (i11 - getPaddingRight()) - getPaddingLeft();
        boolean a4 = c1.a(this);
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                C1157q c1157q = (C1157q) childAt.getLayoutParams();
                if (c1157q.f10950a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (m(i14)) {
                        measuredWidth += i10;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a4) {
                        i8 = getPaddingLeft() + ((LinearLayout.LayoutParams) c1157q).leftMargin;
                        width = i8 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) c1157q).rightMargin;
                        i8 = width - measuredWidth;
                    }
                    int i15 = i9 - (measuredHeight / 2);
                    childAt.layout(i8, i15, width, measuredHeight + i15);
                    paddingRight -= measuredWidth;
                    i12 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c1157q).leftMargin) + ((LinearLayout.LayoutParams) c1157q).rightMargin;
                    m(i14);
                    i13++;
                }
            }
        }
        if (childCount == 1 && i12 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i16 = (i11 / 2) - (measuredWidth2 / 2);
            int i17 = i9 - (measuredHeight2 / 2);
            childAt2.layout(i16, i17, measuredWidth2 + i16, measuredHeight2 + i17);
            return;
        }
        int i18 = i13 - (i12 ^ 1);
        int max = Math.max(0, i18 > 0 ? paddingRight / i18 : 0);
        if (a4) {
            int width2 = getWidth() - getPaddingRight();
            for (int i19 = 0; i19 < childCount; i19++) {
                View childAt3 = getChildAt(i19);
                C1157q c1157q2 = (C1157q) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c1157q2.f10950a) {
                    int i20 = width2 - ((LinearLayout.LayoutParams) c1157q2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i21 = i9 - (measuredHeight3 / 2);
                    childAt3.layout(i20 - measuredWidth3, i21, i20, measuredHeight3 + i21);
                    width2 = i20 - ((measuredWidth3 + ((LinearLayout.LayoutParams) c1157q2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i22 = 0; i22 < childCount; i22++) {
            View childAt4 = getChildAt(i22);
            C1157q c1157q3 = (C1157q) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c1157q3.f10950a) {
                int i23 = paddingLeft + ((LinearLayout.LayoutParams) c1157q3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i24 = i9 - (measuredHeight4 / 2);
                childAt4.layout(i23, i24, i23 + measuredWidth4, measuredHeight4 + i24);
                paddingLeft = measuredWidth4 + ((LinearLayout.LayoutParams) c1157q3).rightMargin + max + i23;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v31 */
    @Override // k.C1169w0, android.view.View
    public final void onMeasure(int i4, int i5) {
        int i6;
        int i7;
        ?? r12;
        int i8;
        int i9;
        int i10;
        int i11;
        C1097o c1097o;
        boolean z4 = this.f2576z;
        boolean z5 = View.MeasureSpec.getMode(i4) == 1073741824;
        this.f2576z = z5;
        if (z4 != z5) {
            this.f2565A = 0;
        }
        int size = View.MeasureSpec.getSize(i4);
        if (this.f2576z && (c1097o = this.f2569s) != null && size != this.f2565A) {
            this.f2565A = size;
            c1097o.p(true);
        }
        int childCount = getChildCount();
        if (!this.f2576z || childCount <= 0) {
            for (int i12 = 0; i12 < childCount; i12++) {
                C1157q c1157q = (C1157q) getChildAt(i12).getLayoutParams();
                ((LinearLayout.LayoutParams) c1157q).rightMargin = 0;
                ((LinearLayout.LayoutParams) c1157q).leftMargin = 0;
            }
            super.onMeasure(i4, i5);
            return;
        }
        int mode = View.MeasureSpec.getMode(i5);
        int size2 = View.MeasureSpec.getSize(i4);
        int size3 = View.MeasureSpec.getSize(i5);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i5, paddingBottom, -2);
        int i13 = size2 - paddingRight;
        int i14 = this.f2566B;
        int i15 = i13 / i14;
        int i16 = i13 % i14;
        if (i15 == 0) {
            setMeasuredDimension(i13, 0);
            return;
        }
        int i17 = (i16 / i15) + i14;
        int childCount2 = getChildCount();
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        boolean z6 = false;
        int i22 = 0;
        long j4 = 0;
        while (i21 < childCount2) {
            View childAt = getChildAt(i21);
            int i23 = size3;
            if (childAt.getVisibility() == 8) {
                i9 = mode;
                i8 = i13;
                i10 = paddingBottom;
            } else {
                boolean z7 = childAt instanceof ActionMenuItemView;
                int i24 = i19 + 1;
                if (z7) {
                    int i25 = this.f2567C;
                    i7 = i24;
                    r12 = 0;
                    childAt.setPadding(i25, 0, i25, 0);
                } else {
                    i7 = i24;
                    r12 = 0;
                }
                C1157q c1157q2 = (C1157q) childAt.getLayoutParams();
                c1157q2.f10955f = r12;
                c1157q2.f10952c = r12;
                c1157q2.f10951b = r12;
                c1157q2.f10953d = r12;
                ((LinearLayout.LayoutParams) c1157q2).leftMargin = r12;
                ((LinearLayout.LayoutParams) c1157q2).rightMargin = r12;
                c1157q2.f10954e = z7 && ((ActionMenuItemView) childAt).r();
                int i26 = c1157q2.f10950a ? 1 : i15;
                i8 = i13;
                C1157q c1157q3 = (C1157q) childAt.getLayoutParams();
                i9 = mode;
                i10 = paddingBottom;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - paddingBottom, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z7 ? (ActionMenuItemView) childAt : null;
                boolean z8 = actionMenuItemView != null && actionMenuItemView.r();
                if (i26 <= 0 || (z8 && i26 < 2)) {
                    i11 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i26 * i17, Integer.MIN_VALUE), makeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i11 = measuredWidth / i17;
                    if (measuredWidth % i17 != 0) {
                        i11++;
                    }
                    if (z8 && i11 < 2) {
                        i11 = 2;
                    }
                }
                c1157q3.f10953d = !c1157q3.f10950a && z8;
                c1157q3.f10951b = i11;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i17 * i11, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), makeMeasureSpec);
                i20 = Math.max(i20, i11);
                if (c1157q2.f10953d) {
                    i22++;
                }
                if (c1157q2.f10950a) {
                    z6 = true;
                }
                i15 -= i11;
                i18 = Math.max(i18, childAt.getMeasuredHeight());
                if (i11 == 1) {
                    j4 |= 1 << i21;
                }
                i19 = i7;
            }
            i21++;
            size3 = i23;
            paddingBottom = i10;
            i13 = i8;
            mode = i9;
        }
        int i27 = mode;
        int i28 = i13;
        int i29 = size3;
        boolean z9 = z6 && i19 == 2;
        boolean z10 = false;
        while (i22 > 0 && i15 > 0) {
            int i30 = Integer.MAX_VALUE;
            int i31 = 0;
            long j5 = 0;
            for (int i32 = 0; i32 < childCount2; i32++) {
                C1157q c1157q4 = (C1157q) getChildAt(i32).getLayoutParams();
                if (c1157q4.f10953d) {
                    int i33 = c1157q4.f10951b;
                    if (i33 < i30) {
                        j5 = 1 << i32;
                        i30 = i33;
                        i31 = 1;
                    } else if (i33 == i30) {
                        i31++;
                        j5 |= 1 << i32;
                    }
                }
            }
            j4 |= j5;
            if (i31 > i15) {
                break;
            }
            int i34 = i30 + 1;
            int i35 = 0;
            while (i35 < childCount2) {
                View childAt2 = getChildAt(i35);
                C1157q c1157q5 = (C1157q) childAt2.getLayoutParams();
                int i36 = childMeasureSpec;
                int i37 = childCount2;
                long j6 = 1 << i35;
                if ((j5 & j6) != 0) {
                    if (z9 && c1157q5.f10954e && i15 == 1) {
                        int i38 = this.f2567C;
                        childAt2.setPadding(i38 + i17, 0, i38, 0);
                    }
                    c1157q5.f10951b++;
                    c1157q5.f10955f = true;
                    i15--;
                } else if (c1157q5.f10951b == i34) {
                    j4 |= j6;
                }
                i35++;
                childMeasureSpec = i36;
                childCount2 = i37;
            }
            z10 = true;
        }
        int i39 = childMeasureSpec;
        int i40 = childCount2;
        boolean z11 = !z6 && i19 == 1;
        if (i15 <= 0 || j4 == 0 || (i15 >= i19 - 1 && !z11 && i20 <= 1)) {
            i6 = i40;
        } else {
            float bitCount = Long.bitCount(j4);
            if (!z11) {
                if ((j4 & 1) != 0 && !((C1157q) getChildAt(0).getLayoutParams()).f10954e) {
                    bitCount -= 0.5f;
                }
                int i41 = i40 - 1;
                if ((j4 & (1 << i41)) != 0 && !((C1157q) getChildAt(i41).getLayoutParams()).f10954e) {
                    bitCount -= 0.5f;
                }
            }
            int i42 = bitCount > 0.0f ? (int) ((i15 * i17) / bitCount) : 0;
            boolean z12 = z10;
            i6 = i40;
            for (int i43 = 0; i43 < i6; i43++) {
                if ((j4 & (1 << i43)) != 0) {
                    View childAt3 = getChildAt(i43);
                    C1157q c1157q6 = (C1157q) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c1157q6.f10952c = i42;
                        c1157q6.f10955f = true;
                        if (i43 == 0 && !c1157q6.f10954e) {
                            ((LinearLayout.LayoutParams) c1157q6).leftMargin = (-i42) / 2;
                        }
                        z12 = true;
                    } else {
                        if (c1157q6.f10950a) {
                            c1157q6.f10952c = i42;
                            c1157q6.f10955f = true;
                            ((LinearLayout.LayoutParams) c1157q6).rightMargin = (-i42) / 2;
                            z12 = true;
                        } else {
                            if (i43 != 0) {
                                ((LinearLayout.LayoutParams) c1157q6).leftMargin = i42 / 2;
                            }
                            if (i43 != i6 - 1) {
                                ((LinearLayout.LayoutParams) c1157q6).rightMargin = i42 / 2;
                            }
                        }
                    }
                }
            }
            z10 = z12;
        }
        if (z10) {
            for (int i44 = 0; i44 < i6; i44++) {
                View childAt4 = getChildAt(i44);
                C1157q c1157q7 = (C1157q) childAt4.getLayoutParams();
                if (c1157q7.f10955f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((c1157q7.f10951b * i17) + c1157q7.f10952c, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), i39);
                }
            }
        }
        setMeasuredDimension(i28, i27 != 1073741824 ? i18 : i29);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11003d = false;
        float f4 = context.getResources().getDisplayMetrics().density;
        this.f2566B = (int) (56.0f * f4);
        this.f2567C = (int) (f4 * 4.0f);
        this.f2570t = context;
        this.f2571u = 0;
    }

    @Override // k.C1169w0, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1157q(getContext(), attributeSet);
    }
}
