package T1;

import android.app.appsearch.AppSearchResult;
import android.app.appsearch.GetByDocumentIdRequest;
import android.app.appsearch.GlobalSearchSession;
import android.app.appsearch.exceptions.AppSearchException;
import android.app.appsearch.observer.ObserverSpec;
import android.util.Log;
import com.android.launcher3.util.Executors;
import java.util.concurrent.CompletableFuture;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class q implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1712a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ x f1713b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f1714c;

    public /* synthetic */ q(x xVar, Object obj, int i4) {
        this.f1712a = i4;
        this.f1713b = xVar;
        this.f1714c = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f1712a) {
            case 0:
                x xVar = this.f1713b;
                xVar.getClass();
                ((GlobalSearchSession) obj).getByDocumentId("com.google.android.googlequicksearchbox", "OneSearchZeroStateGoogleSuggestions", (GetByDocumentIdRequest) this.f1714c, Executors.MODEL_EXECUTOR, new u(xVar));
                return;
            default:
                x xVar2 = this.f1713b;
                CompletableFuture completableFuture = (CompletableFuture) this.f1714c;
                AppSearchResult appSearchResult = (AppSearchResult) obj;
                xVar2.getClass();
                if (!appSearchResult.isSuccess()) {
                    completableFuture.completeExceptionally(new AppSearchException(appSearchResult.getResultCode(), appSearchResult.getErrorMessage()));
                    return;
                }
                GlobalSearchSession globalSearchSession = (GlobalSearchSession) appSearchResult.getResultValue();
                try {
                    globalSearchSession.registerObserverCallback("com.google.android.googlequicksearchbox", new ObserverSpec.Builder().build(), Executors.MODEL_EXECUTOR, xVar2.f1723b);
                } catch (AppSearchException e4) {
                    Log.e("ZeroStateWebSuggestDataLoader", "Failed to register app search observer", e4);
                }
                completableFuture.complete(globalSearchSession);
                return;
        }
    }
}
