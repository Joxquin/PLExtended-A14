package W1;

import android.app.appsearch.AppSearchBatchResult;
import android.app.appsearch.BatchResultCallback;
import android.app.appsearch.GenericDocument;
import android.content.Context;
import android.net.Uri;
import com.google.android.apps.nexuslauncher.qsb.AssistStateManagerGoogle;
/* loaded from: classes.dex */
public final class h implements BatchResultCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f1896a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AssistStateManagerGoogle f1897b;

    public h(AssistStateManagerGoogle assistStateManagerGoogle, Context context) {
        this.f1897b = assistStateManagerGoogle;
        this.f1896a = context;
    }

    @Override // android.app.appsearch.BatchResultCallback
    public final void onResult(AppSearchBatchResult appSearchBatchResult) {
        try {
            this.f1897b.f7513h = ((GenericDocument) appSearchBatchResult.getSuccesses().values().stream().findFirst().get()).getPropertyBoolean("isAvailable");
            synchronized (this.f1897b.f7516k) {
                AssistStateManagerGoogle assistStateManagerGoogle = this.f1897b;
                assistStateManagerGoogle.f7516k.addLog("Fetched from AppSearch, isAvailable", assistStateManagerGoogle.f7513h);
            }
        } catch (Exception e4) {
            AssistStateManagerGoogle assistStateManagerGoogle2 = this.f1897b;
            Context context = this.f1896a;
            Uri uri = AssistStateManagerGoogle.f7507q;
            assistStateManagerGoogle2.a(context, e4);
        }
    }

    @Override // android.app.appsearch.BatchResultCallback
    public final void onSystemError(Throwable th) {
        Uri uri = AssistStateManagerGoogle.f7507q;
        this.f1897b.a(this.f1896a, (Exception) th);
    }
}
