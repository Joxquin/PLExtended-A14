package Y1;

import android.net.Uri;
import c2.C0325a;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.util.ComponentKey;
import com.google.android.apps.nexuslauncher.search.AppSearchProvider;
import java.util.concurrent.Callable;
/* renamed from: Y1.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC0146b implements Callable {

    /* renamed from: d  reason: collision with root package name */
    public final ComponentKey f2278d;

    /* renamed from: e  reason: collision with root package name */
    public final Uri f2279e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ AppSearchProvider f2280f;

    public CallableC0146b(AppSearchProvider appSearchProvider, Uri uri) {
        this.f2280f = appSearchProvider;
        this.f2278d = C0325a.a(uri);
        this.f2279e = uri;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        ComponentKey componentKey = this.f2278d;
        int i4 = A.f2273e;
        Uri uri = this.f2279e;
        z zVar = new z(componentKey, "true".equals(uri.getQueryParameter("isDisabled")), uri);
        AppSearchProvider appSearchProvider = this.f2280f;
        LauncherAppState.getInstance(appSearchProvider.getContext()).getIconCache().getTitleAndIcon(zVar, false);
        return AppSearchProvider.b(appSearchProvider.getContext(), zVar);
    }
}
