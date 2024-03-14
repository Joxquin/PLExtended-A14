package i;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.core.view.J;
import j.C1097o;
import j.InterfaceC1095m;
import java.lang.ref.WeakReference;
import k.C1151n;
/* renamed from: i.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0973e extends AbstractC0970b implements InterfaceC1095m {

    /* renamed from: f  reason: collision with root package name */
    public final Context f9544f;

    /* renamed from: g  reason: collision with root package name */
    public final ActionBarContextView f9545g;

    /* renamed from: h  reason: collision with root package name */
    public final InterfaceC0969a f9546h;

    /* renamed from: i  reason: collision with root package name */
    public WeakReference f9547i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f9548j;

    /* renamed from: k  reason: collision with root package name */
    public final C1097o f9549k;

    public C0973e(Context context, ActionBarContextView actionBarContextView, InterfaceC0969a interfaceC0969a) {
        this.f9544f = context;
        this.f9545g = actionBarContextView;
        this.f9546h = interfaceC0969a;
        C1097o c1097o = new C1097o(actionBarContextView.getContext());
        c1097o.f10575l = 1;
        this.f9549k = c1097o;
        c1097o.f10568e = this;
    }

    @Override // j.InterfaceC1095m
    public final void a(C1097o c1097o) {
        i();
        C1151n c1151n = this.f9545g.f10859g;
        if (c1151n != null) {
            c1151n.l();
        }
    }

    @Override // j.InterfaceC1095m
    public final boolean b(C1097o c1097o, MenuItem menuItem) {
        return this.f9546h.a(this, menuItem);
    }

    @Override // i.AbstractC0970b
    public final void c() {
        if (this.f9548j) {
            return;
        }
        this.f9548j = true;
        this.f9546h.c(this);
    }

    @Override // i.AbstractC0970b
    public final View d() {
        WeakReference weakReference = this.f9547i;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // i.AbstractC0970b
    public final C1097o e() {
        return this.f9549k;
    }

    @Override // i.AbstractC0970b
    public final MenuInflater f() {
        return new j(this.f9545g.getContext());
    }

    @Override // i.AbstractC0970b
    public final CharSequence g() {
        return this.f9545g.f2526m;
    }

    @Override // i.AbstractC0970b
    public final CharSequence h() {
        return this.f9545g.f2525l;
    }

    @Override // i.AbstractC0970b
    public final void i() {
        this.f9546h.b(this, this.f9549k);
    }

    @Override // i.AbstractC0970b
    public final boolean j() {
        return this.f9545g.f2535v;
    }

    @Override // i.AbstractC0970b
    public final void k(View view) {
        this.f9545g.j(view);
        this.f9547i = view != null ? new WeakReference(view) : null;
    }

    @Override // i.AbstractC0970b
    public final void l(int i4) {
        m(this.f9544f.getString(i4));
    }

    @Override // i.AbstractC0970b
    public final void m(CharSequence charSequence) {
        ActionBarContextView actionBarContextView = this.f9545g;
        actionBarContextView.f2526m = charSequence;
        actionBarContextView.h();
    }

    @Override // i.AbstractC0970b
    public final void n(int i4) {
        o(this.f9544f.getString(i4));
    }

    @Override // i.AbstractC0970b
    public final void o(CharSequence charSequence) {
        ActionBarContextView actionBarContextView = this.f9545g;
        actionBarContextView.f2525l = charSequence;
        actionBarContextView.h();
        J.i(actionBarContextView, charSequence);
    }

    @Override // i.AbstractC0970b
    public final void p(boolean z4) {
        this.f9537e = z4;
        ActionBarContextView actionBarContextView = this.f9545g;
        if (z4 != actionBarContextView.f2535v) {
            actionBarContextView.requestLayout();
        }
        actionBarContextView.f2535v = z4;
    }
}
