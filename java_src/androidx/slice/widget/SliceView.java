package androidx.slice.widget;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import androidx.lifecycle.z;
import androidx.slice.Slice;
import androidx.slice.SliceItem;
import androidx.slice.core.a;
import b0.C0307a;
import b0.C0312f;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.allapps.SearchResultIconSlice;
import d0.C0797e;
import f0.C0834a;
import f0.C0836c;
import f0.C0843j;
import f0.C0849p;
import f0.F;
import f0.G;
import f0.I;
import f0.J;
import f0.K;
import f0.L;
import f0.M;
import f0.N;
import f0.O;
import f0.P;
import f0.Q;
import f0.RunnableC0846m;
import f0.y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class SliceView extends ViewGroup implements z, View.OnClickListener {

    /* renamed from: I  reason: collision with root package name */
    public static final L f4118I = new L();

    /* renamed from: A  reason: collision with root package name */
    public View.OnClickListener f4119A;

    /* renamed from: B  reason: collision with root package name */
    public int f4120B;

    /* renamed from: C  reason: collision with root package name */
    public int f4121C;

    /* renamed from: D  reason: collision with root package name */
    public boolean f4122D;

    /* renamed from: E  reason: collision with root package name */
    public boolean f4123E;

    /* renamed from: F  reason: collision with root package name */
    public int[] f4124F;

    /* renamed from: G  reason: collision with root package name */
    public final K f4125G;

    /* renamed from: H  reason: collision with root package name */
    public final K f4126H;

    /* renamed from: d  reason: collision with root package name */
    public C0843j f4127d;

    /* renamed from: e  reason: collision with root package name */
    public F f4128e;

    /* renamed from: f  reason: collision with root package name */
    public View.OnLongClickListener f4129f;

    /* renamed from: g  reason: collision with root package name */
    public Handler f4130g;

    /* renamed from: h  reason: collision with root package name */
    public C0312f f4131h;

    /* renamed from: i  reason: collision with root package name */
    public Slice f4132i;

    /* renamed from: j  reason: collision with root package name */
    public I f4133j;

    /* renamed from: k  reason: collision with root package name */
    public List f4134k;

    /* renamed from: l  reason: collision with root package name */
    public C0834a f4135l;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f4136m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f4137n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f4138o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f4139p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f4140q;

    /* renamed from: r  reason: collision with root package name */
    public int f4141r;

    /* renamed from: s  reason: collision with root package name */
    public int f4142s;

    /* renamed from: t  reason: collision with root package name */
    public int f4143t;

    /* renamed from: u  reason: collision with root package name */
    public int f4144u;

    /* renamed from: v  reason: collision with root package name */
    public O f4145v;

    /* renamed from: w  reason: collision with root package name */
    public J f4146w;

    /* renamed from: x  reason: collision with root package name */
    public int f4147x;

    /* renamed from: y  reason: collision with root package name */
    public M f4148y;

    /* renamed from: z  reason: collision with root package name */
    public int f4149z;

    public SliceView(Context context) {
        this(context, null);
    }

    public final void a() {
        this.f4128e.k(this.f4148y);
        F f4 = this.f4128e;
        J j4 = this.f4146w;
        f4.o(j4, j4.b(null));
        this.f4128e.p(c());
        C0843j c0843j = this.f4127d;
        if (c0843j == null || c0843j.b() == -1) {
            this.f4128e.setLayoutDirection(2);
        } else {
            this.f4128e.setLayoutDirection(this.f4127d.b());
        }
    }

    public final ViewGroup.LayoutParams b(View view) {
        if (view instanceof y) {
            int i4 = this.f4141r;
            return new ViewGroup.LayoutParams(i4, i4);
        }
        return new ViewGroup.LayoutParams(-1, -1);
    }

    public final int c() {
        int i4 = this.f4147x;
        if (i4 != -1) {
            return i4;
        }
        SliceItem h4 = C0797e.h(this.f4132i, "int", "color");
        return h4 != null ? h4.d() : P.b(16843829, getContext());
    }

    public final boolean d(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f4130g.removeCallbacks(this.f4125G);
            this.f4120B = (int) motionEvent.getRawX();
            this.f4121C = (int) motionEvent.getRawY();
            this.f4122D = true;
            this.f4123E = false;
            this.f4130g.postDelayed(this.f4125G, ViewConfiguration.getLongPressTimeout());
            return false;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int rawX = ((int) motionEvent.getRawX()) - this.f4120B;
                int rawY = ((int) motionEvent.getRawY()) - this.f4121C;
                if ((rawY * rawY) + (rawX * rawX) > this.f4149z) {
                    this.f4122D = false;
                    this.f4130g.removeCallbacks(this.f4125G);
                }
                return this.f4123E;
            } else if (actionMasked != 3) {
                return false;
            }
        }
        boolean z4 = this.f4123E;
        this.f4122D = false;
        this.f4123E = false;
        this.f4130g.removeCallbacks(this.f4125G);
        return z4;
    }

    public final void e(Context context, AttributeSet attributeSet, int i4, int i5) {
        J j4 = new J(context, attributeSet, i4, i5);
        this.f4146w = j4;
        this.f4147x = j4.f9104a;
        this.f4141r = getContext().getResources().getDimensionPixelSize(R.dimen.abc_slice_shortcut_size);
        this.f4142s = getContext().getResources().getDimensionPixelSize(R.dimen.abc_slice_row_min_height);
        this.f4143t = getResources().getDimensionPixelSize(R.dimen.abc_slice_large_height);
        this.f4144u = getResources().getDimensionPixelSize(R.dimen.abc_slice_action_row_height);
        this.f4145v = new O();
        Q q4 = new Q(getContext());
        this.f4128e = q4;
        q4.i(this.f4145v);
        F f4 = this.f4128e;
        addView(f4, b(f4));
        a();
        C0834a c0834a = new C0834a(getContext());
        this.f4135l = c0834a;
        c0834a.setBackground(new ColorDrawable(-1118482));
        C0834a c0834a2 = this.f4135l;
        addView(c0834a2, b(c0834a2));
        j();
        int scaledTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.f4149z = scaledTouchSlop * scaledTouchSlop;
        this.f4130g = new Handler();
        setClipToPadding(false);
        super.setOnClickListener(this);
    }

    public final void f(boolean z4) {
        I i4 = this.f4133j;
        if (i4 != null) {
            if (z4 && !this.f4137n) {
                i4.f9091a.logVisible();
                this.f4137n = true;
            }
            if (z4 || !this.f4137n) {
                return;
            }
            this.f4133j.f9091a.logHidden();
            this.f4137n = false;
        }
    }

    public final void g(boolean z4) {
        C0312f c0312f;
        if (!this.f4136m || (c0312f = this.f4131h) == null) {
            return;
        }
        if (c0312f.f4157b == -1) {
            return;
        }
        if (!z4) {
            this.f4130g.removeCallbacks(this.f4126H);
            return;
        }
        Handler handler = this.f4130g;
        K k4 = this.f4126H;
        long j4 = 60000;
        if (!c0312f.b()) {
            C0312f c0312f2 = this.f4131h;
            c0312f2.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            long j5 = c0312f2.f4157b;
            long j6 = 0;
            if (j5 != 0 && j5 != -1 && currentTimeMillis <= j5) {
                j6 = j5 - currentTimeMillis;
            }
            j4 = 60000 + j6;
        }
        handler.postDelayed(k4, j4);
    }

    public final void h(int i4) {
        Q q4;
        C0843j c0843j;
        if (this.f4145v.f9134c == i4) {
            return;
        }
        boolean z4 = true;
        if (i4 != 1 && i4 != 2 && i4 != 3) {
            Log.w("SliceView", "Unknown mode: " + i4 + " please use one of MODE_SHORTCUT, MODE_SMALL, MODE_LARGE");
            i4 = 2;
        }
        O o4 = this.f4145v;
        if (o4.f9134c != i4) {
            o4.f9134c = i4;
            N n4 = o4.f9135d;
            if (n4 != null && (c0843j = (q4 = (Q) n4).f9140t) != null) {
                c0843j.a(q4.f9082m, q4.f9084o);
                q4.q();
            }
        }
        int i5 = this.f4145v.f9134c;
        F f4 = this.f4128e;
        boolean z5 = f4 instanceof y;
        Set a4 = f4.a();
        if (i5 == 3 && !z5) {
            removeView(this.f4128e);
            y yVar = new y(getContext());
            this.f4128e = yVar;
            addView(yVar, b(yVar));
        } else if (i5 == 3 || !z5) {
            z4 = false;
        } else {
            removeView(this.f4128e);
            Q q5 = new Q(getContext());
            this.f4128e = q5;
            addView(q5, b(q5));
        }
        if (z4) {
            this.f4128e.i(this.f4145v);
            a();
            C0843j c0843j2 = this.f4127d;
            if (c0843j2 != null && c0843j2.f()) {
                this.f4128e.m(this.f4127d);
            }
            this.f4128e.h(a4);
        }
        j();
    }

    @Override // androidx.lifecycle.z
    public final void i(Object obj) {
        C0849p c0849p;
        View view;
        Slice slice = (Slice) obj;
        View findFocus = findFocus();
        if (findFocus != null) {
            new RunnableC0846m(this, findFocus, RunnableC0846m.f9195g);
        }
        boolean z4 = false;
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isTouchExplorationEnabled()) {
            ArrayList<View> arrayList = new ArrayList<>();
            addFocusables(arrayList, 2, 0);
            Iterator<View> it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    view = null;
                    break;
                }
                view = it.next();
                if (view.isAccessibilityFocused()) {
                    break;
                }
            }
            if (view != null) {
                new RunnableC0846m(this, view, RunnableC0846m.f9196h);
            }
        }
        if (slice == null || slice.c() == null) {
            f(false);
            this.f4133j = null;
        } else {
            Slice slice2 = this.f4132i;
            if (slice2 == null || !slice2.c().equals(slice.c())) {
                f(false);
                this.f4133j = new I(getContext(), slice.c());
            }
        }
        boolean z5 = (slice == null || this.f4132i == null || !slice.c().equals(this.f4132i.c())) ? false : true;
        C0312f c0312f = this.f4131h;
        this.f4132i = slice;
        C0312f c0312f2 = slice != null ? new C0312f(getContext(), this.f4132i) : null;
        this.f4131h = c0312f2;
        if (!z5) {
            this.f4128e.c();
        } else if (c0312f.a() == 2 && c0312f2.a() == 0) {
            return;
        }
        C0312f c0312f3 = this.f4131h;
        C0843j c0843j = c0312f3 != null ? c0312f3.f4159d : null;
        this.f4127d = c0843j;
        if (this.f4138o) {
            this.f4138o = true;
            if (c0843j != null && (c0849p = c0843j.f9191g) != null) {
                c0849p.f9214q = true;
            }
        }
        if (this.f4139p) {
            this.f4139p = true;
            if (c0843j != null && c0843j.f9191g != null && c0843j.f9192h.size() > 1) {
                c0843j.f9191g.f9215r = true;
            }
        }
        if (this.f4140q) {
            this.f4140q = true;
            C0843j c0843j2 = this.f4127d;
            if (c0843j2 != null) {
                Iterator it2 = c0843j2.f9192h.iterator();
                while (it2.hasNext()) {
                    G g4 = (G) it2.next();
                    if (g4 instanceof C0849p) {
                        ((C0849p) g4).f9216s = true;
                    }
                }
            }
        }
        C0843j c0843j3 = this.f4127d;
        if (c0843j3 == null || !c0843j3.f()) {
            this.f4134k = null;
            this.f4128e.c();
            j();
            return;
        }
        this.f4128e.h(null);
        C0312f c0312f4 = this.f4131h;
        this.f4134k = c0312f4.f4161f;
        this.f4128e.g(c0312f4.f4158c);
        F f4 = this.f4128e;
        if (this.f4136m && this.f4131h.b()) {
            z4 = true;
        }
        f4.j(z4);
        this.f4128e.e(C0307a.a(this.f4131h.f4156a.f4054c, "permission_request"));
        this.f4128e.p(c());
        if (this.f4127d.b() != -1) {
            this.f4128e.setLayoutDirection(this.f4127d.b());
        } else {
            this.f4128e.setLayoutDirection(2);
        }
        this.f4128e.m(this.f4127d);
        j();
        f(true);
        g(true);
    }

    public final void j() {
        if (this.f4134k == null) {
            this.f4135l.setVisibility(8);
            this.f4128e.l(null);
            this.f4128e.f(getPaddingStart(), getPaddingTop(), getPaddingEnd(), getPaddingBottom());
            return;
        }
        ArrayList arrayList = new ArrayList(this.f4134k);
        Collections.sort(arrayList, f4118I);
        this.f4128e.l(arrayList);
        this.f4128e.f(getPaddingStart(), getPaddingTop(), getPaddingEnd(), getPaddingBottom());
        this.f4135l.setVisibility(8);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            f(true);
            g(true);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        M m4;
        int[] iArr;
        C0843j c0843j = this.f4127d;
        if (c0843j == null || c0843j.e(getContext()) == null) {
            View.OnClickListener onClickListener = this.f4119A;
            if (onClickListener != null) {
                onClickListener.onClick(this);
                return;
            }
            return;
        }
        try {
            a aVar = (a) this.f4127d.e(getContext());
            SliceItem sliceItem = aVar.f4081a;
            boolean z4 = sliceItem != null && sliceItem.a(getContext(), null);
            SliceItem sliceItem2 = aVar.f4089i;
            if (z4) {
                this.f4128e.d(sliceItem2);
            }
            if (sliceItem == null || (m4 = this.f4148y) == null || (iArr = this.f4124F) == null || iArr.length <= 1) {
                return;
            }
            ((SearchResultIconSlice) m4).k(sliceItem2, new C0836c(this.f4145v.f9134c, 3, iArr[0], iArr[1]));
            if (this.f4133j == null || sliceItem2.g() == null || sliceItem2.g().c() == null) {
                return;
            }
            this.f4133j.f9091a.logTouch(3, sliceItem2.g().c());
        } catch (PendingIntent.CanceledException e4) {
            Log.e("SliceView", "PendingIntent for slice cannot be sent", e4);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f(false);
        g(false);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (this.f4129f != null && d(motionEvent)) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        F f4 = this.f4128e;
        f4.layout(0, 0, f4.getMeasuredWidth(), f4.getMeasuredHeight());
        if (this.f4135l.getVisibility() != 8) {
            int measuredHeight = f4.getMeasuredHeight();
            C0834a c0834a = this.f4135l;
            c0834a.layout(0, measuredHeight, c0834a.getMeasuredWidth(), this.f4135l.getMeasuredHeight() + measuredHeight);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x00e0, code lost:
        if (r2 >= (r10 + r0)) goto L54;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slice.widget.SliceView.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return (this.f4129f != null && d(motionEvent)) || super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i4) {
        super.onVisibilityChanged(view, i4);
        if (isAttachedToWindow()) {
            f(i4 == 0);
            g(i4 == 0);
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i4) {
        super.onWindowVisibilityChanged(i4);
        f(i4 == 0);
        g(i4 == 0);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f4119A = onClickListener;
    }

    @Override // android.view.View
    public final void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        super.setOnLongClickListener(onLongClickListener);
        this.f4129f = onLongClickListener;
    }

    public SliceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliceViewStyle);
    }

    public SliceView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f4136m = true;
        this.f4137n = false;
        this.f4138o = false;
        this.f4139p = false;
        this.f4140q = false;
        this.f4147x = -1;
        this.f4125G = new K(this, 0);
        this.f4126H = new K(this, 1);
        e(context, attributeSet, i4, R.style.Widget_SliceView);
    }

    public SliceView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.f4136m = true;
        this.f4137n = false;
        this.f4138o = false;
        this.f4139p = false;
        this.f4140q = false;
        this.f4147x = -1;
        this.f4125G = new K(this, 0);
        this.f4126H = new K(this, 1);
        e(context, attributeSet, i4, i5);
    }
}
