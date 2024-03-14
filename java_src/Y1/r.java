package Y1;

import com.android.launcher3.allapps.AllAppsStore;
import com.google.android.apps.nexuslauncher.search.SearchEditText;
/* loaded from: classes.dex */
public final /* synthetic */ class r implements AllAppsStore.OnUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2300d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ SearchEditText f2301e;

    public /* synthetic */ r(SearchEditText searchEditText, int i4) {
        this.f2300d = i4;
        this.f2301e = searchEditText;
    }

    @Override // com.android.launcher3.allapps.AllAppsStore.OnUpdateListener
    public final void onAppsUpdated() {
        int i4 = this.f2300d;
        SearchEditText searchEditText = this.f2301e;
        switch (i4) {
            case 0:
                SearchEditText.a(searchEditText);
                return;
            default:
                SearchEditText.a(searchEditText);
                return;
        }
    }
}
