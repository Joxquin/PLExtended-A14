package androidx.coordinatorlayout.widget;

import L.e;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.A;
import androidx.core.view.B;
import androidx.core.view.C0180q;
import androidx.core.view.C0186x;
import androidx.core.view.C0187y;
import androidx.core.view.D;
import androidx.core.view.H;
import androidx.core.view.InterfaceC0178o;
import androidx.core.view.InterfaceC0179p;
import androidx.core.view.J;
import androidx.core.view.c0;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import q.m;
import y.C1487a;
import z.C1492a;
import z.b;
import z.c;
import z.d;
import z.f;
import z.g;
import z.i;
import z.j;
import z.k;
import z.l;
/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements InterfaceC0178o, InterfaceC0179p {

    /* renamed from: v  reason: collision with root package name */
    public static final String f3033v;

    /* renamed from: w  reason: collision with root package name */
    public static final Class[] f3034w;

    /* renamed from: x  reason: collision with root package name */
    public static final ThreadLocal f3035x;

    /* renamed from: y  reason: collision with root package name */
    public static final j f3036y;

    /* renamed from: z  reason: collision with root package name */
    public static final e f3037z;

    /* renamed from: d  reason: collision with root package name */
    public final List f3038d;

    /* renamed from: e  reason: collision with root package name */
    public final k f3039e;

    /* renamed from: f  reason: collision with root package name */
    public final List f3040f;

    /* renamed from: g  reason: collision with root package name */
    public final int[] f3041g;

    /* renamed from: h  reason: collision with root package name */
    public final int[] f3042h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f3043i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f3044j;

    /* renamed from: k  reason: collision with root package name */
    public final int[] f3045k;

    /* renamed from: l  reason: collision with root package name */
    public View f3046l;

    /* renamed from: m  reason: collision with root package name */
    public View f3047m;

    /* renamed from: n  reason: collision with root package name */
    public g f3048n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f3049o;

    /* renamed from: p  reason: collision with root package name */
    public c0 f3050p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f3051q;

    /* renamed from: r  reason: collision with root package name */
    public final Drawable f3052r;

    /* renamed from: s  reason: collision with root package name */
    public ViewGroup.OnHierarchyChangeListener f3053s;

    /* renamed from: t  reason: collision with root package name */
    public C1492a f3054t;

    /* renamed from: u  reason: collision with root package name */
    public final C0180q f3055u;

    static {
        Package r02 = CoordinatorLayout.class.getPackage();
        f3033v = r02 != null ? r02.getName() : null;
        f3036y = new j();
        f3034w = new Class[]{Context.class, AttributeSet.class};
        f3035x = new ThreadLocal();
        f3037z = new e();
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public static Rect a() {
        Rect rect = (Rect) f3037z.a();
        return rect == null ? new Rect() : rect;
    }

    public static void f(int i4, Rect rect, Rect rect2, f fVar, int i5, int i6) {
        int i7 = fVar.f12969c;
        if (i7 == 0) {
            i7 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i7, i4);
        int i8 = fVar.f12970d;
        if ((i8 & 7) == 0) {
            i8 |= 8388611;
        }
        if ((i8 & 112) == 0) {
            i8 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i8, i4);
        int i9 = absoluteGravity & 7;
        int i10 = absoluteGravity & 112;
        int i11 = absoluteGravity2 & 7;
        int i12 = absoluteGravity2 & 112;
        int width = i11 != 1 ? i11 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int height = i12 != 16 ? i12 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i9 == 1) {
            width -= i5 / 2;
        } else if (i9 != 5) {
            width -= i5;
        }
        if (i10 == 16) {
            height -= i6 / 2;
        } else if (i10 != 80) {
            height -= i6;
        }
        rect2.set(width, height, i5 + width, i6 + height);
    }

    public static f h(View view) {
        f fVar = (f) view.getLayoutParams();
        if (!fVar.f12968b) {
            if (view instanceof b) {
                c a4 = ((b) view).a();
                if (a4 == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                c cVar = fVar.f12967a;
                if (cVar != a4) {
                    if (cVar != null) {
                        cVar.f();
                    }
                    fVar.f12967a = a4;
                    fVar.f12968b = true;
                    if (a4 != null) {
                        a4.c(fVar);
                    }
                }
                fVar.f12968b = true;
            } else {
                d dVar = null;
                for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    dVar = (d) cls.getAnnotation(d.class);
                    if (dVar != null) {
                        break;
                    }
                }
                if (dVar != null) {
                    try {
                        c cVar2 = (c) dVar.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                        c cVar3 = fVar.f12967a;
                        if (cVar3 != cVar2) {
                            if (cVar3 != null) {
                                cVar3.f();
                            }
                            fVar.f12967a = cVar2;
                            fVar.f12968b = true;
                            if (cVar2 != null) {
                                cVar2.c(fVar);
                            }
                        }
                    } catch (Exception e4) {
                        Log.e("CoordinatorLayout", "Default behavior class " + dVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e4);
                    }
                }
                fVar.f12968b = true;
            }
        }
        return fVar;
    }

    public static void v(View view, int i4) {
        f fVar = (f) view.getLayoutParams();
        int i5 = fVar.f12975i;
        if (i5 != i4) {
            WeakHashMap weakHashMap = J.f3079a;
            view.offsetLeftAndRight(i4 - i5);
            fVar.f12975i = i4;
        }
    }

    public static void w(View view, int i4) {
        f fVar = (f) view.getLayoutParams();
        int i5 = fVar.f12976j;
        if (i5 != i4) {
            WeakHashMap weakHashMap = J.f3079a;
            view.offsetTopAndBottom(i4 - i5);
            fVar.f12976j = i4;
        }
    }

    public final void b(f fVar, Rect rect, int i4, int i5) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i4) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i5) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        rect.set(max, max2, i4 + max, i5 + max2);
    }

    public final void c(View view, Rect rect, boolean z4) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z4) {
            e(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    public final List d(View view) {
        m mVar = this.f3039e.f12987b;
        int i4 = mVar.f11967f;
        ArrayList arrayList = null;
        for (int i5 = 0; i5 < i4; i5++) {
            ArrayList arrayList2 = (ArrayList) mVar.j(i5);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(mVar.g(i5));
            }
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j4) {
        c cVar = ((f) view.getLayoutParams()).f12967a;
        if (cVar != null) {
            cVar.getClass();
        }
        return super.drawChild(canvas, view, j4);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f3052r;
        boolean z4 = false;
        if (drawable != null && drawable.isStateful()) {
            z4 = false | drawable.setState(drawableState);
        }
        if (z4) {
            invalidate();
        }
    }

    public final void e(View view, Rect rect) {
        ThreadLocal threadLocal = l.f12990a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = l.f12990a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        l.a(this, view, matrix);
        ThreadLocal threadLocal3 = l.f12991b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final int g(int i4) {
        int[] iArr = this.f3045k;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i4);
            return 0;
        } else if (i4 < 0 || i4 >= iArr.length) {
            Log.e("CoordinatorLayout", "Keyline index " + i4 + " out of range for " + this);
            return 0;
        } else {
            return iArr[i4];
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new f();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final int getNestedScrollAxes() {
        C0180q c0180q = this.f3055u;
        return c0180q.f3126b | c0180q.f3125a;
    }

    @Override // android.view.View
    public final int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public final int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    public final boolean i(int i4, View view, int i5) {
        Rect a4 = a();
        e(view, a4);
        try {
            return a4.contains(i4, i5);
        } finally {
            a4.setEmpty();
            f3037z.b(a4);
        }
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final void j(View view, View view2, int i4, int i5) {
        C0180q c0180q = this.f3055u;
        if (i5 == 1) {
            c0180q.f3126b = i4;
        } else {
            c0180q.f3125a = i4;
        }
        this.f3047m = view2;
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            ((f) getChildAt(i6).getLayoutParams()).getClass();
        }
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final void k(View view, int i4) {
        C0180q c0180q = this.f3055u;
        if (i4 == 1) {
            c0180q.f3126b = 0;
        } else {
            c0180q.f3125a = 0;
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            f fVar = (f) childAt.getLayoutParams();
            if (fVar.a(i4)) {
                c cVar = fVar.f12967a;
                if (cVar != null) {
                    cVar.q(this, childAt, view, i4);
                }
                if (i4 == 0) {
                    fVar.f12980n = false;
                } else if (i4 == 1) {
                    fVar.f12981o = false;
                }
                fVar.f12982p = false;
            }
        }
        this.f3047m = null;
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final void l(View view, int i4, int i5, int[] iArr, int i6) {
        c cVar;
        int childCount = getChildCount();
        boolean z4 = false;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(i6) && (cVar = fVar.f12967a) != null) {
                    int[] iArr2 = this.f3041g;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    cVar.k(this, childAt, view, i4, i5, iArr2, i6);
                    i7 = i4 > 0 ? Math.max(i7, this.f3041g[0]) : Math.min(i7, this.f3041g[0]);
                    i8 = i5 > 0 ? Math.max(i8, this.f3041g[1]) : Math.min(i8, this.f3041g[1]);
                    z4 = true;
                }
            }
        }
        iArr[0] = i7;
        iArr[1] = i8;
        if (z4) {
            m(1);
        }
    }

    public final void m(int i4) {
        int i5;
        Rect rect;
        int i6;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        int width;
        int i7;
        int i8;
        int i9;
        int height;
        int i10;
        int i11;
        int i12;
        int i13;
        f fVar;
        int i14;
        Rect rect2;
        int i15;
        boolean z8;
        int i16;
        f fVar2;
        c cVar;
        WeakHashMap weakHashMap = J.f3079a;
        int c4 = C0187y.c(this);
        int size = ((ArrayList) this.f3038d).size();
        Rect a4 = a();
        Rect a5 = a();
        Rect a6 = a();
        int i17 = 0;
        while (i17 < size) {
            View view = (View) ((ArrayList) this.f3038d).get(i17);
            f fVar3 = (f) view.getLayoutParams();
            if (i4 == 0 && view.getVisibility() == 8) {
                i6 = size;
                rect = a6;
                i5 = i17;
            } else {
                int i18 = 0;
                while (i18 < i17) {
                    if (fVar3.f12978l == ((View) ((ArrayList) this.f3038d).get(i18))) {
                        f fVar4 = (f) view.getLayoutParams();
                        if (fVar4.f12977k != null) {
                            Rect a7 = a();
                            Rect a8 = a();
                            Rect a9 = a();
                            e(fVar4.f12977k, a7);
                            c(view, a8, false);
                            int measuredWidth = view.getMeasuredWidth();
                            i14 = size;
                            int measuredHeight = view.getMeasuredHeight();
                            i15 = i17;
                            rect2 = a6;
                            i13 = i18;
                            fVar = fVar3;
                            f(c4, a7, a9, fVar4, measuredWidth, measuredHeight);
                            if (a9.left == a8.left && a9.top == a8.top) {
                                i16 = measuredWidth;
                                fVar2 = fVar4;
                                z8 = false;
                            } else {
                                z8 = true;
                                i16 = measuredWidth;
                                fVar2 = fVar4;
                            }
                            b(fVar2, a9, i16, measuredHeight);
                            int i19 = a9.left - a8.left;
                            int i20 = a9.top - a8.top;
                            if (i19 != 0) {
                                WeakHashMap weakHashMap2 = J.f3079a;
                                view.offsetLeftAndRight(i19);
                            }
                            if (i20 != 0) {
                                WeakHashMap weakHashMap3 = J.f3079a;
                                view.offsetTopAndBottom(i20);
                            }
                            if (z8 && (cVar = fVar2.f12967a) != null) {
                                cVar.d(this, view, fVar2.f12977k);
                            }
                            a7.setEmpty();
                            e eVar = f3037z;
                            eVar.b(a7);
                            a8.setEmpty();
                            eVar.b(a8);
                            a9.setEmpty();
                            eVar.b(a9);
                            i18 = i13 + 1;
                            size = i14;
                            i17 = i15;
                            a6 = rect2;
                            fVar3 = fVar;
                        }
                    }
                    i13 = i18;
                    fVar = fVar3;
                    i14 = size;
                    rect2 = a6;
                    i15 = i17;
                    i18 = i13 + 1;
                    size = i14;
                    i17 = i15;
                    a6 = rect2;
                    fVar3 = fVar;
                }
                f fVar5 = fVar3;
                int i21 = size;
                Rect rect3 = a6;
                i5 = i17;
                c(view, a5, true);
                if (fVar5.f12973g != 0 && !a5.isEmpty()) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(fVar5.f12973g, c4);
                    int i22 = absoluteGravity & 112;
                    if (i22 == 48) {
                        a4.top = Math.max(a4.top, a5.bottom);
                    } else if (i22 == 80) {
                        a4.bottom = Math.max(a4.bottom, getHeight() - a5.top);
                    }
                    int i23 = absoluteGravity & 7;
                    if (i23 == 3) {
                        a4.left = Math.max(a4.left, a5.right);
                    } else if (i23 == 5) {
                        a4.right = Math.max(a4.right, getWidth() - a5.left);
                    }
                }
                if (fVar5.f12974h != 0 && view.getVisibility() == 0) {
                    WeakHashMap weakHashMap4 = J.f3079a;
                    if (A.c(view) && view.getWidth() > 0 && view.getHeight() > 0) {
                        f fVar6 = (f) view.getLayoutParams();
                        c cVar2 = fVar6.f12967a;
                        Rect a10 = a();
                        Rect a11 = a();
                        a11.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                        if (cVar2 == null || !cVar2.a(view)) {
                            a10.set(a11);
                        } else if (!a11.contains(a10)) {
                            throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + a10.toShortString() + " | Bounds:" + a11.toShortString());
                        }
                        a11.setEmpty();
                        e eVar2 = f3037z;
                        eVar2.b(a11);
                        if (a10.isEmpty()) {
                            a10.setEmpty();
                            eVar2.b(a10);
                        } else {
                            int absoluteGravity2 = Gravity.getAbsoluteGravity(fVar6.f12974h, c4);
                            if ((absoluteGravity2 & 48) != 48 || (i11 = (a10.top - ((ViewGroup.MarginLayoutParams) fVar6).topMargin) - fVar6.f12976j) >= (i12 = a4.top)) {
                                z5 = false;
                            } else {
                                w(view, i12 - i11);
                                z5 = true;
                            }
                            if ((absoluteGravity2 & 80) != 80 || (height = ((getHeight() - a10.bottom) - ((ViewGroup.MarginLayoutParams) fVar6).bottomMargin) + fVar6.f12976j) >= (i10 = a4.bottom)) {
                                z6 = z5;
                            } else {
                                w(view, height - i10);
                                z6 = true;
                            }
                            if (!z6) {
                                w(view, 0);
                            }
                            if ((absoluteGravity2 & 3) != 3 || (i8 = (a10.left - ((ViewGroup.MarginLayoutParams) fVar6).leftMargin) - fVar6.f12975i) >= (i9 = a4.left)) {
                                z7 = false;
                            } else {
                                v(view, i9 - i8);
                                z7 = true;
                            }
                            if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - a10.right) - ((ViewGroup.MarginLayoutParams) fVar6).rightMargin) + fVar6.f12975i) < (i7 = a4.right)) {
                                v(view, width - i7);
                                z7 = true;
                            }
                            if (!z7) {
                                v(view, 0);
                            }
                            a10.setEmpty();
                            eVar2.b(a10);
                        }
                    }
                }
                if (i4 != 2) {
                    rect = rect3;
                    rect.set(((f) view.getLayoutParams()).f12983q);
                    if (rect.equals(a5)) {
                        i6 = i21;
                    } else {
                        ((f) view.getLayoutParams()).f12983q.set(a5);
                    }
                } else {
                    rect = rect3;
                }
                i6 = i21;
                for (int i24 = i5 + 1; i24 < i6; i24++) {
                    View view2 = (View) ((ArrayList) this.f3038d).get(i24);
                    f fVar7 = (f) view2.getLayoutParams();
                    c cVar3 = fVar7.f12967a;
                    if (cVar3 != null && cVar3.b(view2, view)) {
                        if (i4 == 0 && fVar7.f12982p) {
                            fVar7.f12982p = false;
                        } else {
                            if (i4 != 2) {
                                z4 = cVar3.d(this, view2, view);
                            } else {
                                cVar3.e(this, view);
                                z4 = true;
                            }
                            if (i4 == 1) {
                                fVar7.f12982p = z4;
                            }
                        }
                    }
                }
            }
            i17 = i5 + 1;
            size = i6;
            a6 = rect;
        }
        Rect rect4 = a6;
        a4.setEmpty();
        e eVar3 = f3037z;
        eVar3.b(a4);
        a5.setEmpty();
        eVar3.b(a5);
        rect4.setEmpty();
        eVar3.b(rect4);
    }

    public final void n(View view, int i4) {
        Rect a4;
        Rect a5;
        e eVar;
        f fVar = (f) view.getLayoutParams();
        View view2 = fVar.f12977k;
        int i5 = 0;
        if (view2 == null && fVar.f12972f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        if (view2 != null) {
            a4 = a();
            a5 = a();
            try {
                e(view2, a4);
                f fVar2 = (f) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                f(i4, a4, a5, fVar2, measuredWidth, measuredHeight);
                b(fVar2, a5, measuredWidth, measuredHeight);
                view.layout(a5.left, a5.top, a5.right, a5.bottom);
                return;
            } finally {
                a4.setEmpty();
                eVar = f3037z;
                eVar.b(a4);
                a5.setEmpty();
                eVar.b(a5);
            }
        }
        int i6 = fVar.f12971e;
        if (i6 < 0) {
            f fVar3 = (f) view.getLayoutParams();
            a4 = a();
            a4.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar3).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar3).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar3).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar3).bottomMargin);
            if (this.f3050p != null) {
                WeakHashMap weakHashMap = J.f3079a;
                if (C0186x.a(this) && !C0186x.a(view)) {
                    a4.left = this.f3050p.b() + a4.left;
                    a4.top = this.f3050p.d() + a4.top;
                    a4.right -= this.f3050p.c();
                    a4.bottom -= this.f3050p.a();
                }
            }
            a5 = a();
            int i7 = fVar3.f12969c;
            if ((i7 & 7) == 0) {
                i7 |= 8388611;
            }
            if ((i7 & 112) == 0) {
                i7 |= 48;
            }
            Gravity.apply(i7, view.getMeasuredWidth(), view.getMeasuredHeight(), a4, a5, i4);
            view.layout(a5.left, a5.top, a5.right, a5.bottom);
            return;
        }
        f fVar4 = (f) view.getLayoutParams();
        int i8 = fVar4.f12969c;
        if (i8 == 0) {
            i8 = 8388661;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i8, i4);
        int i9 = absoluteGravity & 7;
        int i10 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i4 == 1) {
            i6 = width - i6;
        }
        int g4 = g(i6) - measuredWidth2;
        if (i9 == 1) {
            g4 += measuredWidth2 / 2;
        } else if (i9 == 5) {
            g4 += measuredWidth2;
        }
        if (i10 == 16) {
            i5 = 0 + (measuredHeight2 / 2);
        } else if (i10 == 80) {
            i5 = measuredHeight2 + 0;
        }
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar4).leftMargin, Math.min(g4, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) fVar4).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) fVar4).topMargin, Math.min(i5, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) fVar4).bottomMargin));
        view.layout(max, max2, measuredWidth2 + max, measuredHeight2 + max2);
    }

    @Override // androidx.core.view.InterfaceC0179p
    public final void o(View view, int i4, int i5, int i6, int i7, int i8, int[] iArr) {
        c cVar;
        int childCount = getChildCount();
        boolean z4 = false;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(i8) && (cVar = fVar.f12967a) != null) {
                    int[] iArr2 = this.f3041g;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    cVar.l(this, childAt, i5, i6, i7, iArr2);
                    i9 = i6 > 0 ? Math.max(i9, this.f3041g[0]) : Math.min(i9, this.f3041g[0]);
                    i10 = i7 > 0 ? Math.max(i10, this.f3041g[1]) : Math.min(i10, this.f3041g[1]);
                    z4 = true;
                }
            }
        }
        iArr[0] = iArr[0] + i9;
        iArr[1] = iArr[1] + i10;
        if (z4) {
            m(1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        u();
        if (this.f3049o) {
            if (this.f3048n == null) {
                this.f3048n = new g(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.f3048n);
        }
        if (this.f3050p == null) {
            WeakHashMap weakHashMap = J.f3079a;
            if (C0186x.a(this)) {
                B.c(this);
            }
        }
        this.f3044j = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        u();
        if (this.f3049o && this.f3048n != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f3048n);
        }
        View view = this.f3047m;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f3044j = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f3051q || this.f3052r == null) {
            return;
        }
        c0 c0Var = this.f3050p;
        int d4 = c0Var != null ? c0Var.d() : 0;
        if (d4 > 0) {
            this.f3052r.setBounds(0, 0, getWidth(), d4);
            this.f3052r.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            u();
        }
        boolean t4 = t(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            this.f3046l = null;
            u();
        }
        return t4;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        c cVar;
        WeakHashMap weakHashMap = J.f3079a;
        int c4 = C0187y.c(this);
        int size = ((ArrayList) this.f3038d).size();
        for (int i8 = 0; i8 < size; i8++) {
            View view = (View) ((ArrayList) this.f3038d).get(i8);
            if (view.getVisibility() != 8 && ((cVar = ((f) view.getLayoutParams()).f12967a) == null || !cVar.h(this, view, c4))) {
                n(view, c4);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:182:0x0345, code lost:
        if (r0.i(r30, r19, r24, r20, r25) == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0074, code lost:
        if (r5 != false) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0167 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0119  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r31, int r32) {
        /*
            Method dump skipped, instructions count: 953
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f4, float f5, boolean z4) {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(0)) {
                    c cVar = fVar.f12967a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f4, float f5) {
        c cVar;
        int childCount = getChildCount();
        boolean z4 = false;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.a(0) && (cVar = fVar.f12967a) != null) {
                    z4 |= cVar.j(view);
                }
            }
        }
        return z4;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i4, int i5, int[] iArr) {
        l(view, i4, i5, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i4, int i5, int i6, int i7) {
        p(view, i4, i5, i6, i7, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i4) {
        j(view, view2, i4, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof i)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        i iVar = (i) parcelable;
        super.onRestoreInstanceState(iVar.f1528d);
        SparseArray sparseArray = iVar.f12985f;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            int id = childAt.getId();
            c cVar = h(childAt).f12967a;
            if (id != -1 && cVar != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                cVar.n(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable o4;
        i iVar = new i(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            int id = childAt.getId();
            c cVar = ((f) childAt.getLayoutParams()).f12967a;
            if (id != -1 && cVar != null && (o4 = cVar.o(childAt)) != null) {
                sparseArray.append(id, o4);
            }
        }
        iVar.f12985f = sparseArray;
        return iVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i4) {
        return q(view, view2, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        k(view, 0);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean t4;
        int actionMasked = motionEvent.getActionMasked();
        View view = this.f3046l;
        boolean z4 = false;
        if (view != null) {
            c cVar = ((f) view.getLayoutParams()).f12967a;
            t4 = cVar != null ? cVar.r(this, this.f3046l, motionEvent) : false;
        } else {
            t4 = t(motionEvent, 1);
            if (actionMasked != 0 && t4) {
                z4 = true;
            }
        }
        if (this.f3046l == null || actionMasked == 3) {
            t4 |= super.onTouchEvent(motionEvent);
        } else if (z4) {
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            obtain.setAction(3);
            super.onTouchEvent(obtain);
            obtain.recycle();
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f3046l = null;
            u();
        }
        return t4;
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final void p(View view, int i4, int i5, int i6, int i7, int i8) {
        o(view, i4, i5, i6, i7, 0, this.f3042h);
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final boolean q(View view, View view2, int i4, int i5) {
        int childCount = getChildCount();
        boolean z4 = false;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                c cVar = fVar.f12967a;
                if (cVar != null) {
                    boolean p4 = cVar.p(this, childAt, view, i4, i5);
                    z4 |= p4;
                    if (i5 == 0) {
                        fVar.f12980n = p4;
                    } else if (i5 == 1) {
                        fVar.f12981o = p4;
                    }
                } else if (i5 == 0) {
                    fVar.f12980n = false;
                } else if (i5 == 1) {
                    fVar.f12981o = false;
                }
            }
        }
        return z4;
    }

    public final void r(View view, int i4, int i5, int i6) {
        measureChildWithMargins(view, i4, i5, i6, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z4) {
        c cVar = ((f) view.getLayoutParams()).f12967a;
        if (cVar == null || !cVar.m(this, view, rect, z4)) {
            return super.requestChildRectangleOnScreen(view, rect, z4);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z4) {
        super.requestDisallowInterceptTouchEvent(z4);
        if (!z4 || this.f3043i) {
            return;
        }
        if (this.f3046l == null) {
            int childCount = getChildCount();
            MotionEvent motionEvent = null;
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                c cVar = ((f) childAt.getLayoutParams()).f12967a;
                if (cVar != null) {
                    if (motionEvent == null) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        motionEvent = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    cVar.g(this, childAt, motionEvent);
                }
            }
            if (motionEvent != null) {
                motionEvent.recycle();
            }
        }
        u();
        this.f3043i = true;
    }

    public final boolean s(c cVar, View view, MotionEvent motionEvent, int i4) {
        if (i4 != 0) {
            if (i4 == 1) {
                return cVar.r(this, view, motionEvent);
            }
            throw new IllegalArgumentException();
        }
        return cVar.g(this, view, motionEvent);
    }

    @Override // android.view.View
    public final void setFitsSystemWindows(boolean z4) {
        super.setFitsSystemWindows(z4);
        x();
    }

    @Override // android.view.ViewGroup
    public final void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f3053s = onHierarchyChangeListener;
    }

    @Override // android.view.View
    public final void setVisibility(int i4) {
        super.setVisibility(i4);
        boolean z4 = i4 == 0;
        Drawable drawable = this.f3052r;
        if (drawable == null || drawable.isVisible() == z4) {
            return;
        }
        this.f3052r.setVisible(z4, false);
    }

    public final boolean t(MotionEvent motionEvent, int i4) {
        boolean z4;
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = (ArrayList) this.f3040f;
        arrayList.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i5 = childCount - 1; i5 >= 0; i5--) {
            arrayList.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i5) : i5));
        }
        j jVar = f3036y;
        if (jVar != null) {
            Collections.sort(arrayList, jVar);
        }
        int size = arrayList.size();
        MotionEvent motionEvent2 = null;
        boolean z5 = false;
        boolean z6 = false;
        for (int i6 = 0; i6 < size; i6++) {
            View view = (View) arrayList.get(i6);
            f fVar = (f) view.getLayoutParams();
            c cVar = fVar.f12967a;
            if (!(z5 || z6) || actionMasked == 0) {
                if (!z6 && !z5 && cVar != null && (z5 = s(cVar, view, motionEvent, i4))) {
                    this.f3046l = view;
                    if (actionMasked != 3 && actionMasked != 1) {
                        for (int i7 = 0; i7 < i6; i7++) {
                            View view2 = (View) arrayList.get(i7);
                            c cVar2 = ((f) view2.getLayoutParams()).f12967a;
                            if (cVar2 != null) {
                                if (motionEvent2 == null) {
                                    motionEvent2 = MotionEvent.obtain(motionEvent);
                                    motionEvent2.setAction(3);
                                }
                                s(cVar2, view2, motionEvent2, i4);
                            }
                        }
                    }
                }
                if (fVar.f12967a == null) {
                    fVar.f12979m = false;
                }
                boolean z7 = fVar.f12979m;
                if (z7) {
                    z4 = true;
                } else {
                    z4 = z7 | false;
                    fVar.f12979m = z4;
                }
                z6 = z4 && !z7;
                if (z4 && !z6) {
                    break;
                }
            } else if (cVar != null) {
                if (motionEvent2 == null) {
                    motionEvent2 = MotionEvent.obtain(motionEvent);
                    motionEvent2.setAction(3);
                }
                s(cVar, view, motionEvent2, i4);
            }
        }
        arrayList.clear();
        if (motionEvent2 != null) {
            motionEvent2.recycle();
        }
        return z5;
    }

    public final void u() {
        View view = this.f3046l;
        if (view != null) {
            c cVar = ((f) view.getLayoutParams()).f12967a;
            if (cVar != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                cVar.r(this, this.f3046l, obtain);
                obtain.recycle();
            }
            this.f3046l = null;
        }
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            ((f) getChildAt(i4).getLayoutParams()).f12979m = false;
        }
        this.f3043i = false;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3052r;
    }

    public final void x() {
        WeakHashMap weakHashMap = J.f3079a;
        if (!C0186x.a(this)) {
            D.l(this, null);
            return;
        }
        if (this.f3054t == null) {
            this.f3054t = new C1492a(this);
        }
        D.l(this, this.f3054t);
        setSystemUiVisibility(1280);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.coordinatorLayoutStyle);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof f) {
            return new f((f) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new f((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new f(layoutParams);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        TypedArray obtainStyledAttributes;
        this.f3038d = new ArrayList();
        this.f3039e = new k();
        this.f3040f = new ArrayList();
        this.f3041g = new int[2];
        this.f3042h = new int[2];
        this.f3055u = new C0180q();
        int[] iArr = C1487a.f12918a;
        if (i4 == 0) {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, 0, R.style.Widget_Support_CoordinatorLayout);
        } else {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i4, 0);
        }
        TypedArray typedArray = obtainStyledAttributes;
        if (i4 == 0) {
            WeakHashMap weakHashMap = J.f3079a;
            H.b(this, context, iArr, attributeSet, typedArray, 0, R.style.Widget_Support_CoordinatorLayout);
        } else {
            WeakHashMap weakHashMap2 = J.f3079a;
            H.b(this, context, iArr, attributeSet, typedArray, i4, 0);
        }
        int resourceId = typedArray.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.f3045k = intArray;
            float f4 = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i5 = 0; i5 < length; i5++) {
                int[] iArr2 = this.f3045k;
                iArr2[i5] = (int) (iArr2[i5] * f4);
            }
        }
        this.f3052r = typedArray.getDrawable(1);
        typedArray.recycle();
        x();
        super.setOnHierarchyChangeListener(new z.e(this));
        WeakHashMap weakHashMap3 = J.f3079a;
        if (C0186x.b(this) == 0) {
            C0186x.o(this, 1);
        }
    }
}
