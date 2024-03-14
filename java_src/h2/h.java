package h2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.WindowManager;
import com.google.android.libraries.launcherclient.ILauncherOverlay;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: q  reason: collision with root package name */
    public static int f9510q = -1;

    /* renamed from: a  reason: collision with root package name */
    public final Activity f9511a;

    /* renamed from: b  reason: collision with root package name */
    public final i f9512b;

    /* renamed from: c  reason: collision with root package name */
    public final Handler f9513c;

    /* renamed from: d  reason: collision with root package name */
    public final c f9514d;

    /* renamed from: e  reason: collision with root package name */
    public final c f9515e;

    /* renamed from: f  reason: collision with root package name */
    public final m f9516f;

    /* renamed from: g  reason: collision with root package name */
    public final C0968a f9517g;

    /* renamed from: h  reason: collision with root package name */
    public final d f9518h;

    /* renamed from: i  reason: collision with root package name */
    public ILauncherOverlay f9519i;

    /* renamed from: j  reason: collision with root package name */
    public int f9520j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f9521k;

    /* renamed from: l  reason: collision with root package name */
    public int f9522l;

    /* renamed from: m  reason: collision with root package name */
    public f f9523m;

    /* renamed from: n  reason: collision with root package name */
    public Bundle f9524n;

    /* renamed from: o  reason: collision with root package name */
    public WindowManager.LayoutParams f9525o;

    /* renamed from: p  reason: collision with root package name */
    public g f9526p;

    public h(Activity activity, i iVar, f fVar, Looper looper) {
        c cVar = new c("Client", 20);
        this.f9514d = cVar;
        this.f9515e = new c("Service", 10);
        d dVar = new d(this);
        this.f9518h = dVar;
        this.f9520j = 0;
        this.f9521k = false;
        this.f9522l = 0;
        this.f9511a = activity;
        this.f9512b = iVar;
        this.f9523m = fVar;
        Handler handler = new Handler(looper);
        this.f9513c = handler;
        this.f9523m.getClass();
        this.f9516f = new m(activity, 65, handler);
        this.f9523m.getClass();
        C0968a c0968a = C0968a.f9488m;
        if (c0968a != null && !"com.google.android.googlequicksearchbox".equals(c0968a.f9532h)) {
            c0968a.b();
            C0968a.f9488m = null;
        }
        if (C0968a.f9488m == null) {
            C0968a.f9488m = new C0968a(activity.getApplicationContext(), handler);
        }
        C0968a c0968a2 = C0968a.f9488m;
        this.f9517g = c0968a2;
        c0968a2.getClass();
        c0968a2.f9490k = new WeakReference(this);
        this.f9519i = c0968a2.f9489j;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        this.f9523m.getClass();
        intentFilter.addDataSchemeSpecificPart("com.google.android.googlequicksearchbox", 0);
        activity.registerReceiver(dVar, intentFilter);
        if (f9510q < 1) {
            e(activity);
        }
        d();
        if (activity.getWindow() == null || activity.getWindow().peekDecorView() == null || !activity.getWindow().peekDecorView().isAttachedToWindow() || this.f9521k) {
            return;
        }
        cVar.a("attachedToWindow");
        g(activity.getWindow().getAttributes());
    }

    public static Intent b(Context context, String str) {
        String packageName = context.getPackageName();
        int myUid = Process.myUid();
        StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 18);
        sb.append("app://");
        sb.append(packageName);
        sb.append(":");
        sb.append(myUid);
        return new Intent("com.android.launcher3.WINDOW_OVERLAY").setPackage(str).setData(Uri.parse(sb.toString()).buildUpon().appendQueryParameter("v", Integer.toString(11)).appendQueryParameter("cv", Integer.toString(20)).build());
    }

    public final void a() {
        if (this.f9519i != null) {
            try {
                if (this.f9526p == null) {
                    this.f9526p = new g();
                }
                this.f9526p.a(this);
                if (f9510q < 3) {
                    this.f9519i.windowAttached(this.f9525o, this.f9526p, this.f9523m.f9503a);
                } else {
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("layout_params", this.f9525o);
                    bundle.putParcelable("configuration", this.f9511a.getResources().getConfiguration());
                    bundle.putInt("client_options", this.f9523m.f9503a);
                    this.f9523m.getClass();
                    Bundle bundle2 = this.f9524n;
                    if (bundle2 != null) {
                        bundle.putAll(bundle2);
                    }
                    this.f9519i.windowAttached2(bundle, this.f9526p);
                }
                if (f9510q >= 4) {
                    this.f9519i.setActivityState(this.f9520j);
                } else if ((this.f9520j & 2) != 0) {
                    this.f9519i.onResume();
                } else {
                    this.f9519i.onPause();
                }
            } catch (RemoteException unused) {
            }
        }
    }

    public final void c(int i4) {
        boolean z4 = (i4 & 1) != 0;
        int i5 = this.f9522l;
        boolean z5 = (i5 & 1) != 0;
        boolean z6 = (i4 & 2) != 0;
        boolean z7 = (i5 & 2) != 0;
        if (z4 != z5 || z6 != z7) {
            this.f9512b.g(z4);
        }
        this.f9522l = i4;
    }

    public final void d() {
        this.f9523m.getClass();
        if (this.f9521k) {
            return;
        }
        e eVar = new e(1, this);
        Handler handler = this.f9513c;
        if (handler.getLooper() == Looper.myLooper()) {
            eVar.run();
        } else {
            handler.post(eVar);
        }
    }

    public final void e(Context context) {
        Bundle bundle;
        PackageManager packageManager = context.getPackageManager();
        this.f9523m.getClass();
        ResolveInfo resolveService = packageManager.resolveService(b(context, "com.google.android.googlequicksearchbox"), 128);
        if (resolveService == null || (bundle = resolveService.serviceInfo.metaData) == null) {
            f9510q = 1;
        } else {
            f9510q = bundle.getInt("service.api.version", 1);
        }
    }

    public final void f(Bundle bundle) {
        String valueOf = String.valueOf(bundle == null ? "null" : TextUtils.join(",", bundle.keySet()));
        this.f9514d.a(valueOf.length() != 0 ? "setPrivateOptions : ".concat(valueOf) : new String("setPrivateOptions : "));
        this.f9524n = bundle;
        if (this.f9525o == null || f9510q < 7) {
            return;
        }
        a();
    }

    public final void g(WindowManager.LayoutParams layoutParams) {
        if (this.f9525o == layoutParams) {
            return;
        }
        this.f9525o = layoutParams;
        if (layoutParams != null) {
            a();
            return;
        }
        ILauncherOverlay iLauncherOverlay = this.f9519i;
        if (iLauncherOverlay != null) {
            try {
                iLauncherOverlay.windowDetached(this.f9511a.isChangingConfigurations());
            } catch (RemoteException unused) {
            }
            this.f9519i = null;
        }
    }
}
