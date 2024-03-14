package e;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import i.AbstractC0970b;
import i.InterfaceC0969a;
import j.C1097o;
import j.InterfaceC1095m;
import java.lang.ref.WeakReference;
import k.C1151n;
/* loaded from: classes.dex */
public final class S extends AbstractC0970b implements InterfaceC1095m {

    /* renamed from: f  reason: collision with root package name */
    public final Context f8873f;

    /* renamed from: g  reason: collision with root package name */
    public final C1097o f8874g;

    /* renamed from: h  reason: collision with root package name */
    public InterfaceC0969a f8875h;

    /* renamed from: i  reason: collision with root package name */
    public WeakReference f8876i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ T f8877j;

    public S(T t4, Context context, v vVar) {
        this.f8877j = t4;
        this.f8873f = context;
        this.f8875h = vVar;
        C1097o c1097o = new C1097o(context);
        c1097o.f10575l = 1;
        this.f8874g = c1097o;
        c1097o.f10568e = this;
    }

    @Override // j.InterfaceC1095m
    public final void a(C1097o c1097o) {
        if (this.f8875h == null) {
            return;
        }
        i();
        C1151n c1151n = this.f8877j.f8885f.f10859g;
        if (c1151n != null) {
            c1151n.l();
        }
    }

    @Override // j.InterfaceC1095m
    public final boolean b(C1097o c1097o, MenuItem menuItem) {
        InterfaceC0969a interfaceC0969a = this.f8875h;
        if (interfaceC0969a != null) {
            return interfaceC0969a.a(this, menuItem);
        }
        return false;
    }

    @Override // i.AbstractC0970b
    public final void c() {
        T t4 = this.f8877j;
        if (t4.f8888i != this) {
            return;
        }
        if (!t4.f8896q) {
            this.f8875h.c(this);
        } else {
            t4.f8889j = this;
            t4.f8890k = this.f8875h;
        }
        this.f8875h = null;
        t4.a(false);
        ActionBarContextView actionBarContextView = t4.f8885f;
        if (actionBarContextView.f2527n == null) {
            actionBarContextView.i();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = t4.f8882c;
        boolean z4 = t4.f8901v;
        if (z4 != actionBarOverlayLayout.f2551m) {
            actionBarOverlayLayout.f2551m = z4;
            if (!z4) {
                actionBarOverlayLayout.s();
                actionBarOverlayLayout.s();
                actionBarOverlayLayout.f2545g.setTranslationY(-Math.max(0, Math.min(0, actionBarOverlayLayout.f2545g.getHeight())));
            }
        }
        t4.f8888i = null;
    }

    @Override // i.AbstractC0970b
    public final View d() {
        WeakReference weakReference = this.f8876i;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // i.AbstractC0970b
    public final C1097o e() {
        return this.f8874g;
    }

    @Override // i.AbstractC0970b
    public final MenuInflater f() {
        return new i.j(this.f8873f);
    }

    @Override // i.AbstractC0970b
    public final CharSequence g() {
        return this.f8877j.f8885f.f2526m;
    }

    @Override // i.AbstractC0970b
    public final CharSequence h() {
        return this.f8877j.f8885f.f2525l;
    }

    @Override // i.AbstractC0970b
    public final void i() {
        if (this.f8877j.f8888i != this) {
            return;
        }
        C1097o c1097o = this.f8874g;
        c1097o.w();
        try {
            this.f8875h.b(this, c1097o);
        } finally {
            c1097o.v();
        }
    }

    @Override // i.AbstractC0970b
    public final boolean j() {
        return this.f8877j.f8885f.f2535v;
    }

    @Override // i.AbstractC0970b
    public final void k(View view) {
        this.f8877j.f8885f.j(view);
        this.f8876i = new WeakReference(view);
    }

    @Override // i.AbstractC0970b
    public final void l(int i4) {
        m(this.f8877j.f8880a.getResources().getString(i4));
    }

    @Override // i.AbstractC0970b
    public final void m(CharSequence charSequence) {
        ActionBarContextView actionBarContextView = this.f8877j.f8885f;
        actionBarContextView.f2526m = charSequence;
        actionBarContextView.h();
    }

    @Override // i.AbstractC0970b
    public final void n(int i4) {
        o(this.f8877j.f8880a.getResources().getString(i4));
    }

    @Override // i.AbstractC0970b
    public final void o(CharSequence charSequence) {
        ActionBarContextView actionBarContextView = this.f8877j.f8885f;
        actionBarContextView.f2525l = charSequence;
        actionBarContextView.h();
        androidx.core.view.J.i(actionBarContextView, charSequence);
    }

    @Override // i.AbstractC0970b
    public final void p(boolean z4) {
        this.f9537e = z4;
        ActionBarContextView actionBarContextView = this.f8877j.f8885f;
        if (z4 != actionBarContextView.f2535v) {
            actionBarContextView.requestLayout();
        }
        actionBarContextView.f2535v = z4;
    }
}
