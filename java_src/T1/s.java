package T1;

import android.app.appsearch.GlobalSearchSession;
import android.app.appsearch.exceptions.AppSearchException;
import android.util.Log;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class s implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f1716a;

    public /* synthetic */ s(x xVar) {
        this.f1716a = xVar;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        x xVar = this.f1716a;
        GlobalSearchSession globalSearchSession = (GlobalSearchSession) obj;
        xVar.getClass();
        try {
            globalSearchSession.unregisterObserverCallback("com.google.android.googlequicksearchbox", xVar.f1723b);
        } catch (AppSearchException e4) {
            Log.e("ZeroStateWebSuggestDataLoader", "Failed to unregister app search observer", e4);
        }
        globalSearchSession.close();
    }
}
