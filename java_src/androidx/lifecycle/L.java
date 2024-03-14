package androidx.lifecycle;

import a0.C0152e;
import a0.InterfaceC0154g;
import android.app.Application;
import android.os.Bundle;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class L extends S implements Q {

    /* renamed from: a  reason: collision with root package name */
    public final Application f3565a;

    /* renamed from: b  reason: collision with root package name */
    public final P f3566b;

    /* renamed from: c  reason: collision with root package name */
    public final Bundle f3567c;

    /* renamed from: d  reason: collision with root package name */
    public final AbstractC0247m f3568d;

    /* renamed from: e  reason: collision with root package name */
    public final C0152e f3569e;

    public L(Application application, InterfaceC0154g owner, Bundle bundle) {
        P p4;
        kotlin.jvm.internal.h.e(owner, "owner");
        this.f3569e = owner.getSavedStateRegistry();
        this.f3568d = owner.getLifecycle();
        this.f3567c = bundle;
        this.f3565a = application;
        if (application != null) {
            if (P.f3586e == null) {
                P.f3586e = new P(application);
            }
            p4 = P.f3586e;
            kotlin.jvm.internal.h.b(p4);
        } else {
            p4 = new P(null);
        }
        this.f3566b = p4;
    }

    @Override // androidx.lifecycle.Q
    public final N a(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return d(cls, canonicalName);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.Q
    public final N b(Class cls, V.d dVar) {
        O o4 = O.f3584b;
        Map map = dVar.f1779a;
        String str = (String) ((LinkedHashMap) map).get(o4);
        if (str != null) {
            if (((LinkedHashMap) map).get(I.f3557a) != null) {
                if (((LinkedHashMap) map).get(I.f3558b) != null) {
                    Application application = (Application) ((LinkedHashMap) map).get(O.f3583a);
                    boolean isAssignableFrom = C0235a.class.isAssignableFrom(cls);
                    Constructor a4 = (!isAssignableFrom || application == null) ? M.a(cls, M.f3579b) : M.a(cls, M.f3578a);
                    return a4 == null ? this.f3566b.b(cls, dVar) : (!isAssignableFrom || application == null) ? M.b(cls, a4, I.a(dVar)) : M.b(cls, a4, application, I.a(dVar));
                }
            }
            if (this.f3568d != null) {
                return d(cls, str);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
    }

    @Override // androidx.lifecycle.S
    public final void c(N n4) {
        AbstractC0247m abstractC0247m = this.f3568d;
        if (abstractC0247m != null) {
            C0244j.a(n4, this.f3569e, abstractC0247m);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final N d(Class cls, String str) {
        Object obj;
        Application application;
        if (this.f3568d != null) {
            boolean isAssignableFrom = C0235a.class.isAssignableFrom(cls);
            Constructor a4 = (!isAssignableFrom || this.f3565a == null) ? M.a(cls, M.f3579b) : M.a(cls, M.f3578a);
            if (a4 == null) {
                if (this.f3565a != null) {
                    return this.f3566b.a(cls);
                }
                if (O.f3585c == null) {
                    O.f3585c = new O();
                }
                O o4 = O.f3585c;
                kotlin.jvm.internal.h.b(o4);
                return o4.a(cls);
            }
            C0152e c0152e = this.f3569e;
            AbstractC0247m abstractC0247m = this.f3568d;
            Bundle bundle = this.f3567c;
            Bundle a5 = c0152e.a(str);
            Class[] clsArr = G.f3551f;
            G a6 = F.a(a5, bundle);
            SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, a6);
            if (savedStateHandleController.f3593e) {
                throw new IllegalStateException("Already attached to lifecycleOwner");
            }
            savedStateHandleController.f3593e = true;
            abstractC0247m.a(savedStateHandleController);
            c0152e.c(str, a6.f3556e);
            C0244j.b(abstractC0247m, c0152e);
            N b4 = (!isAssignableFrom || (application = this.f3565a) == null) ? M.b(cls, a4, a6) : M.b(cls, a4, application, a6);
            synchronized (b4.f3580a) {
                obj = ((HashMap) b4.f3580a).get("androidx.lifecycle.savedstate.vm.tag");
                if (obj == 0) {
                    ((HashMap) b4.f3580a).put("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
                }
            }
            if (obj != 0) {
                savedStateHandleController = obj;
            }
            if (b4.f3582c) {
                N.a(savedStateHandleController);
            }
            return b4;
        }
        throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
    }
}
