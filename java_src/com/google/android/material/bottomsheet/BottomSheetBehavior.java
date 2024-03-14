package com.google.android.material.bottomsheet;

import C2.h;
import C2.n;
import Q.i;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.A;
import androidx.core.view.B;
import androidx.core.view.C0164a;
import androidx.core.view.C0165b;
import androidx.core.view.C0186x;
import androidx.core.view.C0187y;
import androidx.core.view.D;
import androidx.core.view.H;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import i2.C0980a;
import j.C1080K;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import n2.b;
import n2.d;
import n2.e;
import n2.j;
import x2.C1482t;
import x2.C1484v;
import x2.View$OnAttachStateChangeListenerC1483u;
import z.c;
import z.f;
/* loaded from: classes.dex */
public class BottomSheetBehavior extends c {

    /* renamed from: A  reason: collision with root package name */
    public int f7750A;

    /* renamed from: B  reason: collision with root package name */
    public int f7751B;

    /* renamed from: C  reason: collision with root package name */
    public int f7752C;

    /* renamed from: D  reason: collision with root package name */
    public float f7753D;

    /* renamed from: E  reason: collision with root package name */
    public int f7754E;

    /* renamed from: F  reason: collision with root package name */
    public final float f7755F;

    /* renamed from: G  reason: collision with root package name */
    public boolean f7756G;

    /* renamed from: H  reason: collision with root package name */
    public boolean f7757H;

    /* renamed from: I  reason: collision with root package name */
    public boolean f7758I;

    /* renamed from: J  reason: collision with root package name */
    public int f7759J;

    /* renamed from: K  reason: collision with root package name */
    public i f7760K;

    /* renamed from: L  reason: collision with root package name */
    public boolean f7761L;

    /* renamed from: M  reason: collision with root package name */
    public int f7762M;

    /* renamed from: N  reason: collision with root package name */
    public boolean f7763N;

    /* renamed from: O  reason: collision with root package name */
    public final float f7764O;

    /* renamed from: P  reason: collision with root package name */
    public int f7765P;

    /* renamed from: Q  reason: collision with root package name */
    public int f7766Q;

    /* renamed from: R  reason: collision with root package name */
    public int f7767R;

    /* renamed from: S  reason: collision with root package name */
    public WeakReference f7768S;

    /* renamed from: T  reason: collision with root package name */
    public WeakReference f7769T;

    /* renamed from: U  reason: collision with root package name */
    public final ArrayList f7770U;

    /* renamed from: V  reason: collision with root package name */
    public VelocityTracker f7771V;

    /* renamed from: W  reason: collision with root package name */
    public int f7772W;

    /* renamed from: X  reason: collision with root package name */
    public int f7773X;

    /* renamed from: Y  reason: collision with root package name */
    public boolean f7774Y;

    /* renamed from: Z  reason: collision with root package name */
    public Map f7775Z;

    /* renamed from: a  reason: collision with root package name */
    public int f7776a;

    /* renamed from: a0  reason: collision with root package name */
    public int f7777a0;

    /* renamed from: b  reason: collision with root package name */
    public boolean f7778b;

    /* renamed from: b0  reason: collision with root package name */
    public final d f7779b0;

    /* renamed from: c  reason: collision with root package name */
    public final float f7780c;

    /* renamed from: d  reason: collision with root package name */
    public int f7781d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7782e;

    /* renamed from: f  reason: collision with root package name */
    public int f7783f;

    /* renamed from: g  reason: collision with root package name */
    public final int f7784g;

    /* renamed from: h  reason: collision with root package name */
    public C2.i f7785h;

    /* renamed from: i  reason: collision with root package name */
    public final ColorStateList f7786i;

    /* renamed from: j  reason: collision with root package name */
    public int f7787j;

    /* renamed from: k  reason: collision with root package name */
    public int f7788k;

    /* renamed from: l  reason: collision with root package name */
    public int f7789l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f7790m;

    /* renamed from: n  reason: collision with root package name */
    public final boolean f7791n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f7792o;

    /* renamed from: p  reason: collision with root package name */
    public final boolean f7793p;

    /* renamed from: q  reason: collision with root package name */
    public final boolean f7794q;

