package i;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import j.MenuC1075F;
/* renamed from: i.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0975g extends ActionMode {

    /* renamed from: a  reason: collision with root package name */
    public final Context f9554a;

    /* renamed from: b  reason: collision with root package name */
    public final AbstractC0970b f9555b;

    public C0975g(Context context, AbstractC0970b abstractC0970b) {
        this.f9554a = context;
        this.f9555b = abstractC0970b;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f9555b.c();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f9555b.d();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new MenuC1075F(this.f9554a, this.f9555b.e());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f9555b.f();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f9555b.g();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f9555b.f9536d;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f9555b.h();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f9555b.f9537e;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f9555b.i();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f9555b.j();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f9555b.k(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f9555b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f9555b.f9536d = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f9555b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z4) {
        this.f9555b.p(z4);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i4) {
        this.f9555b.l(i4);
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i4) {
        this.f9555b.n(i4);
    }
}
