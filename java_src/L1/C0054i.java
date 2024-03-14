package L1;

import android.app.contentsuggestions.ClassificationsRequest;
import android.app.contentsuggestions.ContentClassification;
import android.app.contentsuggestions.ContentSelection;
import android.app.contentsuggestions.ContentSuggestionsManager;
import android.app.contentsuggestions.SelectionsRequest;
import android.content.Context;
import android.os.Bundle;
import com.android.launcher3.util.LooperExecutor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.function.Supplier;
/* renamed from: L1.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0054i extends AbstractC0048c {

    /* renamed from: e  reason: collision with root package name */
    public final ContentSuggestionsManager f1184e;

    /* renamed from: f  reason: collision with root package name */
    public final Map f1185f;

    public C0054i(Context context, LooperExecutor looperExecutor, LooperExecutor looperExecutor2, Executor executor) {
        super(looperExecutor, looperExecutor2, executor, new ExecutorC0050e());
        this.f1185f = Collections.synchronizedMap(new WeakHashMap());
        this.f1184e = (ContentSuggestionsManager) context.getSystemService(ContentSuggestionsManager.class);
    }

    @Override // L1.AbstractC0048c
    public final void a(Bundle bundle, X x4) {
        try {
            ClassificationsRequest build = new ClassificationsRequest.Builder(new ArrayList()).setExtras(bundle).build();
            final C0053h c0053h = new C0053h(x4, this);
            this.f1184e.classifyContentSelections(build, this.f1160d, new ContentSuggestionsManager.ClassificationsCallback() { // from class: L1.g
                public final void onContentClassificationsAvailable(int i4, List list) {
                    C0053h.this.a(((ContentClassification) list.get(0)).getExtras());
                }
            });
        } catch (Throwable th) {
            M1.b.d("Failed to classifyContentSelections", th);
        }
    }

    @Override // L1.AbstractC0048c
    public final void b(final J1.n nVar, final P p4, final String str, final Supplier supplier) {
        this.f1159c.execute(new Runnable() { // from class: L1.d
            @Override // java.lang.Runnable
            public final void run() {
                C0054i c0054i = C0054i.this;
                Supplier supplier2 = supplier;
                String str2 = str;
                P p5 = p4;
                J1.n nVar2 = nVar;
                c0054i.getClass();
                try {
                    c0054i.f1184e.notifyInteraction(str2, (Bundle) supplier2.get());
                    if (p5 == null || nVar2 == null) {
                        return;
                    }
                    p5.f();
                } catch (Throwable th) {
                    M1.b.d("Failed to notifyInteraction", th);
                }
            }
        });
    }

    @Override // L1.AbstractC0048c
    public final void c(int i4, Bundle bundle) {
        bundle.putLong("CAPTURE_TIME_MS", System.currentTimeMillis());
        try {
            this.f1184e.provideContextImage(i4, bundle);
        } catch (Throwable th) {
            M1.b.d("Failed to provideContextImage", th);
        }
    }

    @Override // L1.AbstractC0048c
    public final void d(int i4, Bundle bundle, InterfaceC0047b interfaceC0047b) {
        SelectionsRequest build = new SelectionsRequest.Builder(i4).setExtras(bundle).build();
        try {
            final C0053h c0053h = new C0053h(interfaceC0047b, this);
            this.f1184e.suggestContentSelections(build, this.f1160d, new ContentSuggestionsManager.SelectionsCallback() { // from class: L1.f
                public final void onContentSelectionsAvailable(int i5, List list) {
                    C0053h.this.a(((ContentSelection) list.get(0)).getExtras());
                }
            });
        } catch (Throwable th) {
            M1.b.d("Failed to suggestContentSelections", th);
        }
    }
}
