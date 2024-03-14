package e2;

import android.app.search.SearchContext;
import android.app.search.SearchSession;
import android.app.search.SearchUiManager;
import android.os.Bundle;
/* renamed from: e2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0830a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9010d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f9011e;

    public /* synthetic */ RunnableC0830a(int i4, Object obj) {
        this.f9010d = i4;
        this.f9011e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9010d) {
            case 0:
                h hVar = (h) this.f9011e;
                SearchSession searchSession = hVar.f9035f;
                if (searchSession != null) {
                    searchSession.destroy();
                    hVar.f9035f = null;
                    return;
                }
                return;
            case 1:
                final h hVar2 = (h) this.f9011e;
                SearchSession searchSession2 = hVar2.f9035f;
                if (searchSession2 != null) {
                    searchSession2.destroy();
                    hVar2.f9035f = null;
                }
                Bundle bundle = new Bundle();
                bundle.putInt("launcher.gridSize", 50);
                final SearchSession createSearchSession = ((SearchUiManager) hVar2.f9030a.getSystemService(SearchUiManager.class)).createSearchSession(new SearchContext(32897, 200, bundle));
                hVar2.f9035f = createSearchSession;
                hVar2.f9032c.post(new Runnable() { // from class: e2.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.this.f9034e = createSearchSession;
                    }
                });
                return;
            default:
                ((g) this.f9011e).a();
                return;
        }
    }
}
