package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.A;
import androidx.core.view.C0173j;
import androidx.core.view.C0187y;
import androidx.core.view.H;
import androidx.core.view.InterfaceC0169f;
import androidx.core.view.InterfaceC0174k;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import d.C0792a;
import e.C0809a;
import i.j;
import j.C1097o;
import j.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import k.C1123G;
import k.C1151n;
import k.I;
import k.J0;
import k.R0;
import k.T0;
import k.U0;
import k.W0;
import k.Y0;
/* loaded from: classes.dex */
public class Toolbar extends ViewGroup implements InterfaceC0169f {

    /* renamed from: A  reason: collision with root package name */
    public CharSequence f2641A;

    /* renamed from: B  reason: collision with root package name */
    public CharSequence f2642B;

    /* renamed from: C  reason: collision with root package name */
    public ColorStateList f2643C;

    /* renamed from: D  reason: collision with root package name */
    public ColorStateList f2644D;

    /* renamed from: E  reason: collision with root package name */
    public boolean f2645E;

    /* renamed from: F  reason: collision with root package name */
    public boolean f2646F;

    /* renamed from: G  reason: collision with root package name */
    public final ArrayList f2647G;

    /* renamed from: H  reason: collision with root package name */
    public final ArrayList f2648H;

    /* renamed from: I  reason: collision with root package name */
    public final int[] f2649I;

    /* renamed from: J  reason: collision with root package name */
    public final C0173j f2650J;

    /* renamed from: K  reason: collision with root package name */
    public ArrayList f2651K;

    /* renamed from: L  reason: collision with root package name */
    public final T0 f2652L;

    /* renamed from: M  reason: collision with root package name */
    public b f2653M;

    /* renamed from: N  reason: collision with root package name */
    public C1151n f2654N;

    /* renamed from: O  reason: collision with root package name */
    public a f2655O;

    /* renamed from: P  reason: collision with root package name */
    public boolean f2656P;

    /* renamed from: Q  reason: collision with root package name */
    public final U0 f2657Q;

    /* renamed from: d  reason: collision with root package name */
    public ActionMenuView f2658d;

    /* renamed from: e  reason: collision with root package name */
    public AppCompatTextView f2659e;

    /* renamed from: f  reason: collision with root package name */
    public AppCompatTextView f2660f;

    /* renamed from: g  reason: collision with root package name */
    public C1123G f2661g;

    /* renamed from: h  reason: collision with root package name */
    public I f2662h;

    /* renamed from: i  reason: collision with root package name */
    public final Drawable f2663i;

    /* renamed from: j  reason: collision with root package name */
    public final CharSequence f2664j;

    /* renamed from: k  reason: collision with root package name */
    public C1123G f2665k;

    /* renamed from: l  reason: collision with root package name */
    public View f2666l;

    /* renamed from: m  reason: collision with root package name */
    public Context f2667m;

    /* renamed from: n  reason: collision with root package name */
    public int f2668n;

    /* renamed from: o  reason: collision with root package name */
    public int f2669o;

    /* renamed from: p  reason: collision with root package name */
    public int f2670p;

    /* renamed from: q  reason: collision with root package name */
    public final int f2671q;

    /* renamed from: r  reason: collision with root package name */
    public final int f2672r;

    /* renamed from: s  reason: collision with root package name */
    public final int f2673s;

    /* renamed from: t  reason: collision with root package name */
    public final int f2674t;

    /* renamed from: u  reason: collision with root package name */
    public final int f2675u;

    /* renamed from: v  reason: collision with root package name */
    public final int f2676v;

    /* renamed from: w  reason: collision with root package name */
    public J0 f2677w;

    /* renamed from: x  reason: collision with root package name */
    public final int f2678x;

    /* renamed from: y  reason: collision with root package name */
    public final int f2679y;

    /* renamed from: z  reason: collision with root package name */
    public final int f2680z;

    public Toolbar(Context context) {
        this(context, null);
    }

