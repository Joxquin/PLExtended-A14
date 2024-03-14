package T1;

import android.app.appsearch.AppSearchManager;
import android.app.appsearch.GetByDocumentIdRequest;
import android.content.Context;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.util.Executors;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Function;
/* loaded from: classes.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    public final Context f1722a;

    /* renamed from: b  reason: collision with root package name */
    public final t f1723b = new t(this);

    /* renamed from: c  reason: collision with root package name */
    public CompletableFuture f1724c;

    public x(Context context) {
        this.f1722a = context;
    }

    public static void a(x xVar, List list) {
        xVar.getClass();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        LauncherAppState.getInstance(xVar.f1722a).getModel().enqueueModelUpdateTask(new v(new BgDataModel.FixedContainerItems(-203, arrayList)));
    }

    public static void b(Throwable th) {
        if (Utilities.isRunningInTestHarness()) {
            return;
        }
        Log.e("ZeroStateWebSuggestDataLoader", "Failed to fetch suggestions from AppSearch", th);
    }

    public final void c() {
        CompletableFuture completableFuture = this.f1724c;
        if (completableFuture != null) {
            completableFuture.thenAcceptAsync((Consumer) new s(this));
            this.f1724c = null;
        }
        CompletableFuture completableFuture2 = new CompletableFuture();
        this.f1724c = completableFuture2;
        ((AppSearchManager) this.f1722a.getSystemService(AppSearchManager.class)).createGlobalSearchSession(Executors.MODEL_EXECUTOR, new q(this, completableFuture2, 1));
        d();
    }

    public final void d() {
        if (this.f1724c == null) {
            return;
        }
        this.f1724c.thenAcceptAsync((Consumer) new q(this, new GetByDocumentIdRequest.Builder("default").addIds("zp").build(), 0), (Executor) Executors.MODEL_EXECUTOR).exceptionally(new Function() { // from class: T1.r
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                x.this.getClass();
                x.b((Throwable) obj);
                return null;
            }
        });
    }
}