    /* renamed from: r  reason: collision with root package name */
    public final boolean f7795r;

    /* renamed from: s  reason: collision with root package name */
    public final boolean f7796s;

    /* renamed from: t  reason: collision with root package name */
    public final boolean f7797t;

    /* renamed from: u  reason: collision with root package name */
    public int f7798u;

    /* renamed from: v  reason: collision with root package name */
    public int f7799v;

    /* renamed from: w  reason: collision with root package name */
    public final n f7800w;

    /* renamed from: x  reason: collision with root package name */
    public boolean f7801x;

    /* renamed from: y  reason: collision with root package name */
    public final j f7802y;

    /* renamed from: z  reason: collision with root package name */
    public ValueAnimator f7803z;

    public BottomSheetBehavior() {
        this.f7776a = 0;
        this.f7778b = true;
        this.f7787j = -1;
        this.f7788k = -1;
        this.f7802y = new j(this);
        this.f7753D = 0.5f;
        this.f7755F = -1.0f;
        this.f7758I = true;
        this.f7759J = 4;
        this.f7764O = 0.1f;
        this.f7770U = new ArrayList();
        this.f7777a0 = -1;
        this.f7779b0 = new d(this);
    }

    public static BottomSheetBehavior v(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof f) {
            c cVar = ((f) layoutParams).f12967a;
            if (cVar instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) cVar;
            }
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    public static int w(int i4, int i5, int i6, int i7) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i4, i5, i7);
        if (i6 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode != 1073741824) {
            if (size != 0) {
                i6 = Math.min(size, i6);
            }
            return View.MeasureSpec.makeMeasureSpec(i6, Integer.MIN_VALUE);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(size, i6), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
    }

    public final void A(int i4) {
        boolean z4 = false;
        if (i4 == -1) {
            if (!this.f7782e) {
                this.f7782e = true;
                z4 = true;
            }
        } else if (this.f7782e || this.f7781d != i4) {
            this.f7782e = false;
            this.f7781d = Math.max(0, i4);
            z4 = true;
        }
        if (z4) {
            I();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
        if (androidx.core.view.A.b(r4) != false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B(int r4) {
        /*
            r3 = this;
            r0 = 1
            if (r4 == r0) goto L71
            r1 = 2
            if (r4 != r1) goto L8
            goto L71
        L8:
            boolean r1 = r3.f7756G
            if (r1 != 0) goto L23
            r1 = 5
            if (r4 != r1) goto L23
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r0 = "Cannot set state: "
            r3.<init>(r0)
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            java.lang.String r4 = "BottomSheetBehavior"
            android.util.Log.w(r4, r3)
            return
        L23:
            r1 = 6
            if (r4 != r1) goto L34
            boolean r1 = r3.f7778b
            if (r1 == 0) goto L34
            int r1 = r3.y(r4)
            int r2 = r3.f7751B
            if (r1 > r2) goto L34
            r1 = 3
            goto L35
        L34:
            r1 = r4
        L35:
            java.lang.ref.WeakReference r2 = r3.f7768S
            if (r2 == 0) goto L6d
            java.lang.Object r2 = r2.get()
            if (r2 != 0) goto L40
            goto L6d
        L40:
            java.lang.ref.WeakReference r4 = r3.f7768S
            java.lang.Object r4 = r4.get()
            android.view.View r4 = (android.view.View) r4
            n2.a r2 = new n2.a
            r2.<init>(r3, r4, r1)
            android.view.ViewParent r3 = r4.getParent()
            if (r3 == 0) goto L62
            boolean r3 = r3.isLayoutRequested()
            if (r3 == 0) goto L62
            java.util.WeakHashMap r3 = androidx.core.view.J.f3079a
            boolean r3 = androidx.core.view.A.b(r4)
            if (r3 == 0) goto L62
            goto L63
        L62:
            r0 = 0
        L63:
            if (r0 == 0) goto L69
            r4.post(r2)
            goto L70
        L69:
            r2.run()
            goto L70
        L6d:
            r3.C(r4)
        L70:
            return
        L71:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "STATE_"
            r1.<init>(r2)
            if (r4 != r0) goto L7f
            java.lang.String r4 = "DRAGGING"
            goto L81
        L7f:
            java.lang.String r4 = "SETTLING"
        L81:
            r1.append(r4)
            java.lang.String r4 = " should not be set externally."
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.B(int):void");
    }

    public final void C(int i4) {
        View view;
        if (this.f7759J == i4) {
            return;
        }
        this.f7759J = i4;
        WeakReference weakReference = this.f7768S;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i5 = 0;
        if (i4 == 3) {
            H(true);
        } else if (i4 == 6 || i4 == 5 || i4 == 4) {
            H(false);
        }
        G(i4);
        while (true) {
            ArrayList arrayList = this.f7770U;
            if (i5 >= arrayList.size()) {
                F();
                return;
            } else {
                ((n2.f) arrayList.get(i5)).c(view, i4);
                i5++;
            }
        }
    }

    public final boolean D(View view, float f4) {
        if (this.f7757H) {
            return true;
        }
        if (view.getTop() < this.f7754E) {
            return false;
        }
        return Math.abs(((f4 * this.f7764O) + ((float) view.getTop())) - ((float) this.f7754E)) / ((float) t()) > 0.5f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
        if (r4 != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
        if (r1.p(r4.getLeft(), r0) != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(android.view.View r4, int r5, boolean r6) {
        /*
            r3 = this;
            int r0 = r3.y(r5)
            Q.i r1 = r3.f7760K
            r2 = 0
            if (r1 == 0) goto L33
            if (r6 == 0) goto L16
            int r4 = r4.getLeft()
            boolean r4 = r1.p(r4, r0)
            if (r4 == 0) goto L33
            goto L32
        L16:
            int r6 = r4.getLeft()
            r1.f1602r = r4
            r4 = -1
            r1.f1587c = r4
            boolean r4 = r1.i(r6, r0, r2, r2)
            if (r4 != 0) goto L30
            int r6 = r1.f1585a
            if (r6 != 0) goto L30
            android.view.View r6 = r1.f1602r
            if (r6 == 0) goto L30
            r6 = 0
            r1.f1602r = r6
        L30:
            if (r4 == 0) goto L33
        L32:
            r2 = 1
        L33:
            if (r2 == 0) goto L42
            r4 = 2
            r3.C(r4)
            r3.G(r5)
            n2.j r3 = r3.f7802y
            r3.a(r5)
            goto L45
        L42:
            r3.C(r5)
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.E(android.view.View, int, boolean):void");
    }

    public final void F() {
        View view;
        int i4;
        WeakReference weakReference = this.f7768S;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        J.f(view, 524288);
        J.d(view, 0);
        J.f(view, 262144);
        J.d(view, 0);
        J.f(view, 1048576);
        J.d(view, 0);
        int i5 = this.f7777a0;
        if (i5 != -1) {
            J.f(view, i5);
            J.d(view, 0);
        }
        if (!this.f7778b && this.f7759J != 6) {
            String string = view.getResources().getString(R.string.bottomsheet_action_expand_halfway);
            e eVar = new e(this, 6);
            List c4 = J.c(view);
            int i6 = 0;
            while (true) {
                if (i6 >= c4.size()) {
                    int i7 = 0;
                    int i8 = -1;
                    while (true) {
                        int[] iArr = J.f3080b;
                        if (i7 >= iArr.length || i8 != -1) {
                            break;
                        }
                        int i9 = iArr[i7];
                        boolean z4 = true;
                        for (int i10 = 0; i10 < c4.size(); i10++) {
                            z4 &= ((M.c) c4.get(i10)).a() != i9;
                        }
                        if (z4) {
                            i8 = i9;
                        }
                        i7++;
                    }
                    i4 = i8;
                } else if (TextUtils.equals(string, ((AccessibilityNodeInfo.AccessibilityAction) ((M.c) c4.get(i6)).f1344a).getLabel())) {
                    i4 = ((M.c) c4.get(i6)).a();
                    break;
                } else {
                    i6++;
                }
            }
            if (i4 != -1) {
                M.c cVar = new M.c(null, i4, string, eVar, null);
                View.AccessibilityDelegate a4 = H.a(view);
                C0165b c0165b = a4 == null ? null : a4 instanceof C0164a ? ((C0164a) a4).f3101a : new C0165b(a4);
                if (c0165b == null) {
                    c0165b = new C0165b();
                }
                J.h(view, c0165b);
                J.f(view, cVar.a());
                J.c(view).add(cVar);
                J.d(view, 0);
            }
            this.f7777a0 = i4;
        }
        if (this.f7756G && this.f7759J != 5) {
            J.g(view, M.c.f1339j, new e(this, 5));
        }
        int i11 = this.f7759J;
        if (i11 == 3) {
            J.g(view, M.c.f1338i, new e(this, this.f7778b ? 4 : 6));
        } else if (i11 == 4) {
            J.g(view, M.c.f1337h, new e(this, this.f7778b ? 3 : 6));
        } else if (i11 == 6) {
            J.g(view, M.c.f1338i, new e(this, 4));
            J.g(view, M.c.f1337h, new e(this, 3));
        }
    }

    public final void G(int i4) {
        ValueAnimator valueAnimator;
        if (i4 == 2) {
            return;
        }
        boolean z4 = i4 == 3;
        if (this.f7801x != z4) {
            this.f7801x = z4;
            if (this.f7785h == null || (valueAnimator = this.f7803z) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.f7803z.reverse();
                return;
            }
            float f4 = z4 ? 0.0f : 1.0f;
            this.f7803z.setFloatValues(1.0f - f4, f4);
            this.f7803z.start();
        }
    }

    public final void H(boolean z4) {
        WeakReference weakReference = this.f7768S;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z4) {
                if (this.f7775Z != null) {
                    return;
                }
                this.f7775Z = new HashMap(childCount);
            }
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = coordinatorLayout.getChildAt(i4);
                if (childAt != this.f7768S.get() && z4) {
                    ((HashMap) this.f7775Z).put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z4) {
                return;
            }
            this.f7775Z = null;
        }
    }

    public final void I() {
        View view;
        if (this.f7768S != null) {
            s();
            if (this.f7759J != 4 || (view = (View) this.f7768S.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // z.c
    public final void c(f fVar) {
        this.f7768S = null;
        this.f7760K = null;
    }

    public void disableShapeAnimations() {
        this.f7803z = null;
    }

    @Override // z.c
    public final void f() {
        this.f7768S = null;
        this.f7760K = null;
    }

    public View findScrollingChild(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        WeakHashMap weakHashMap = J.f3079a;
        if (D.h(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View findScrollingChild = findScrollingChild(viewGroup.getChildAt(i4));
                if (findScrollingChild != null) {
                    return findScrollingChild;
                }
            }
        }
        return null;
    }

    @Override // z.c
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        i iVar;
        if (!view.isShown() || !this.f7758I) {
            this.f7761L = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f7772W = -1;
            VelocityTracker velocityTracker = this.f7771V;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f7771V = null;
            }
        }
        if (this.f7771V == null) {
            this.f7771V = VelocityTracker.obtain();
        }
        this.f7771V.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x4 = (int) motionEvent.getX();
            this.f7773X = (int) motionEvent.getY();
            if (this.f7759J != 2) {
                WeakReference weakReference = this.f7769T;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.i(x4, view2, this.f7773X)) {
                    this.f7772W = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f7774Y = true;
                }
            }
            this.f7761L = this.f7772W == -1 && !coordinatorLayout.i(x4, view, this.f7773X);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f7774Y = false;
            this.f7772W = -1;
            if (this.f7761L) {
                this.f7761L = false;
                return false;
            }
        }
        if (this.f7761L || (iVar = this.f7760K) == null || !iVar.q(motionEvent)) {
            WeakReference weakReference2 = this.f7769T;
            View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
            return (actionMasked != 2 || view3 == null || this.f7761L || this.f7759J == 1 || coordinatorLayout.i((int) motionEvent.getX(), view3, (int) motionEvent.getY()) || this.f7760K == null || Math.abs(((float) this.f7773X) - motionEvent.getY()) <= ((float) this.f7760K.f1586b)) ? false : true;
        }
        return true;
    }

    public int getPeekHeightMin() {
        return this.f7783f;
    }

    @Override // z.c
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i4) {
        WeakHashMap weakHashMap = J.f3079a;
        if (C0186x.a(coordinatorLayout) && !C0186x.a(view)) {
            view.setFitsSystemWindows(true);
        }
        int i5 = 0;
        if (this.f7768S == null) {
            this.f7783f = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            boolean z4 = (this.f7790m || this.f7782e) ? false : true;
            if (this.f7791n || this.f7792o || this.f7793p || this.f7795r || this.f7796s || this.f7797t || z4) {
                D.l(view, new C1482t(new n2.c(this, z4), new C1484v(C0187y.e(view), view.getPaddingTop(), C0187y.d(view), view.getPaddingBottom())));
                if (A.b(view)) {
                    B.c(view);
                } else {
                    view.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC1483u());
                }
            }
            this.f7768S = new WeakReference(view);
            C2.i iVar = this.f7785h;
            if (iVar != null) {
                C0186x.m(view, iVar);
                C2.i iVar2 = this.f7785h;
                float f4 = this.f7755F;
                if (f4 == -1.0f) {
                    f4 = D.d(view);
                }
                iVar2.k(f4);
                boolean z5 = this.f7759J == 3;
                this.f7801x = z5;
                C2.i iVar3 = this.f7785h;
                float f5 = z5 ? 0.0f : 1.0f;
                h hVar = iVar3.f160d;
                if (hVar.f146j != f5) {
                    hVar.f146j = f5;
                    iVar3.f164h = true;
                    iVar3.invalidateSelf();
                }
            } else {
                ColorStateList colorStateList = this.f7786i;
                if (colorStateList != null) {
                    D.i(view, colorStateList);
                }
            }
            F();
            if (C0186x.b(view) == 0) {
                C0186x.o(view, 1);
            }
        }
        if (this.f7760K == null) {
            this.f7760K = new i(coordinatorLayout.getContext(), coordinatorLayout, this.f7779b0);
        }
        int top = view.getTop();
        coordinatorLayout.n(view, i4);
        this.f7766Q = coordinatorLayout.getWidth();
        this.f7767R = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.f7765P = height;
        int i6 = this.f7767R;
        int i7 = i6 - height;
        int i8 = this.f7799v;
        if (i7 < i8) {
            if (this.f7794q) {
                this.f7765P = i6;
            } else {
                this.f7765P = i6 - i8;
            }
        }
        this.f7751B = Math.max(0, i6 - this.f7765P);
        this.f7752C = (int) ((1.0f - this.f7753D) * this.f7767R);
        s();
        int i9 = this.f7759J;
        if (i9 == 3) {
            view.offsetTopAndBottom(x());
        } else if (i9 == 6) {
            view.offsetTopAndBottom(this.f7752C);
        } else if (this.f7756G && i9 == 5) {
            view.offsetTopAndBottom(this.f7767R);
        } else if (i9 == 4) {
            view.offsetTopAndBottom(this.f7754E);
        } else if (i9 == 1 || i9 == 2) {
            view.offsetTopAndBottom(top - view.getTop());
        }
        this.f7769T = new WeakReference(findScrollingChild(view));
        while (true) {
            ArrayList arrayList = this.f7770U;
            if (i5 >= arrayList.size()) {
                return true;
            }
            ((n2.f) arrayList.get(i5)).a(view);
            i5++;
        }
    }

    @Override // z.c
    public final boolean i(CoordinatorLayout coordinatorLayout, View view, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(w(i4, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i5, this.f7787j, marginLayoutParams.width), w(i6, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + 0, this.f7788k, marginLayoutParams.height));
        return true;
    }

    @Override // z.c
    public final boolean j(View view) {
        WeakReference weakReference = this.f7769T;
        return (weakReference == null || view != weakReference.get() || this.f7759J == 3) ? false : true;
    }

    @Override // z.c
    public final void k(CoordinatorLayout coordinatorLayout, View view, View view2, int i4, int i5, int[] iArr, int i6) {
        if (i6 == 1) {
            return;
        }
        WeakReference weakReference = this.f7769T;
        if (view2 != (weakReference != null ? (View) weakReference.get() : null)) {
            return;
        }
        int top = view.getTop();
        int i7 = top - i5;
        if (i5 > 0) {
            if (i7 < x()) {
                int x4 = top - x();
                iArr[1] = x4;
                int i8 = -x4;
                WeakHashMap weakHashMap = J.f3079a;
                view.offsetTopAndBottom(i8);
                C(3);
            } else if (!this.f7758I) {
                return;
            } else {
                iArr[1] = i5;
                WeakHashMap weakHashMap2 = J.f3079a;
                view.offsetTopAndBottom(-i5);
                C(1);
            }
        } else if (i5 < 0 && !view2.canScrollVertically(-1)) {
            int i9 = this.f7754E;
            if (i7 > i9 && !this.f7756G) {
                int i10 = top - i9;
                iArr[1] = i10;
                int i11 = -i10;
                WeakHashMap weakHashMap3 = J.f3079a;
                view.offsetTopAndBottom(i11);
                C(4);
            } else if (!this.f7758I) {
                return;
            } else {
                iArr[1] = i5;
                WeakHashMap weakHashMap4 = J.f3079a;
                view.offsetTopAndBottom(-i5);
                C(1);
            }
        }
        u(view.getTop());
        this.f7762M = i5;
        this.f7763N = true;
    }

    @Override // z.c
    public final void l(CoordinatorLayout coordinatorLayout, View view, int i4, int i5, int i6, int[] iArr) {
    }

    @Override // z.c
    public final void n(View view, Parcelable parcelable) {
        n2.h hVar = (n2.h) parcelable;
        int i4 = this.f7776a;
        if (i4 != 0) {
            if (i4 == -1 || (i4 & 1) == 1) {
                this.f7781d = hVar.f11812g;
            }
            if (i4 == -1 || (i4 & 2) == 2) {
                this.f7778b = hVar.f11813h;
            }
            if (i4 == -1 || (i4 & 4) == 4) {
                this.f7756G = hVar.f11814i;
            }
            if (i4 == -1 || (i4 & 8) == 8) {
                this.f7757H = hVar.f11815j;
            }
        }
        int i5 = hVar.f11811f;
        if (i5 == 1 || i5 == 2) {
            this.f7759J = 4;
        } else {
            this.f7759J = i5;
        }
    }

    @Override // z.c
    public final Parcelable o(View view) {
        return new n2.h(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // z.c
    public final boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, int i4, int i5) {
        this.f7762M = 0;
        this.f7763N = false;
        return (i4 & 2) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002f, code lost:
        if (r3.getTop() <= r1.f7752C) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006f, code lost:
        if (java.lang.Math.abs(r2 - r1.f7751B) < java.lang.Math.abs(r2 - r1.f7754E)) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007e, code lost:
        if (r2 < java.lang.Math.abs(r2 - r1.f7754E)) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008e, code lost:
        if (java.lang.Math.abs(r2 - r4) < java.lang.Math.abs(r2 - r1.f7754E)) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a9, code lost:
        if (java.lang.Math.abs(r2 - r1.f7752C) < java.lang.Math.abs(r2 - r1.f7754E)) goto L18;
     */
    @Override // z.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(androidx.coordinatorlayout.widget.CoordinatorLayout r2, android.view.View r3, android.view.View r4, int r5) {
        /*
            r1 = this;
            int r2 = r3.getTop()
            int r5 = r1.x()
            r0 = 3
            if (r2 != r5) goto Lf
            r1.C(r0)
            return
        Lf:
            java.lang.ref.WeakReference r2 = r1.f7769T
            if (r2 == 0) goto Lb4
            java.lang.Object r2 = r2.get()
            if (r4 != r2) goto Lb4
            boolean r2 = r1.f7763N
            if (r2 != 0) goto L1f
            goto Lb4
        L1f:
            int r2 = r1.f7762M
            if (r2 <= 0) goto L33
            boolean r2 = r1.f7778b
            if (r2 == 0) goto L29
            goto Lae
        L29:
            int r2 = r3.getTop()
            int r4 = r1.f7752C
            if (r2 <= r4) goto Lae
            goto Lab
        L33:
            boolean r2 = r1.f7756G
            if (r2 == 0) goto L54
            android.view.VelocityTracker r2 = r1.f7771V
            if (r2 != 0) goto L3d
            r2 = 0
            goto L4c
        L3d:
            r4 = 1000(0x3e8, float:1.401E-42)
            float r5 = r1.f7780c
            r2.computeCurrentVelocity(r4, r5)
            android.view.VelocityTracker r2 = r1.f7771V
            int r4 = r1.f7772W
            float r2 = r2.getYVelocity(r4)
        L4c:
            boolean r2 = r1.D(r3, r2)
            if (r2 == 0) goto L54
            r0 = 5
            goto Lae
        L54:
            int r2 = r1.f7762M
            if (r2 != 0) goto L91
            int r2 = r3.getTop()
            boolean r4 = r1.f7778b
            if (r4 == 0) goto L72
            int r4 = r1.f7751B
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            int r5 = r1.f7754E
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r4 >= r2) goto Lad
            goto Lae
        L72:
            int r4 = r1.f7752C
            if (r2 >= r4) goto L81
            int r4 = r1.f7754E
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            if (r2 >= r4) goto Lab
            goto Lae
        L81:
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            int r5 = r1.f7754E
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r4 >= r2) goto Lad
            goto Lab
        L91:
            boolean r2 = r1.f7778b
            if (r2 == 0) goto L96
            goto Lad
        L96:
            int r2 = r3.getTop()
            int r4 = r1.f7752C
            int r4 = r2 - r4
            int r4 = java.lang.Math.abs(r4)
            int r5 = r1.f7754E
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r4 >= r2) goto Lad
        Lab:
            r0 = 6
            goto Lae
        Lad:
            r0 = 4
        Lae:
            r2 = 0
            r1.E(r3, r0, r2)
            r1.f7763N = r2
        Lb4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.q(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // z.c
    public final boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z4 = false;
        if (view.isShown()) {
            int actionMasked = motionEvent.getActionMasked();
            int i4 = this.f7759J;
            if (i4 == 1 && actionMasked == 0) {
                return true;
            }
            i iVar = this.f7760K;
            if (iVar != null && (this.f7758I || i4 == 1)) {
                iVar.j(motionEvent);
            }
            if (actionMasked == 0) {
                this.f7772W = -1;
                VelocityTracker velocityTracker = this.f7771V;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.f7771V = null;
                }
            }
            if (this.f7771V == null) {
                this.f7771V = VelocityTracker.obtain();
            }
            this.f7771V.addMovement(motionEvent);
            if (this.f7760K != null && (this.f7758I || this.f7759J == 1)) {
                z4 = true;
            }
            if (z4 && actionMasked == 2 && !this.f7761L) {
                float abs = Math.abs(this.f7773X - motionEvent.getY());
                i iVar2 = this.f7760K;
                if (abs > iVar2.f1586b) {
                    iVar2.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
                }
            }
            return !this.f7761L;
        }
        return false;
    }

    public final void s() {
        int t4 = t();
        if (this.f7778b) {
            this.f7754E = Math.max(this.f7767R - t4, this.f7751B);
        } else {
            this.f7754E = this.f7767R - t4;
        }
    }

    public final int t() {
        int i4;
        int i5;
        int i6;
        if (this.f7782e) {
            i4 = Math.min(Math.max(this.f7783f, this.f7767R - ((this.f7766Q * 9) / 16)), this.f7765P);
            i5 = this.f7798u;
        } else if (!this.f7790m && !this.f7791n && (i6 = this.f7789l) > 0) {
            return Math.max(this.f7781d, i6 + this.f7784g);
        } else {
            i4 = this.f7781d;
            i5 = this.f7798u;
        }
        return i4 + i5;
    }

    public final void u(int i4) {
        View view = (View) this.f7768S.get();
        if (view != null) {
            ArrayList arrayList = this.f7770U;
            if (arrayList.isEmpty()) {
                return;
            }
            int i5 = this.f7754E;
            if (i4 <= i5 && i5 != x()) {
                x();
            }
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                ((n2.f) arrayList.get(i6)).b(view);
            }
        }
    }

    public final int x() {
        if (this.f7778b) {
            return this.f7751B;
        }
        return Math.max(this.f7750A, this.f7794q ? 0 : this.f7799v);
    }

    public final int y(int i4) {
        if (i4 != 3) {
            if (i4 != 4) {
                if (i4 != 5) {
                    if (i4 == 6) {
                        return this.f7752C;
                    }
                    throw new IllegalArgumentException(C1080K.a("Invalid state to get top offset: ", i4));
                }
                return this.f7767R;
            }
            return this.f7754E;
        }
        return x();
    }

    public final void z(boolean z4) {
        if (this.f7756G != z4) {
            this.f7756G = z4;
            if (!z4 && this.f7759J == 5) {
                B(4);
            }
            F();
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i4;
        this.f7776a = 0;
        this.f7778b = true;
        this.f7787j = -1;
        this.f7788k = -1;
        this.f7802y = new j(this);
        this.f7753D = 0.5f;
        this.f7755F = -1.0f;
        this.f7758I = true;
        this.f7759J = 4;
        this.f7764O = 0.1f;
        this.f7770U = new ArrayList();
        this.f7777a0 = -1;
        this.f7779b0 = new d(this);
        this.f7784g = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0980a.f9627c);
        int i5 = 3;
        if (obtainStyledAttributes.hasValue(3)) {
            this.f7786i = A2.d.a(context, obtainStyledAttributes, 3);
        }
        if (obtainStyledAttributes.hasValue(20)) {
            this.f7800w = new n(n.b(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal));
        }
        n nVar = this.f7800w;
        if (nVar != null) {
            C2.i iVar = new C2.i(nVar);
            this.f7785h = iVar;
            iVar.j(context);
            ColorStateList colorStateList = this.f7786i;
            if (colorStateList != null) {
                this.f7785h.l(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(16842801, typedValue, true);
                this.f7785h.setTint(typedValue.data);
            }
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f7803z = ofFloat;
        ofFloat.setDuration(500L);
        this.f7803z.addUpdateListener(new b(this));
        this.f7755F = obtainStyledAttributes.getDimension(2, -1.0f);
        if (obtainStyledAttributes.hasValue(0)) {
            this.f7787j = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (obtainStyledAttributes.hasValue(1)) {
            this.f7788k = obtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(9);
        if (peekValue != null && (i4 = peekValue.data) == -1) {
            A(i4);
        } else {
            A(obtainStyledAttributes.getDimensionPixelSize(9, -1));
        }
        z(obtainStyledAttributes.getBoolean(8, false));
        this.f7790m = obtainStyledAttributes.getBoolean(12, false);
        boolean z4 = obtainStyledAttributes.getBoolean(6, true);
        if (this.f7778b != z4) {
            this.f7778b = z4;
            if (this.f7768S != null) {
                s();
            }
            C((this.f7778b && this.f7759J == 6) ? i5 : this.f7759J);
            F();
        }
        this.f7757H = obtainStyledAttributes.getBoolean(11, false);
        this.f7758I = obtainStyledAttributes.getBoolean(4, true);
        this.f7776a = obtainStyledAttributes.getInt(10, 0);
        float f4 = obtainStyledAttributes.getFloat(7, 0.5f);
        if (f4 > 0.0f && f4 < 1.0f) {
            this.f7753D = f4;
            if (this.f7768S != null) {
                this.f7752C = (int) ((1.0f - f4) * this.f7767R);
            }
            TypedValue peekValue2 = obtainStyledAttributes.peekValue(5);
            if (peekValue2 != null && peekValue2.type == 16) {
                int i6 = peekValue2.data;
                if (i6 >= 0) {
                    this.f7750A = i6;
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(5, 0);
                if (dimensionPixelOffset >= 0) {
                    this.f7750A = dimensionPixelOffset;
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            this.f7791n = obtainStyledAttributes.getBoolean(16, false);
            this.f7792o = obtainStyledAttributes.getBoolean(17, false);
            this.f7793p = obtainStyledAttributes.getBoolean(18, false);
            this.f7794q = obtainStyledAttributes.getBoolean(19, true);
            this.f7795r = obtainStyledAttributes.getBoolean(13, false);
            this.f7796s = obtainStyledAttributes.getBoolean(14, false);
            this.f7797t = obtainStyledAttributes.getBoolean(15, false);
            obtainStyledAttributes.recycle();
            this.f7780c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }
}
