package androidx.lifecycle;

import java.util.LinkedHashMap;
/* loaded from: classes.dex */
public final class T {

    /* renamed from: a  reason: collision with root package name */
    public final U f3597a;

    /* renamed from: b  reason: collision with root package name */
    public final Q f3598b;

    /* renamed from: c  reason: collision with root package name */
    public final V.b f3599c;

    public T(U store, Q factory, V.b defaultCreationExtras) {
        kotlin.jvm.internal.h.e(store, "store");
        kotlin.jvm.internal.h.e(factory, "factory");
        kotlin.jvm.internal.h.e(defaultCreationExtras, "defaultCreationExtras");
        this.f3597a = store;
        this.f3598b = factory;
        this.f3599c = defaultCreationExtras;
    }

    public final N a(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return b(cls, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName));
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public final N b(Class cls, String key) {
        N viewModel;
        kotlin.jvm.internal.h.e(key, "key");
        U u4 = this.f3597a;
        u4.getClass();
        N n4 = (N) ((LinkedHashMap) u4.f3600a).get(key);
        boolean isInstance = cls.isInstance(n4);
        Q q4 = this.f3598b;
        if (isInstance) {
            S s4 = q4 instanceof S ? (S) q4 : null;
            if (s4 != null) {
                kotlin.jvm.internal.h.b(n4);
                s4.c(n4);
            }
            kotlin.jvm.internal.h.c(n4, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
            return n4;
        }
        V.d dVar = new V.d(this.f3599c);
        dVar.f1779a.put(O.f3584b, key);
        try {
            viewModel = q4.b(cls, dVar);
        } catch (AbstractMethodError unused) {
            viewModel = q4.a(cls);
        }
        kotlin.jvm.internal.h.e(viewModel, "viewModel");
        N n5 = (N) u4.f3600a.put(key, viewModel);
        if (n5 != null) {
            n5.b();
        }
        return viewModel;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public T(U store, Q factory) {
        this(store, factory, V.a.f1778b);
        kotlin.jvm.internal.h.e(store, "store");
        kotlin.jvm.internal.h.e(factory, "factory");
    }
}
