package androidx.lifecycle;

import a0.C0152e;
import a0.InterfaceC0151d;
import android.os.Bundle;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class J implements InterfaceC0151d {

    /* renamed from: a  reason: collision with root package name */
    public final C0152e f3560a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f3561b;

    /* renamed from: c  reason: collision with root package name */
    public Bundle f3562c;

    /* renamed from: d  reason: collision with root package name */
    public final e3.c f3563d;

    public J(C0152e savedStateRegistry, final V viewModelStoreOwner) {
        kotlin.jvm.internal.h.e(savedStateRegistry, "savedStateRegistry");
        kotlin.jvm.internal.h.e(viewModelStoreOwner, "viewModelStoreOwner");
        this.f3560a = savedStateRegistry;
        this.f3563d = kotlin.a.a(new m3.a() { // from class: androidx.lifecycle.SavedStateHandlesProvider$viewModel$2
            {
                super(0);
            }

            @Override // m3.a
            public final Object invoke() {
                return I.c(V.this);
            }
        });
    }

    @Override // a0.InterfaceC0151d
    public final Bundle a() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f3562c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry entry : ((LinkedHashMap) ((K) this.f3563d.getValue()).f3564d).entrySet()) {
            String str = (String) entry.getKey();
            Bundle a4 = ((G) entry.getValue()).f3556e.a();
            if (!kotlin.jvm.internal.h.a(a4, Bundle.EMPTY)) {
                bundle.putBundle(str, a4);
            }
        }
        this.f3561b = false;
        return bundle;
    }
}
