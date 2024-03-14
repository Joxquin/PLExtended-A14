package j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.android.systemui.shared.R;
import k.C1161s0;
import k.F0;
/* renamed from: j.J  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnKeyListenerC1079J extends y implements PopupWindow.OnDismissListener, View.OnKeyListener {

    /* renamed from: e  reason: collision with root package name */
    public final Context f10470e;

    /* renamed from: f  reason: collision with root package name */
    public final C1097o f10471f;

    /* renamed from: g  reason: collision with root package name */
    public final C1094l f10472g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f10473h;

    /* renamed from: i  reason: collision with root package name */
    public final int f10474i;

    /* renamed from: j  reason: collision with root package name */
    public final int f10475j;

    /* renamed from: k  reason: collision with root package name */
    public final int f10476k;

    /* renamed from: l  reason: collision with root package name */
    public final F0 f10477l;

    /* renamed from: o  reason: collision with root package name */
    public PopupWindow.OnDismissListener f10480o;

    /* renamed from: p  reason: collision with root package name */
    public View f10481p;

    /* renamed from: q  reason: collision with root package name */
    public View f10482q;

    /* renamed from: r  reason: collision with root package name */
    public InterfaceC1071B f10483r;

    /* renamed from: s  reason: collision with root package name */
    public ViewTreeObserver f10484s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f10485t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f10486u;

    /* renamed from: v  reason: collision with root package name */
    public int f10487v;

    /* renamed from: x  reason: collision with root package name */
    public boolean f10489x;

    /* renamed from: m  reason: collision with root package name */
    public final ViewTreeObserver$OnGlobalLayoutListenerC1077H f10478m = new ViewTreeObserver$OnGlobalLayoutListenerC1077H(this);

    /* renamed from: n  reason: collision with root package name */
    public final View$OnAttachStateChangeListenerC1078I f10479n = new View$OnAttachStateChangeListenerC1078I(this);

    /* renamed from: w  reason: collision with root package name */
    public int f10488w = 0;

    public View$OnKeyListenerC1079J(int i4, int i5, Context context, View view, C1097o c1097o, boolean z4) {
        this.f10470e = context;
        this.f10471f = c1097o;
        this.f10473h = z4;
        this.f10472g = new C1094l(c1097o, LayoutInflater.from(context), z4, R.layout.abc_popup_menu_item_layout);
        this.f10475j = i4;
        this.f10476k = i5;
        Resources resources = context.getResources();
        this.f10474i = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f10481p = view;
        this.f10477l = new F0(context, i4, i5);
        c1097o.b(this, context);
    }

    @Override // j.InterfaceC1072C
    public final void a(C1097o c1097o, boolean z4) {
        if (c1097o != this.f10471f) {
            return;
        }
        dismiss();
        InterfaceC1071B interfaceC1071B = this.f10483r;
        if (interfaceC1071B != null) {
            interfaceC1071B.a(c1097o, z4);
        }
    }

    @Override // j.InterfaceC1076G
    public final boolean b() {
        return !this.f10485t && this.f10477l.b();
    }

    @Override // j.InterfaceC1072C
    public final void d() {
        this.f10486u = false;
        C1094l c1094l = this.f10472g;
        if (c1094l != null) {
            c1094l.notifyDataSetChanged();
        }
    }

    @Override // j.InterfaceC1076G
    public final void dismiss() {
        if (b()) {
            this.f10477l.dismiss();
        }
    }

    @Override // j.InterfaceC1076G
    public final C1161s0 e() {
        return this.f10477l.f10732f;
    }

    @Override // j.InterfaceC1072C
    public final boolean g() {
        return false;
    }

    @Override // j.InterfaceC1072C
    public final void i(InterfaceC1071B interfaceC1071B) {
        this.f10483r = interfaceC1071B;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    @Override // j.InterfaceC1072C
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean j(j.SubMenuC1081L r10) {
        /*
            r9 = this;
            boolean r0 = r10.hasVisibleItems()
            r1 = 0
            if (r0 == 0) goto L7a
            j.A r0 = new j.A
            android.content.Context r5 = r9.f10470e
            android.view.View r6 = r9.f10482q
            boolean r8 = r9.f10473h
            int r3 = r9.f10475j
            int r4 = r9.f10476k
            r2 = r0
            r7 = r10
            r2.<init>(r3, r4, r5, r6, r7, r8)
            j.B r2 = r9.f10483r
            r0.f10463i = r2
            j.y r3 = r0.f10464j
            if (r3 == 0) goto L23
            r3.i(r2)
        L23:
            boolean r2 = j.y.t(r10)
            r0.f10462h = r2
            j.y r3 = r0.f10464j
            if (r3 == 0) goto L30
            r3.n(r2)
        L30:
            android.widget.PopupWindow$OnDismissListener r2 = r9.f10480o
            r0.f10465k = r2
            r2 = 0
            r9.f10480o = r2
            j.o r2 = r9.f10471f
            r2.c(r1)
            k.F0 r2 = r9.f10477l
            int r3 = r2.f10735i
            int r2 = r2.m()
            int r4 = r9.f10488w
            android.view.View r5 = r9.f10481p
            java.util.WeakHashMap r6 = androidx.core.view.J.f3079a
            int r5 = androidx.core.view.C0187y.c(r5)
            int r4 = android.view.Gravity.getAbsoluteGravity(r4, r5)
            r4 = r4 & 7
            r5 = 5
            if (r4 != r5) goto L5e
            android.view.View r4 = r9.f10481p
            int r4 = r4.getWidth()
            int r3 = r3 + r4
        L5e:
            boolean r4 = r0.b()
            r5 = 1
            if (r4 == 0) goto L66
            goto L6f
        L66:
            android.view.View r4 = r0.f10460f
            if (r4 != 0) goto L6c
            r0 = r1
            goto L70
        L6c:
            r0.d(r3, r2, r5, r5)
        L6f:
            r0 = r5
        L70:
            if (r0 == 0) goto L7a
            j.B r9 = r9.f10483r
            if (r9 == 0) goto L79
            r9.c(r10)
        L79:
            return r5
        L7a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: j.View$OnKeyListenerC1079J.j(j.L):boolean");
    }

    @Override // j.y
    public final void k(C1097o c1097o) {
    }

    @Override // j.y
    public final void m(View view) {
        this.f10481p = view;
    }

    @Override // j.y
    public final void n(boolean z4) {
        this.f10472g.f10559f = z4;
    }

    @Override // j.y
    public final void o(int i4) {
        this.f10488w = i4;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f10485t = true;
        this.f10471f.c(true);
        ViewTreeObserver viewTreeObserver = this.f10484s;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f10484s = this.f10482q.getViewTreeObserver();
            }
            this.f10484s.removeGlobalOnLayoutListener(this.f10478m);
            this.f10484s = null;
        }
        this.f10482q.removeOnAttachStateChangeListener(this.f10479n);
        PopupWindow.OnDismissListener onDismissListener = this.f10480o;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && i4 == 82) {
            dismiss();
            return true;
        }
        return false;
    }

    @Override // j.y
    public final void p(int i4) {
        this.f10477l.f10735i = i4;
    }

    @Override // j.y
    public final void q(PopupWindow.OnDismissListener onDismissListener) {
        this.f10480o = onDismissListener;
    }

    @Override // j.y
    public final void r(boolean z4) {
        this.f10489x = z4;
    }

    @Override // j.y
    public final void s(int i4) {
        this.f10477l.h(i4);
    }

    @Override // j.InterfaceC1076G
    public final void show() {
        View view;
        Rect rect;
        boolean z4 = true;
        if (!b()) {
            if (this.f10485t || (view = this.f10481p) == null) {
                z4 = false;
            } else {
                this.f10482q = view;
                this.f10477l.f10729C.setOnDismissListener(this);
                F0 f02 = this.f10477l;
                f02.f10745s = this;
                f02.f10728B = true;
                f02.f10729C.setFocusable(true);
                View view2 = this.f10482q;
                boolean z5 = this.f10484s == null;
                ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                this.f10484s = viewTreeObserver;
                if (z5) {
                    viewTreeObserver.addOnGlobalLayoutListener(this.f10478m);
                }
                view2.addOnAttachStateChangeListener(this.f10479n);
                F0 f03 = this.f10477l;
                f03.f10744r = view2;
                f03.f10741o = this.f10488w;
                if (!this.f10486u) {
                    this.f10487v = y.l(this.f10472g, this.f10470e, this.f10474i);
                    this.f10486u = true;
                }
                this.f10477l.q(this.f10487v);
                this.f10477l.f10729C.setInputMethodMode(2);
                F0 f04 = this.f10477l;
                Rect rect2 = this.f10632d;
                if (rect2 != null) {
                    f04.getClass();
                    rect = new Rect(rect2);
                } else {
                    rect = null;
                }
                f04.f10727A = rect;
                this.f10477l.show();
                C1161s0 c1161s0 = this.f10477l.f10732f;
                c1161s0.setOnKeyListener(this);
                if (this.f10489x && this.f10471f.f10576m != null) {
                    FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f10470e).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) c1161s0, false);
                    TextView textView = (TextView) frameLayout.findViewById(16908310);
                    if (textView != null) {
                        textView.setText(this.f10471f.f10576m);
                    }
                    frameLayout.setEnabled(false);
                    c1161s0.addHeaderView(frameLayout, null, false);
                }
                this.f10477l.o(this.f10472g);
                this.f10477l.show();
            }
        }
        if (!z4) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }
}
