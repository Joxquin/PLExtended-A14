package b0;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.android.launcher3.util.LooperExecutor;
import com.google.android.apps.nexuslauncher.allapps.ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f4171a;

    /* renamed from: b  reason: collision with root package name */
    public final Executor f4172b;

    /* renamed from: c  reason: collision with root package name */
    public final ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 f4173c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4174d;

    /* renamed from: e  reason: collision with root package name */
    public final j f4175e = new j(this);

    /* renamed from: f  reason: collision with root package name */
    public final k f4176f = new k(this, new Handler(Looper.getMainLooper()));

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ m f4177g;

    public l(m mVar, Uri uri, LooperExecutor looperExecutor, ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0 viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0) {
        this.f4177g = mVar;
        this.f4171a = uri;
        this.f4172b = looperExecutor;
        this.f4173c = viewTreeObserver$OnWindowVisibilityChangeListenerC0715x0;
    }
}
