package e2;

import android.app.search.SearchSession;
import android.content.Context;
import android.os.Handler;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.search.SearchAlgorithm;
import com.android.launcher3.search.SearchCallback;
import com.android.launcher3.util.Executors;
/* loaded from: classes.dex */
public final class h implements SearchAlgorithm {

    /* renamed from: a  reason: collision with root package name */
    public final Context f9030a;

    /* renamed from: b  reason: collision with root package name */
    public final PopupDataProvider f9031b;

    /* renamed from: c  reason: collision with root package name */
    public final Handler f9032c = new Handler(Executors.MAIN_EXECUTOR.getLooper());

    /* renamed from: d  reason: collision with root package name */
    public g f9033d;

    /* renamed from: e  reason: collision with root package name */
    public SearchSession f9034e;

    /* renamed from: f  reason: collision with root package name */
    public SearchSession f9035f;

    public h(Context context, PopupDataProvider popupDataProvider) {
        this.f9030a = context;
        this.f9031b = popupDataProvider;
        Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0830a(1, this));
    }

    @Override // com.android.launcher3.search.SearchAlgorithm
    public final void cancel(boolean z4) {
        g gVar = this.f9033d;
        if (gVar != null) {
            gVar.f9028e = true;
            gVar.f9029f.f9032c.removeCallbacksAndMessages(gVar);
        }
    }

    @Override // com.android.launcher3.search.SearchAlgorithm
    public final void destroy() {
        this.f9032c.removeCallbacks(null);
        Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0830a(0, this));
    }

    @Override // com.android.launcher3.search.SearchAlgorithm
    public final void doSearch(String str, SearchCallback searchCallback) {
        g gVar = this.f9033d;
        if (gVar != null) {
            gVar.f9028e = true;
            gVar.f9029f.f9032c.removeCallbacksAndMessages(gVar);
        }
        g gVar2 = new g(this, str, searchCallback);
        this.f9033d = gVar2;
        if (this.f9034e == null) {
            gVar2.a();
            return;
        }
        this.f9032c.postDelayed(new RunnableC0830a(2, gVar2), gVar2, 200L);
        SearchSession searchSession = this.f9034e;
        g gVar3 = this.f9033d;
        searchSession.query(gVar3.f9026c, Executors.MAIN_EXECUTOR, gVar3);
    }
}
