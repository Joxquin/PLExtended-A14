package androidx.appcompat.app;

import B.c;
import a0.C0155h;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.u;
import androidx.fragment.app.P;
import androidx.lifecycle.W;
import com.android.systemui.shared.R;
import e.C0822n;
import e.C0823o;
import e.InterfaceC0824p;
import e.K;
import e.LayoutInflater$Factory2C0803D;
import e.T;
import e.r;
import java.util.ArrayList;
import k.b1;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public class a extends P implements InterfaceC0824p {

    /* renamed from: d  reason: collision with root package name */
    public LayoutInflater$Factory2C0803D f2486d;

    public a() {
        getSavedStateRegistry().c("androidx:appcompat", new C0822n(this));
        addOnContextAvailableListener(new C0823o(this));
    }

    private void initViewTreeOwners() {
        W.b(getWindow().getDecorView(), this);
        View decorView = getWindow().getDecorView();
        h.e(decorView, "<this>");
        decorView.setTag(R.id.view_tree_view_model_store_owner, this);
        C0155h.a(getWindow().getDecorView(), this);
        u.a(getWindow().getDecorView(), this);
    }

    @Override // e.InterfaceC0824p
    public final void a() {
    }

    @Override // androidx.activity.l, android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        k().c(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(k().d(context));
    }

    @Override // e.InterfaceC0824p
    public final void b() {
    }

    @Override // e.InterfaceC0824p
    public final void c() {
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        ((LayoutInflater$Factory2C0803D) k()).L();
        if (getWindow().hasFeature(0)) {
            super.closeOptionsMenu();
        }
    }

    @Override // B.e, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        ((LayoutInflater$Factory2C0803D) k()).L();
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public final View findViewById(int i4) {
        return k().e(i4);
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        return k().h();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i4 = b1.f10873a;
        return super.getResources();
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        k().j();
    }

    public final r k() {
        if (this.f2486d == null) {
            K k4 = r.f8982d;
            this.f2486d = new LayoutInflater$Factory2C0803D(this, null, this, this);
        }
        return this.f2486d;
    }

    @Override // androidx.activity.l, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        k().l();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }

    @Override // androidx.fragment.app.P, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        k().n();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i4, KeyEvent keyEvent) {
        return super.onKeyDown(i4, keyEvent);
    }

    @Override // androidx.fragment.app.P, androidx.activity.l, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i4, MenuItem menuItem) {
        Intent a4;
        if (super.onMenuItemSelected(i4, menuItem)) {
            return true;
        }
        LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D = (LayoutInflater$Factory2C0803D) k();
        layoutInflater$Factory2C0803D.L();
        T t4 = layoutInflater$Factory2C0803D.f8830p;
        if (menuItem.getItemId() == 16908332 && t4 != null && (t4.f8884e.p() & 4) != 0 && (a4 = B.h.a(this)) != null) {
            if (!shouldUpRecreateTask(a4)) {
                navigateUpTo(a4);
                return true;
            }
            ArrayList arrayList = new ArrayList();
            Intent a5 = B.h.a(this);
            if (a5 == null) {
                a5 = B.h.a(this);
            }
            if (a5 != null) {
                ComponentName component = a5.getComponent();
                if (component == null) {
                    component = a5.resolveActivity(getPackageManager());
                }
                int size = arrayList.size();
                try {
                    Intent b4 = B.h.b(this, component);
                    while (b4 != null) {
                        arrayList.add(size, b4);
                        b4 = B.h.b(this, b4.getComponent());
                    }
                    arrayList.add(a5);
                } catch (PackageManager.NameNotFoundException e4) {
                    Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                    throw new IllegalArgumentException(e4);
                }
            }
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
            }
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            Object obj = c.f105a;
            startActivities(intentArr, null);
            try {
                finishAffinity();
                return true;
            } catch (IllegalStateException unused) {
                finish();
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onMenuOpened(int i4, Menu menu) {
        return super.onMenuOpened(i4, menu);
    }

    @Override // androidx.activity.l, android.app.Activity, android.view.Window.Callback
    public final void onPanelClosed(int i4, Menu menu) {
        super.onPanelClosed(i4, menu);
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((LayoutInflater$Factory2C0803D) k()).G();
    }

    @Override // androidx.fragment.app.P, android.app.Activity
    public final void onPostResume() {
        super.onPostResume();
        k().o();
    }

    @Override // androidx.fragment.app.P, android.app.Activity
    public final void onStart() {
        super.onStart();
        k().p();
    }

    @Override // androidx.fragment.app.P, android.app.Activity
    public final void onStop() {
        super.onStop();
        k().q();
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i4) {
        super.onTitleChanged(charSequence, i4);
        k().x(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        ((LayoutInflater$Factory2C0803D) k()).L();
        if (getWindow().hasFeature(0)) {
            super.openOptionsMenu();
        }
    }

    @Override // androidx.activity.l, android.app.Activity
    public final void setContentView(int i4) {
        initViewTreeOwners();
        k().t(i4);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i4) {
        super.setTheme(i4);
        k().w(i4);
    }

    @Override // androidx.fragment.app.P
    public final void supportInvalidateOptionsMenu() {
        k().j();
    }

    @Override // androidx.activity.l, android.app.Activity
    public final void setContentView(View view) {
        initViewTreeOwners();
        k().u(view);
    }

    @Override // androidx.activity.l, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        k().v(view, layoutParams);
    }
}
