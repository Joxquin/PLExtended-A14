package T1;

import android.app.appsearch.observer.DocumentChangeInfo;
import android.app.appsearch.observer.ObserverCallback;
import android.app.appsearch.observer.SchemaChangeInfo;
import android.util.Log;
/* loaded from: classes.dex */
public final class t implements ObserverCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f1717a;

    public t(x xVar) {
        this.f1717a = xVar;
    }

    public final void onDocumentChanged(DocumentChangeInfo documentChangeInfo) {
        if (documentChangeInfo.getChangedDocumentIds().contains("zp")) {
            Log.d("ZeroStateWebSuggestDataLoader", "App search zero state updated");
            this.f1717a.d();
        }
    }

    public final void onSchemaChanged(SchemaChangeInfo schemaChangeInfo) {
    }
}
