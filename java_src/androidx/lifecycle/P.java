package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
/* loaded from: classes.dex */
public final class P extends O {

    /* renamed from: e  reason: collision with root package name */
    public static P f3586e;

    /* renamed from: d  reason: collision with root package name */
    public final Application f3587d;

    public P(Application application) {
        this.f3587d = application;
    }

    @Override // androidx.lifecycle.O, androidx.lifecycle.Q
    public final N a(Class cls) {
        Application application = this.f3587d;
        if (application != null) {
            return c(cls, application);
        }
        throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
    }

    @Override // androidx.lifecycle.Q
    public final N b(Class cls, V.d dVar) {
        if (this.f3587d != null) {
            return a(cls);
        }
        Application application = (Application) ((LinkedHashMap) dVar.f1779a).get(O.f3583a);
        if (application != null) {
            return c(cls, application);
        }
        if (C0235a.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }
        return super.a(cls);
    }

    public final N c(Class cls, Application application) {
        if (C0235a.class.isAssignableFrom(cls)) {
            try {
                N n4 = (N) cls.getConstructor(Application.class).newInstance(application);
                kotlin.jvm.internal.h.d(n4, "{\n                try {\n…          }\n            }");
                return n4;
            } catch (IllegalAccessException e4) {
                throw new RuntimeException("Cannot create an instance of " + cls, e4);
            } catch (InstantiationException e5) {
                throw new RuntimeException("Cannot create an instance of " + cls, e5);
            } catch (NoSuchMethodException e6) {
                throw new RuntimeException("Cannot create an instance of " + cls, e6);
            } catch (InvocationTargetException e7) {
                throw new RuntimeException("Cannot create an instance of " + cls, e7);
            }
        }
        return super.a(cls);
    }
}
