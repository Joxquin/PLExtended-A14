package k;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import com.android.systemui.shared.system.QuickStepContract;
import d.C0792a;
import j.InterfaceC1076G;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class C0 implements InterfaceC1076G {

    /* renamed from: A  reason: collision with root package name */
    public Rect f10727A;

    /* renamed from: B  reason: collision with root package name */
    public boolean f10728B;

    /* renamed from: C  reason: collision with root package name */
    public final K f10729C;

    /* renamed from: d  reason: collision with root package name */
    public final Context f10730d;

    /* renamed from: e  reason: collision with root package name */
    public ListAdapter f10731e;

    /* renamed from: f  reason: collision with root package name */
    public C1161s0 f10732f;

    /* renamed from: i  reason: collision with root package name */
    public int f10735i;

    /* renamed from: j  reason: collision with root package name */
    public int f10736j;

    /* renamed from: l  reason: collision with root package name */
    public boolean f10738l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f10739m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f10740n;

    /* renamed from: q  reason: collision with root package name */
    public C1175z0 f10743q;

    /* renamed from: r  reason: collision with root package name */
    public View f10744r;

    /* renamed from: s  reason: collision with root package name */
    public AdapterView.OnItemClickListener f10745s;

    /* renamed from: t  reason: collision with root package name */
    public AdapterView.OnItemSelectedListener f10746t;

    /* renamed from: y  reason: collision with root package name */
    public final Handler f10751y;

    /* renamed from: g  reason: collision with root package name */
    public final int f10733g = -2;

    /* renamed from: h  reason: collision with root package name */
    public int f10734h = -2;

    /* renamed from: k  reason: collision with root package name */
    public final int f10737k = 1002;

    /* renamed from: o  reason: collision with root package name */
    public int f10741o = 0;

    /* renamed from: p  reason: collision with root package name */
    public final int f10742p = Integer.MAX_VALUE;

    /* renamed from: u  reason: collision with root package name */
    public final RunnableC1171x0 f10747u = new RunnableC1171x0(this, 2);

    /* renamed from: v  reason: collision with root package name */
    public final B0 f10748v = new B0(this);

    /* renamed from: w  reason: collision with root package name */
    public final A0 f10749w = new A0(this);

    /* renamed from: x  reason: collision with root package name */
    public final RunnableC1171x0 f10750x = new RunnableC1171x0(this, 1);

    /* renamed from: z  reason: collision with root package name */
    public final Rect f10752z = new Rect();

    public C0(Context context, AttributeSet attributeSet, int i4, int i5) {
        this.f10730d = context;
        this.f10751y = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0792a.f8745o, i4, i5);
        this.f10735i = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f10736j = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f10738l = true;
        }
        obtainStyledAttributes.recycle();
        K k4 = new K(context, attributeSet, i4, i5);
        this.f10729C = k4;
        k4.setInputMethodMode(1);
    }

    public final int a() {
        return this.f10735i;
    }

    @Override // j.InterfaceC1076G
    public final boolean b() {
        return this.f10729C.isShowing();
    }

    public final Drawable d() {
        return this.f10729C.getBackground();
    }

    @Override // j.InterfaceC1076G
    public final void dismiss() {
        K k4 = this.f10729C;
        k4.dismiss();
        k4.setContentView(null);
        this.f10732f = null;
        this.f10751y.removeCallbacks(this.f10747u);
    }

    @Override // j.InterfaceC1076G
    public final C1161s0 e() {
        return this.f10732f;
    }

    public final void g(Drawable drawable) {
        this.f10729C.setBackgroundDrawable(drawable);
    }

    public final void h(int i4) {
        this.f10736j = i4;
        this.f10738l = true;
    }

    public final void k(int i4) {
        this.f10735i = i4;
    }

    public final int m() {
        if (this.f10738l) {
            return this.f10736j;
        }
        return 0;
    }

    public void o(ListAdapter listAdapter) {
        C1175z0 c1175z0 = this.f10743q;
        if (c1175z0 == null) {
            this.f10743q = new C1175z0(this);
        } else {
            ListAdapter listAdapter2 = this.f10731e;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(c1175z0);
            }
        }
        this.f10731e = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f10743q);
        }
        C1161s0 c1161s0 = this.f10732f;
        if (c1161s0 != null) {
            c1161s0.setAdapter(this.f10731e);
        }
    }

    public C1161s0 p(Context context, boolean z4) {
        return new C1161s0(context, z4);
    }

    public final void q(int i4) {
        Drawable background = this.f10729C.getBackground();
        if (background == null) {
            this.f10734h = i4;
            return;
        }
        Rect rect = this.f10752z;
        background.getPadding(rect);
        this.f10734h = rect.left + rect.right + i4;
    }

    @Override // j.InterfaceC1076G
    public final void show() {
        int i4;
        int paddingBottom;
        C1161s0 c1161s0;
        C1161s0 c1161s02 = this.f10732f;
        K k4 = this.f10729C;
        Context context = this.f10730d;
        if (c1161s02 == null) {
            C1161s0 p4 = p(context, !this.f10728B);
            this.f10732f = p4;
            p4.setAdapter(this.f10731e);
            this.f10732f.setOnItemClickListener(this.f10745s);
            this.f10732f.setFocusable(true);
            this.f10732f.setFocusableInTouchMode(true);
            this.f10732f.setOnItemSelectedListener(new C1173y0(this));
            this.f10732f.setOnScrollListener(this.f10749w);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f10746t;
            if (onItemSelectedListener != null) {
                this.f10732f.setOnItemSelectedListener(onItemSelectedListener);
            }
            k4.setContentView(this.f10732f);
        } else {
            ViewGroup viewGroup = (ViewGroup) k4.getContentView();
        }
        Drawable background = k4.getBackground();
        Rect rect = this.f10752z;
        if (background != null) {
            background.getPadding(rect);
            int i5 = rect.top;
            i4 = rect.bottom + i5;
            if (!this.f10738l) {
                this.f10736j = -i5;
            }
        } else {
            rect.setEmpty();
            i4 = 0;
        }
        int maxAvailableHeight = k4.getMaxAvailableHeight(this.f10744r, this.f10736j, k4.getInputMethodMode() == 2);
        int i6 = this.f10733g;
        if (i6 == -1) {
            paddingBottom = maxAvailableHeight + i4;
        } else {
            int i7 = this.f10734h;
            int a4 = this.f10732f.a(i7 != -2 ? i7 != -1 ? View.MeasureSpec.makeMeasureSpec(i7, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), maxAvailableHeight + 0);
            paddingBottom = a4 + (a4 > 0 ? this.f10732f.getPaddingBottom() + this.f10732f.getPaddingTop() + i4 + 0 : 0);
        }
        boolean z4 = k4.getInputMethodMode() == 2;
        k4.setWindowLayoutType(this.f10737k);
        if (k4.isShowing()) {
            View view = this.f10744r;
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            if (androidx.core.view.A.b(view)) {
                int i8 = this.f10734h;
                if (i8 == -1) {
                    i8 = -1;
                } else if (i8 == -2) {
                    i8 = this.f10744r.getWidth();
                }
                if (i6 == -1) {
                    i6 = z4 ? paddingBottom : -1;
                    if (z4) {
                        k4.setWidth(this.f10734h == -1 ? -1 : 0);
                        k4.setHeight(0);
                    } else {
                        k4.setWidth(this.f10734h == -1 ? -1 : 0);
                        k4.setHeight(-1);
                    }
                } else if (i6 == -2) {
                    i6 = paddingBottom;
                }
                k4.setOutsideTouchable(true);
                View view2 = this.f10744r;
                int i9 = this.f10735i;
                int i10 = this.f10736j;
                if (i8 < 0) {
                    i8 = -1;
                }
                k4.update(view2, i9, i10, i8, i6 < 0 ? -1 : i6);
                return;
            }
            return;
        }
        int i11 = this.f10734h;
        if (i11 == -1) {
            i11 = -1;
        } else if (i11 == -2) {
            i11 = this.f10744r.getWidth();
        }
        if (i6 == -1) {
            i6 = -1;
        } else if (i6 == -2) {
            i6 = paddingBottom;
        }
        k4.setWidth(i11);
        k4.setHeight(i6);
        k4.setIsClippedToScreen(true);
        k4.setOutsideTouchable(true);
        k4.setTouchInterceptor(this.f10748v);
        if (this.f10740n) {
            k4.setOverlapAnchor(this.f10739m);
        }
        k4.setEpicenterBounds(this.f10727A);
        k4.showAsDropDown(this.f10744r, this.f10735i, this.f10736j, this.f10741o);
        this.f10732f.setSelection(-1);
        if ((!this.f10728B || this.f10732f.isInTouchMode()) && (c1161s0 = this.f10732f) != null) {
            c1161s0.f10970k = true;
            c1161s0.requestLayout();
        }
        if (this.f10728B) {
            return;
        }
        this.f10751y.post(this.f10750x);
    }
}