    public static W0 f(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof W0 ? new W0((W0) layoutParams) : layoutParams instanceof C0809a ? new W0((C0809a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new W0((ViewGroup.MarginLayoutParams) layoutParams) : new W0(layoutParams);
    }

    public static int k(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int m(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    @Override // androidx.core.view.InterfaceC0169f
    public final void addMenuProvider(InterfaceC0174k interfaceC0174k) {
        C0173j c0173j = this.f2650J;
        c0173j.f3118b.add(interfaceC0174k);
        c0173j.f3117a.run();
    }

    public final void b(int i4, List list) {
        WeakHashMap weakHashMap = J.f3079a;
        boolean z4 = C0187y.c(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i4, C0187y.c(this));
        ArrayList arrayList = (ArrayList) list;
        arrayList.clear();
        if (!z4) {
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                W0 w02 = (W0) childAt.getLayoutParams();
                if (w02.f10839b == 0 && y(childAt)) {
                    int i6 = w02.f8905a;
                    WeakHashMap weakHashMap2 = J.f3079a;
                    int c4 = C0187y.c(this);
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i6, c4) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = c4 == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i7 = childCount - 1; i7 >= 0; i7--) {
            View childAt2 = getChildAt(i7);
            W0 w03 = (W0) childAt2.getLayoutParams();
            if (w03.f10839b == 0 && y(childAt2)) {
                int i8 = w03.f8905a;
                WeakHashMap weakHashMap3 = J.f3079a;
                int c5 = C0187y.c(this);
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i8, c5) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = c5 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    public final void c(View view, boolean z4) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        W0 w02 = layoutParams == null ? new W0() : !checkLayoutParams(layoutParams) ? f(layoutParams) : (W0) layoutParams;
        w02.f10839b = 1;
        if (!z4 || this.f2666l == null) {
            addView(view, w02);
            return;
        }
        view.setLayoutParams(w02);
        this.f2648H.add(view);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof W0);
    }

    public final void d() {
        if (this.f2658d == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f2658d = actionMenuView;
            int i4 = this.f2668n;
            if (actionMenuView.f2571u != i4) {
                actionMenuView.f2571u = i4;
                if (i4 == 0) {
                    actionMenuView.f2570t = actionMenuView.getContext();
                } else {
                    actionMenuView.f2570t = new ContextThemeWrapper(actionMenuView.getContext(), i4);
                }
            }
            ActionMenuView actionMenuView2 = this.f2658d;
            actionMenuView2.f2568D = this.f2652L;
            T0 t02 = new T0(this);
            actionMenuView2.f2574x = null;
            actionMenuView2.f2575y = t02;
            W0 w02 = new W0();
            w02.f8905a = (this.f2671q & 112) | 8388613;
            this.f2658d.setLayoutParams(w02);
            c(this.f2658d, false);
        }
    }

    public final void e() {
        if (this.f2661g == null) {
            this.f2661g = new C1123G(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            W0 w02 = new W0();
            w02.f8905a = (this.f2671q & 112) | 8388611;
            this.f2661g.setLayoutParams(w02);
        }
    }

    public final int g(View view, int i4) {
        W0 w02 = (W0) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = i4 > 0 ? (measuredHeight - i4) / 2 : 0;
        int i6 = w02.f8905a & 112;
        if (i6 != 16 && i6 != 48 && i6 != 80) {
            i6 = this.f2680z & 112;
        }
        if (i6 != 48) {
            if (i6 != 80) {
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i7 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                int i8 = ((ViewGroup.MarginLayoutParams) w02).topMargin;
                if (i7 < i8) {
                    i7 = i8;
                } else {
                    int i9 = (((height - paddingBottom) - measuredHeight) - i7) - paddingTop;
                    int i10 = ((ViewGroup.MarginLayoutParams) w02).bottomMargin;
                    if (i9 < i10) {
                        i7 = Math.max(0, i7 - (i10 - i9));
                    }
                }
                return paddingTop + i7;
            }
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) w02).bottomMargin) - i5;
        }
        return getPaddingTop() - i5;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new W0();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return f(layoutParams);
    }

    public final int h() {
        C1097o c1097o;
        ActionMenuView actionMenuView = this.f2658d;
        if ((actionMenuView == null || (c1097o = actionMenuView.f2569s) == null || !c1097o.hasVisibleItems()) ? false : true) {
            J0 j02 = this.f2677w;
            return Math.max(j02 != null ? j02.f10789g ? j02.f10783a : j02.f10784b : 0, Math.max(this.f2679y, 0));
        }
        J0 j03 = this.f2677w;
        return j03 != null ? j03.f10789g ? j03.f10783a : j03.f10784b : 0;
    }

    public final int i() {
        C1123G c1123g = this.f2661g;
        if ((c1123g != null ? c1123g.getDrawable() : null) != null) {
            J0 j02 = this.f2677w;
            return Math.max(j02 != null ? j02.f10789g ? j02.f10784b : j02.f10783a : 0, Math.max(this.f2678x, 0));
        }
        J0 j03 = this.f2677w;
        return j03 != null ? j03.f10789g ? j03.f10784b : j03.f10783a : 0;
    }

    public final ArrayList j() {
        ArrayList arrayList = new ArrayList();
        C1097o l4 = l();
        for (int i4 = 0; i4 < l4.size(); i4++) {
            arrayList.add(l4.getItem(i4));
        }
        return arrayList;
    }

    public final C1097o l() {
        d();
        ActionMenuView actionMenuView = this.f2658d;
        if (actionMenuView.f2569s == null) {
            C1097o l4 = actionMenuView.l();
            if (this.f2655O == null) {
                this.f2655O = new a(this);
            }
            this.f2658d.f2573w.f10938r = true;
            l4.b(this.f2655O, this.f2667m);
            z();
        }
        return this.f2658d.l();
    }

    public final void n() {
        Iterator it = this.f2651K.iterator();
        while (it.hasNext()) {
            l().removeItem(((MenuItem) it.next()).getItemId());
        }
        C1097o l4 = l();
        ArrayList j4 = j();
        C0173j c0173j = this.f2650J;
        j jVar = new j(getContext());
        Iterator it2 = c0173j.f3118b.iterator();
        while (it2.hasNext()) {
            ((InterfaceC0174k) it2.next()).c(l4, jVar);
        }
        ArrayList j5 = j();
        j5.removeAll(j4);
        this.f2651K = j5;
    }

    public final boolean o(View view) {
        return view.getParent() == this || this.f2648H.contains(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        z();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f2657Q);
        z();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f2646F = false;
        }
        if (!this.f2646F) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f2646F = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f2646F = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x02af A[LOOP:0: B:112:0x02ad->B:113:0x02af, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02d1 A[LOOP:1: B:115:0x02cf->B:116:0x02d1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02f5 A[LOOP:2: B:118:0x02f3->B:119:0x02f5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0346 A[LOOP:3: B:127:0x0344->B:128:0x0346, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0235  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 859
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0284  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 649
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof Y0)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Y0 y02 = (Y0) parcelable;
        super.onRestoreInstanceState(y02.f1528d);
        ActionMenuView actionMenuView = this.f2658d;
        C1097o c1097o = actionMenuView != null ? actionMenuView.f2569s : null;
        int i4 = y02.f10845f;
        if (i4 != 0 && this.f2655O != null && c1097o != null && (findItem = c1097o.findItem(i4)) != null) {
            findItem.expandActionView();
        }
        if (y02.f10846g) {
            removeCallbacks(this.f2657Q);
            post(this.f2657Q);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i4) {
        super.onRtlPropertiesChanged(i4);
        if (this.f2677w == null) {
            this.f2677w = new J0();
        }
        J0 j02 = this.f2677w;
        boolean z4 = i4 == 1;
        if (z4 == j02.f10789g) {
            return;
        }
        j02.f10789g = z4;
        if (!j02.f10790h) {
            j02.f10783a = j02.f10787e;
            j02.f10784b = j02.f10788f;
        } else if (z4) {
            int i5 = j02.f10786d;
            if (i5 == Integer.MIN_VALUE) {
                i5 = j02.f10787e;
            }
            j02.f10783a = i5;
            int i6 = j02.f10785c;
            if (i6 == Integer.MIN_VALUE) {
                i6 = j02.f10788f;
            }
            j02.f10784b = i6;
        } else {
            int i7 = j02.f10785c;
            if (i7 == Integer.MIN_VALUE) {
                i7 = j02.f10787e;
            }
            j02.f10783a = i7;
            int i8 = j02.f10786d;
            if (i8 == Integer.MIN_VALUE) {
                i8 = j02.f10788f;
            }
            j02.f10784b = i8;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        r rVar;
        Y0 y02 = new Y0(super.onSaveInstanceState());
        a aVar = this.f2655O;
        if (aVar != null && (rVar = aVar.f2686e) != null) {
            y02.f10845f = rVar.f10596a;
        }
        ActionMenuView actionMenuView = this.f2658d;
        boolean z4 = false;
        if (actionMenuView != null) {
            C1151n c1151n = actionMenuView.f2573w;
            if (c1151n != null && c1151n.k()) {
                z4 = true;
            }
        }
        y02.f10846g = z4;
        return y02;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2645E = false;
        }
        if (!this.f2645E) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f2645E = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f2645E = false;
        }
        return true;
    }

    public final int p(View view, int i4, int i5, int[] iArr) {
        W0 w02 = (W0) view.getLayoutParams();
        int i6 = ((ViewGroup.MarginLayoutParams) w02).leftMargin - iArr[0];
        int max = Math.max(0, i6) + i4;
        iArr[0] = Math.max(0, -i6);
        int g4 = g(view, i5);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, g4, max + measuredWidth, view.getMeasuredHeight() + g4);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) w02).rightMargin + max;
    }

    public final int q(View view, int i4, int i5, int[] iArr) {
        W0 w02 = (W0) view.getLayoutParams();
        int i6 = ((ViewGroup.MarginLayoutParams) w02).rightMargin - iArr[1];
        int max = i4 - Math.max(0, i6);
        iArr[1] = Math.max(0, -i6);
        int g4 = g(view, i5);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, g4, max, view.getMeasuredHeight() + g4);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) w02).leftMargin);
    }

    public final int r(int i4, int i5, int i6, int i7, View view, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i8 = marginLayoutParams.leftMargin - iArr[0];
        int i9 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i9) + Math.max(0, i8);
        iArr[0] = Math.max(0, -i8);
        iArr[1] = Math.max(0, -i9);
        view.measure(ViewGroup.getChildMeasureSpec(i4, getPaddingRight() + getPaddingLeft() + max + i5, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i6, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i7, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    @Override // androidx.core.view.InterfaceC0169f
    public final void removeMenuProvider(InterfaceC0174k interfaceC0174k) {
        this.f2650J.a(interfaceC0174k);
    }

    public final void s(View view, int i4, int i5, int i6, int i7) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i4, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i5, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i6, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + 0, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i7 >= 0) {
            if (mode != 0) {
                i7 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i7);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i7, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final void t(Drawable drawable) {
        if (drawable != null) {
            if (this.f2662h == null) {
                this.f2662h = new I(getContext());
            }
            if (!o(this.f2662h)) {
                c(this.f2662h, true);
            }
        } else {
            I i4 = this.f2662h;
            if (i4 != null && o(i4)) {
                removeView(this.f2662h);
                this.f2648H.remove(this.f2662h);
            }
        }
        I i5 = this.f2662h;
        if (i5 != null) {
            i5.setImageDrawable(drawable);
        }
    }

    public final void u(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            e();
        }
        C1123G c1123g = this.f2661g;
        if (c1123g != null) {
            c1123g.setContentDescription(charSequence);
            this.f2661g.setTooltipText(charSequence);
        }
    }

    public void v(Drawable drawable) {
        if (drawable != null) {
            e();
            if (!o(this.f2661g)) {
                c(this.f2661g, true);
            }
        } else {
            C1123G c1123g = this.f2661g;
            if (c1123g != null && o(c1123g)) {
                removeView(this.f2661g);
                this.f2648H.remove(this.f2661g);
            }
        }
        C1123G c1123g2 = this.f2661g;
        if (c1123g2 != null) {
            c1123g2.setImageDrawable(drawable);
        }
    }

    public void w(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.f2660f;
            if (appCompatTextView != null && o(appCompatTextView)) {
                removeView(this.f2660f);
                this.f2648H.remove(this.f2660f);
            }
        } else {
            if (this.f2660f == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context);
                this.f2660f = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f2660f.setEllipsize(TextUtils.TruncateAt.END);
                int i4 = this.f2670p;
                if (i4 != 0) {
                    this.f2660f.setTextAppearance(context, i4);
                }
                ColorStateList colorStateList = this.f2644D;
                if (colorStateList != null) {
                    this.f2660f.setTextColor(colorStateList);
                }
            }
            if (!o(this.f2660f)) {
                c(this.f2660f, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f2660f;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.f2642B = charSequence;
    }

    public void x(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.f2659e;
            if (appCompatTextView != null && o(appCompatTextView)) {
                removeView(this.f2659e);
                this.f2648H.remove(this.f2659e);
            }
        } else {
            if (this.f2659e == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context);
                this.f2659e = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f2659e.setEllipsize(TextUtils.TruncateAt.END);
                int i4 = this.f2669o;
                if (i4 != 0) {
                    this.f2659e.setTextAppearance(context, i4);
                }
                ColorStateList colorStateList = this.f2643C;
                if (colorStateList != null) {
                    this.f2659e.setTextColor(colorStateList);
                }
            }
            if (!o(this.f2659e)) {
                c(this.f2659e, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f2659e;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.f2641A = charSequence;
    }

    public final boolean y(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void z() {
        OnBackInvokedDispatcher findOnBackInvokedDispatcher = findOnBackInvokedDispatcher();
        a aVar = this.f2655O;
        if (!((aVar == null || aVar.f2686e == null) ? false : true) || findOnBackInvokedDispatcher == null) {
            return;
        }
        WeakHashMap weakHashMap = J.f3079a;
        A.b(this);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new W0(getContext(), attributeSet);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f2680z = 8388627;
        this.f2647G = new ArrayList();
        this.f2648H = new ArrayList();
        this.f2649I = new int[2];
        this.f2650J = new C0173j(new Runnable() { // from class: k.S0
            @Override // java.lang.Runnable
            public final void run() {
                Toolbar.this.n();
            }
        });
        this.f2651K = new ArrayList();
        this.f2652L = new T0(this);
        this.f2657Q = new U0(this);
        Context context2 = getContext();
        int[] iArr = C0792a.f8754x;
        R0 m4 = R0.m(context2, attributeSet, iArr, i4);
        TypedArray typedArray = m4.f10822b;
        WeakHashMap weakHashMap = J.f3079a;
        H.b(this, context, iArr, attributeSet, typedArray, i4, 0);
        this.f2669o = m4.i(28, 0);
        this.f2670p = m4.i(19, 0);
        TypedArray typedArray2 = m4.f10822b;
        this.f2680z = typedArray2.getInteger(0, 8388627);
        this.f2671q = typedArray2.getInteger(2, 48);
        int c4 = m4.c(22, 0);
        c4 = m4.l(27) ? m4.c(27, c4) : c4;
        this.f2676v = c4;
        this.f2675u = c4;
        this.f2674t = c4;
        this.f2673s = c4;
        int c5 = m4.c(25, -1);
        if (c5 >= 0) {
            this.f2673s = c5;
        }
        int c6 = m4.c(24, -1);
        if (c6 >= 0) {
            this.f2674t = c6;
        }
        int c7 = m4.c(26, -1);
        if (c7 >= 0) {
            this.f2675u = c7;
        }
        int c8 = m4.c(23, -1);
        if (c8 >= 0) {
            this.f2676v = c8;
        }
        this.f2672r = m4.d(13, -1);
        int c9 = m4.c(9, Integer.MIN_VALUE);
        int c10 = m4.c(5, Integer.MIN_VALUE);
        int d4 = m4.d(7, 0);
        int d5 = m4.d(8, 0);
        if (this.f2677w == null) {
            this.f2677w = new J0();
        }
        J0 j02 = this.f2677w;
        j02.f10790h = false;
        if (d4 != Integer.MIN_VALUE) {
            j02.f10787e = d4;
            j02.f10783a = d4;
        }
        if (d5 != Integer.MIN_VALUE) {
            j02.f10788f = d5;
            j02.f10784b = d5;
        }
        if (c9 != Integer.MIN_VALUE || c10 != Integer.MIN_VALUE) {
            j02.a(c9, c10);
        }
        this.f2678x = m4.c(10, Integer.MIN_VALUE);
        this.f2679y = m4.c(6, Integer.MIN_VALUE);
        this.f2663i = m4.e(4);
        this.f2664j = m4.k(3);
        CharSequence k4 = m4.k(21);
        if (!TextUtils.isEmpty(k4)) {
            x(k4);
        }
        CharSequence k5 = m4.k(18);
        if (!TextUtils.isEmpty(k5)) {
            w(k5);
        }
        this.f2667m = getContext();
        int i5 = m4.i(17, 0);
        if (this.f2668n != i5) {
            this.f2668n = i5;
            if (i5 == 0) {
                this.f2667m = getContext();
            } else {
                this.f2667m = new ContextThemeWrapper(getContext(), i5);
            }
        }
        Drawable e4 = m4.e(16);
        if (e4 != null) {
            v(e4);
        }
        CharSequence k6 = m4.k(15);
        if (!TextUtils.isEmpty(k6)) {
            u(k6);
        }
        Drawable e5 = m4.e(11);
        if (e5 != null) {
            t(e5);
        }
        CharSequence k7 = m4.k(12);
        if (!TextUtils.isEmpty(k7)) {
            if (!TextUtils.isEmpty(k7) && this.f2662h == null) {
                this.f2662h = new I(getContext());
            }
            I i6 = this.f2662h;
            if (i6 != null) {
                i6.setContentDescription(k7);
            }
        }
        if (m4.l(29)) {
            ColorStateList b4 = m4.b(29);
            this.f2643C = b4;
            AppCompatTextView appCompatTextView = this.f2659e;
            if (appCompatTextView != null) {
                appCompatTextView.setTextColor(b4);
            }
        }
        if (m4.l(20)) {
            ColorStateList b5 = m4.b(20);
            this.f2644D = b5;
            AppCompatTextView appCompatTextView2 = this.f2660f;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setTextColor(b5);
            }
        }
        if (m4.l(14)) {
            new j(getContext()).inflate(m4.i(14, 0), l());
        }
        m4.n();
    }
}
