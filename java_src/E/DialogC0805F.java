package e;

import a0.C0155h;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.W;
/* renamed from: e.F  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogC0805F extends androidx.activity.n implements InterfaceC0824p {

    /* renamed from: g  reason: collision with root package name */
    public LayoutInflater$Factory2C0803D f8842g;

    /* renamed from: h  reason: collision with root package name */
    public final C0804E f8843h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogC0805F(int r5, android.content.Context r6) {
        /*
            r4 = this;
            r0 = 1
            r1 = 2130968994(0x7f0401a2, float:1.7546657E38)
            if (r5 != 0) goto L15
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r6.getTheme()
            r3.resolveAttribute(r1, r2, r0)
            int r2 = r2.resourceId
            goto L16
        L15:
            r2 = r5
        L16:
            r4.<init>(r2, r6)
            e.E r2 = new e.E
            r2.<init>(r4)
            r4.f8843h = r2
            e.r r4 = r4.f()
            if (r5 != 0) goto L34
            android.util.TypedValue r5 = new android.util.TypedValue
            r5.<init>()
            android.content.res.Resources$Theme r6 = r6.getTheme()
            r6.resolveAttribute(r1, r5, r0)
            int r5 = r5.resourceId
        L34:
            r6 = r4
            e.D r6 = (e.LayoutInflater$Factory2C0803D) r6
            r6.f8811V = r5
            r4.m()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.DialogC0805F.<init>(int, android.content.Context):void");
    }

    private void e() {
        W.b(getWindow().getDecorView(), this);
        C0155h.a(getWindow().getDecorView(), this);
        androidx.activity.u.a(getWindow().getDecorView(), this);
    }

    @Override // e.InterfaceC0824p
    public final void a() {
    }

    @Override // androidx.activity.n, android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        f().c(view, layoutParams);
    }

    @Override // e.InterfaceC0824p
    public final void b() {
    }

    @Override // e.InterfaceC0824p
    public final void c() {
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        f().n();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        getWindow().getDecorView();
        C0804E c0804e = this.f8843h;
        if (c0804e == null) {
            return false;
        }
        return c0804e.superDispatchKeyEvent(keyEvent);
    }

    public final r f() {
        if (this.f8842g == null) {
            K k4 = r.f8982d;
            this.f8842g = new LayoutInflater$Factory2C0803D(getContext(), getWindow(), this, this);
        }
        return this.f8842g;
    }

    @Override // android.app.Dialog
    public final View findViewById(int i4) {
        return f().e(i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        f().j();
    }

    @Override // androidx.activity.n, android.app.Dialog
    public void onCreate(Bundle bundle) {
        f().i();
        super.onCreate(bundle);
        f().m();
    }

    @Override // androidx.activity.n, android.app.Dialog
    public final void onStop() {
        super.onStop();
        f().q();
    }

    @Override // androidx.activity.n, android.app.Dialog
    public void setContentView(int i4) {
        e();
        f().t(i4);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        f().x(charSequence);
    }

    @Override // androidx.activity.n, android.app.Dialog
    public void setContentView(View view) {
        e();
        f().u(view);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i4) {
        super.setTitle(i4);
        f().x(getContext().getString(i4));
    }

    @Override // androidx.activity.n, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        e();
        f().v(view, layoutParams);
    }
}
