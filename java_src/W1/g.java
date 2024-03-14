package W1;

import android.app.appsearch.observer.DocumentChangeInfo;
import android.app.appsearch.observer.ObserverCallback;
import android.app.appsearch.observer.SchemaChangeInfo;
import android.content.Context;
import com.google.android.apps.nexuslauncher.qsb.AssistStateManagerGoogle;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Function;
/* loaded from: classes.dex */
public final class g implements ObserverCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f1894a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AssistStateManagerGoogle f1895b;

    public g(AssistStateManagerGoogle assistStateManagerGoogle, Context context) {
        this.f1895b = assistStateManagerGoogle;
        this.f1894a = context;
    }

    public final void onDocumentChanged(DocumentChangeInfo documentChangeInfo) {
        if (documentChangeInfo.getChangedDocumentIds().contains("entry_point")) {
            synchronized (this.f1895b.f7516k) {
                this.f1895b.f7516k.addLog("AppSearch value updated");
            }
            AssistStateManagerGoogle assistStateManagerGoogle = this.f1895b;
            Context context = this.f1894a;
            assistStateManagerGoogle.f7509d.thenAcceptAsync((Consumer) new d(assistStateManagerGoogle, context), (Executor) new e(0)).exceptionally((Function<Throwable, ? extends Void>) new f(assistStateManagerGoogle, context));
        }
    }

    public final void onSchemaChanged(SchemaChangeInfo schemaChangeInfo) {
    }
}
