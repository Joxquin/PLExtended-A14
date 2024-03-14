package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.EmptyList;
/* loaded from: classes.dex */
public final class M {

    /* renamed from: a  reason: collision with root package name */
    public static final List f3578a = kotlin.collections.n.c(Application.class, G.class);

    /* renamed from: b  reason: collision with root package name */
    public static final List f3579b = kotlin.collections.n.b(G.class);

    public static final Constructor a(Class cls, List signature) {
        kotlin.jvm.internal.h.e(signature, "signature");
        Constructor<?>[] constructors = cls.getConstructors();
        kotlin.jvm.internal.h.d(constructors, "modelClass.constructors");
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            kotlin.jvm.internal.h.d(parameterTypes, "constructor.parameterTypes");
            int length = parameterTypes.length;
            List arrayList = length != 0 ? length != 1 ? new ArrayList(new kotlin.collections.i(parameterTypes, false)) : kotlin.collections.n.b(parameterTypes[0]) : EmptyList.f11226d;
            if (kotlin.jvm.internal.h.a(signature, arrayList)) {
                return constructor;
            }
            if (signature.size() == arrayList.size() && arrayList.containsAll(signature)) {
                throw new UnsupportedOperationException("Class " + cls.getSimpleName() + " must have parameters in the proper order: " + signature);
            }
        }
        return null;
    }

    public static final N b(Class cls, Constructor constructor, Object... objArr) {
        try {
            return (N) constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException e4) {
            throw new RuntimeException("Failed to access " + cls, e4);
        } catch (InstantiationException e5) {
            throw new RuntimeException("A " + cls + " cannot be instantiated.", e5);
        } catch (InvocationTargetException e6) {
            throw new RuntimeException("An exception happened in constructor of " + cls, e6.getCause());
        }
    }
}
