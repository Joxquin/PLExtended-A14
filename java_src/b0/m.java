package b0;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.ArrayMap;
import android.util.Pair;
import com.android.launcher3.util.LooperExecutor;
import com.google.android.apps.nexuslauncher.allapps.ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0;
/* loaded from: classes.dex */
public abstract class m {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayMap f4178a = new ArrayMap();

    /* renamed from: b  reason: collision with root package name */
    public final Context f4179b;

    public m(Context context) {
        this.f4179b = context;
    }

    public abstract void a(Uri uri);

    public final void b(Uri uri, LooperExecutor looperExecutor, ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0) {
        l lVar = new l(this, uri, looperExecutor, viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0);
        Pair pair = new Pair(uri, viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0);
        synchronized (this.f4178a) {
            try {
                l lVar2 = (l) this.f4178a.put(pair, lVar);
                if (lVar2 != null) {
                    m mVar = lVar2.f4177g;
                    mVar.f4179b.getContentResolver().unregisterContentObserver(lVar2.f4176f);
                    if (lVar2.f4174d) {
                        mVar.c(lVar2.f4171a);
                        lVar2.f4174d = false;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ContentResolver contentResolver = this.f4179b.getContentResolver();
        Uri uri2 = lVar.f4171a;
        ContentProviderClient acquireContentProviderClient = contentResolver.acquireContentProviderClient(uri2);
        if (acquireContentProviderClient != null) {
            acquireContentProviderClient.release();
            this.f4179b.getContentResolver().registerContentObserver(uri2, true, lVar.f4176f);
            if (lVar.f4174d) {
                return;
            }
            try {
                a(lVar.f4171a);
                lVar.f4174d = true;
            } catch (SecurityException unused) {
            }
        }
    }

    public abstract void c(Uri uri);
}
