package androidx.lifecycle;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
@Deprecated
/* renamed from: androidx.lifecycle.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0238d {

    /* renamed from: c  reason: collision with root package name */
    public static final C0238d f3607c = new C0238d();

    /* renamed from: a  reason: collision with root package name */
    public final Map f3608a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final Map f3609b = new HashMap();

    public static void c(Map map, C0237c c0237c, Lifecycle$Event lifecycle$Event, Class cls) {
        HashMap hashMap = (HashMap) map;
        Lifecycle$Event lifecycle$Event2 = (Lifecycle$Event) hashMap.get(c0237c);
        if (lifecycle$Event2 == null || lifecycle$Event == lifecycle$Event2) {
            if (lifecycle$Event2 == null) {
                hashMap.put(c0237c, lifecycle$Event);
                return;
            }
            return;
        }
        Method method = c0237c.f3606b;
        throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + lifecycle$Event2 + ", new value " + lifecycle$Event);
    }

    public final C0236b a(Class cls, Method[] methodArr) {
        int i4;
        C0236b b4;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (b4 = b(superclass)) != null) {
            hashMap.putAll(b4.f3604b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry entry : b(cls2).f3604b.entrySet()) {
                c(hashMap, (C0237c) entry.getKey(), (Lifecycle$Event) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e4) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e4);
            }
        }
        boolean z4 = false;
        for (Method method : methodArr) {
            A a4 = (A) method.getAnnotation(A.class);
            if (a4 != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i4 = 0;
                } else if (!InterfaceC0251q.class.isAssignableFrom(parameterTypes[0])) {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                } else {
                    i4 = 1;
                }
                Lifecycle$Event value = a4.value();
                if (parameterTypes.length > 1) {
                    if (!Lifecycle$Event.class.isAssignableFrom(parameterTypes[1])) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (value != Lifecycle$Event.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i4 = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                c(hashMap, new C0237c(i4, method), value, cls);
                z4 = true;
            }
        }
        C0236b c0236b = new C0236b(hashMap);
        ((HashMap) this.f3608a).put(cls, c0236b);
        ((HashMap) this.f3609b).put(cls, Boolean.valueOf(z4));
        return c0236b;
    }

    public final C0236b b(Class cls) {
        C0236b c0236b = (C0236b) ((HashMap) this.f3608a).get(cls);
        return c0236b != null ? c0236b : a(cls, null);
    }
}
