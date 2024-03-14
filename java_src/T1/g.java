package T1;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import java.util.List;
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    public final String f1701a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1702b;

    /* renamed from: c  reason: collision with root package name */
    public final Context f1703c;

    /* renamed from: d  reason: collision with root package name */
    public final SimpleBroadcastReceiver f1704d = new SimpleBroadcastReceiver(new c(this, 0));

    /* renamed from: e  reason: collision with root package name */
    public e f1705e;

    public g(int i4, Context context, String str) {
        this.f1701a = str;
        this.f1702b = i4;
        this.f1703c = context;
    }

    public final void a() {
        e eVar = this.f1705e;
        Context context = this.f1703c;
        if (eVar != null) {
            context.getContentResolver().unregisterContentObserver(this.f1705e);
            this.f1705e = null;
        }
        SimpleBroadcastReceiver simpleBroadcastReceiver = this.f1704d;
        simpleBroadcastReceiver.getClass();
        try {
            context.unregisterReceiver(simpleBroadcastReceiver);
        } catch (IllegalArgumentException unused) {
        }
    }

    public abstract Uri b();

    public final void c() {
        a();
        this.f1705e = new e(this, Executors.MODEL_EXECUTOR.getHandler());
        try {
            this.f1703c.getContentResolver().registerContentObserver(b(), false, this.f1705e);
        } catch (SecurityException e4) {
            Log.e("ExternalModelDataLoader", "Failed to register content observer.", e4);
        }
        f();
    }

    public abstract List d();

    public abstract void e(List list);

    public final void f() {
        Context context = this.f1703c;
        SimpleBroadcastReceiver simpleBroadcastReceiver = this.f1704d;
        simpleBroadcastReceiver.getClass();
        try {
            context.unregisterReceiver(simpleBroadcastReceiver);
        } catch (IllegalArgumentException unused) {
        }
        Executors.getPackageExecutor(this.f1701a).execute(new Runnable() { // from class: T1.d
            @Override // java.lang.Runnable
            public final void run() {
                g gVar = g.this;
                LauncherAppState.getInstance(gVar.f1703c).getModel().enqueueModelUpdateTask(new f(gVar, gVar.d()));
            }
        });
    }
}
