package e;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import q.C1356g;
import q.C1357h;
/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: d  reason: collision with root package name */
    public static final K f8982d = new K(new L());

    /* renamed from: e  reason: collision with root package name */
    public static final int f8983e = -100;

    /* renamed from: f  reason: collision with root package name */
    public static Boolean f8984f = null;

    /* renamed from: g  reason: collision with root package name */
    public static boolean f8985g = false;

    /* renamed from: h  reason: collision with root package name */
    public static final C1357h f8986h = new C1357h(0);

    /* renamed from: i  reason: collision with root package name */
    public static final Object f8987i = new Object();

    /* renamed from: j  reason: collision with root package name */
    public static final Object f8988j = new Object();

    public static boolean k(Context context) {
        if (f8984f == null) {
            try {
                int i4 = ServiceC0808I.f8853d;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, ServiceC0808I.class), 640).metaData;
                if (bundle != null) {
                    f8984f = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f8984f = Boolean.FALSE;
            }
        }
        return f8984f.booleanValue();
    }

    public static void r(r rVar) {
        synchronized (f8987i) {
            C1357h c1357h = f8986h;
            c1357h.getClass();
            C1356g c1356g = new C1356g(c1357h);
            while (c1356g.hasNext()) {
                r rVar2 = (r) ((WeakReference) c1356g.next()).get();
                if (rVar2 == rVar || rVar2 == null) {
                    c1356g.remove();
                }
            }
        }
    }

    public abstract void c(View view, ViewGroup.LayoutParams layoutParams);

    public Context d(Context context) {
        return context;
    }

    public abstract View e(int i4);

    public Context f() {
        return null;
    }

    public int g() {
        return -100;
    }

    public abstract MenuInflater h();

    public abstract void i();

    public abstract void j();

    public abstract void l();

    public abstract void m();

    public abstract void n();

    public abstract void o();

    public abstract void p();

    public abstract void q();

    public abstract boolean s(int i4);

    public abstract void t(int i4);

    public abstract void u(View view);

    public abstract void v(View view, ViewGroup.LayoutParams layoutParams);

    public void w(int i4) {
    }

    public abstract void x(CharSequence charSequence);
}
