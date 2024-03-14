package T1;

import android.app.appsearch.AppSearchBatchResult;
import android.app.appsearch.BatchResultCallback;
import android.app.appsearch.GenericDocument;
import android.util.Log;
import com.google.protobuf.InvalidProtocolBufferException;
import f2.C0858A;
import java.util.Collections;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public final class u implements BatchResultCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f1718a;

    public u(x xVar) {
        this.f1718a = xVar;
    }

    @Override // android.app.appsearch.BatchResultCallback
    public final void onResult(AppSearchBatchResult appSearchBatchResult) {
        try {
            Log.d("ZeroStateWebSuggestDataLoader", "Received zero state web suggestions from AppSearch");
            GenericDocument genericDocument = (GenericDocument) appSearchBatchResult.getSuccesses().values().stream().findFirst().get();
            x.a(this.f1718a, Collections.singletonList(new w(C0858A.g(genericDocument.getPropertyBytes("zeroStateGetSuggestionsResponseBytes")), genericDocument.getPropertyBytes("zeroStateInternalBytes"))));
        } catch (InvalidProtocolBufferException | NullPointerException | NoSuchElementException e4) {
            this.f1718a.getClass();
            x.b(e4);
        } catch (Exception e5) {
            this.f1718a.getClass();
            x.b(e5);
        }
    }

    @Override // android.app.appsearch.BatchResultCallback
    public final void onSystemError(Throwable th) {
        this.f1718a.getClass();
        x.b(th);
    }
}
