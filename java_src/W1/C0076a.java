package W1;

import android.app.appsearch.AppSearchResult;
import android.app.appsearch.GlobalSearchSession;
import android.app.appsearch.exceptions.AppSearchException;
import android.app.appsearch.observer.ObserverSpec;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.android.launcher3.util.Executors;
import com.google.android.apps.nexuslauncher.qsb.AssistStateManagerGoogle;
import java.util.function.Consumer;
/* renamed from: W1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0076a implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1884a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AssistStateManagerGoogle f1885b;

    public /* synthetic */ C0076a(AssistStateManagerGoogle assistStateManagerGoogle, int i4) {
        this.f1884a = i4;
        this.f1885b = assistStateManagerGoogle;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f1884a) {
            case 0:
                AssistStateManagerGoogle assistStateManagerGoogle = this.f1885b;
                Intent intent = (Intent) obj;
                Uri uri = AssistStateManagerGoogle.f7507q;
                assistStateManagerGoogle.getClass();
                Executors.UI_HELPER_EXECUTOR.execute(new c(assistStateManagerGoogle));
                return;
            case 1:
                AssistStateManagerGoogle assistStateManagerGoogle2 = this.f1885b;
                GlobalSearchSession globalSearchSession = (GlobalSearchSession) obj;
                Uri uri2 = AssistStateManagerGoogle.f7507q;
                assistStateManagerGoogle2.getClass();
                try {
                    globalSearchSession.unregisterObserverCallback("com.google.android.googlequicksearchbox", assistStateManagerGoogle2.f7512g);
                } catch (AppSearchException e4) {
                    Log.d("AssistStateManagerGoogle", "Failed to unregister AppSearch observer", e4);
                    synchronized (assistStateManagerGoogle2.f7516k) {
                        assistStateManagerGoogle2.f7516k.addLog("Failed to unregister AppSearch observer");
                    }
                }
                globalSearchSession.close();
                return;
            default:
                AssistStateManagerGoogle assistStateManagerGoogle3 = this.f1885b;
                AppSearchResult appSearchResult = (AppSearchResult) obj;
                Uri uri3 = AssistStateManagerGoogle.f7507q;
                assistStateManagerGoogle3.getClass();
                if (!appSearchResult.isSuccess()) {
                    assistStateManagerGoogle3.f7509d.completeExceptionally(new AppSearchException(appSearchResult.getResultCode(), appSearchResult.getErrorMessage()));
                    return;
                }
                GlobalSearchSession globalSearchSession2 = (GlobalSearchSession) appSearchResult.getResultValue();
                synchronized (assistStateManagerGoogle3.f7516k) {
                    assistStateManagerGoogle3.f7516k.addLog("Created AppSearch session");
                }
                try {
                    globalSearchSession2.registerObserverCallback("com.google.android.googlequicksearchbox", new ObserverSpec.Builder().build(), new e(3), assistStateManagerGoogle3.f7512g);
                    synchronized (assistStateManagerGoogle3.f7516k) {
                        assistStateManagerGoogle3.f7516k.addLog("Registered AppSearch observer");
                    }
                } catch (AppSearchException e5) {
                    Log.d("AssistStateManagerGoogle", "Failed to register AppSearch observer", e5);
                    synchronized (assistStateManagerGoogle3.f7516k) {
                        assistStateManagerGoogle3.f7516k.addLog("Failed to register AppSearch observer");
                    }
                }
                assistStateManagerGoogle3.f7509d.complete(globalSearchSession2);
                return;
        }
    }
}
