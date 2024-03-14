package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.u  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0254u {

    /* renamed from: a  reason: collision with root package name */
    public static final Map f3622a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public static final Map f3623b = new HashMap();

    public static InterfaceC0241g a(Constructor constructor, Object obj) {
        try {
            Object newInstance = constructor.newInstance(obj);
            kotlin.jvm.internal.h.d(newInstance, "{\n            constructo…tance(`object`)\n        }");
            return (InterfaceC0241g) newInstance;
        } catch (IllegalAccessException e4) {
            throw new RuntimeException(e4);
        } catch (InstantiationException e5) {
            throw new RuntimeException(e5);
        } catch (InvocationTargetException e6) {
            throw new RuntimeException(e6);
        }
    }

    public static int b(Class cls) {
        Constructor<?> constructor;
        boolean z4;
        HashMap hashMap = (HashMap) f3622a;
        Integer num = (Integer) hashMap.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int i4 = 1;
        if (cls.getCanonicalName() != null) {
            ArrayList arrayList = null;
            try {
                Package r4 = cls.getPackage();
                String name = cls.getCanonicalName();
                String fullPackage = r4 != null ? r4.getName() : "";
                kotlin.jvm.internal.h.d(fullPackage, "fullPackage");
                if (!(fullPackage.length() == 0)) {
                    kotlin.jvm.internal.h.d(name, "name");
                    name = name.substring(fullPackage.length() + 1);
                    kotlin.jvm.internal.h.d(name, "this as java.lang.String).substring(startIndex)");
                }
                kotlin.jvm.internal.h.d(name, "if (fullPackage.isEmpty(…g(fullPackage.length + 1)");
                String concat = s3.g.d(name, ".", "_").concat("_LifecycleAdapter");
                if (!(fullPackage.length() == 0)) {
                    concat = fullPackage + '.' + concat;
                }
                constructor = Class.forName(concat).getDeclaredConstructor(cls);
                if (!constructor.isAccessible()) {
                    constructor.setAccessible(true);
                }
            } catch (ClassNotFoundException unused) {
                constructor = null;
            } catch (NoSuchMethodException e4) {
                throw new RuntimeException(e4);
            }
            Map map = f3623b;
            if (constructor != null) {
                ((HashMap) map).put(cls, kotlin.collections.n.b(constructor));
            } else {
                C0238d c0238d = C0238d.f3607c;
                HashMap hashMap2 = (HashMap) c0238d.f3609b;
                Boolean bool = (Boolean) hashMap2.get(cls);
                if (bool != null) {
                    z4 = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length = declaredMethods.length;
                        int i5 = 0;
                        while (true) {
                            if (i5 >= length) {
                                hashMap2.put(cls, Boolean.FALSE);
                                z4 = false;
                                break;
                            } else if (((A) declaredMethods[i5].getAnnotation(A.class)) != null) {
                                c0238d.a(cls, declaredMethods);
                                z4 = true;
                                break;
                            } else {
                                i5++;
                            }
                        }
                    } catch (NoClassDefFoundError e5) {
                        throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e5);
                    }
                }
                if (!z4) {
                    Class superclass = cls.getSuperclass();
                    if (superclass != null && InterfaceC0250p.class.isAssignableFrom(superclass)) {
                        kotlin.jvm.internal.h.d(superclass, "superclass");
                        if (b(superclass) != 1) {
                            Object obj = ((HashMap) map).get(superclass);
                            kotlin.jvm.internal.h.b(obj);
                            arrayList = new ArrayList((Collection) obj);
                        }
                    }
                    Class<?>[] interfaces = cls.getInterfaces();
                    kotlin.jvm.internal.h.d(interfaces, "klass.interfaces");
                    int length2 = interfaces.length;
                    int i6 = 0;
                    while (true) {
                        if (i6 < length2) {
                            Class<?> intrface = interfaces[i6];
                            if (intrface != null && InterfaceC0250p.class.isAssignableFrom(intrface)) {
                                kotlin.jvm.internal.h.d(intrface, "intrface");
                                if (b(intrface) == 1) {
                                    break;
                                }
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                Object obj2 = ((HashMap) map).get(intrface);
                                kotlin.jvm.internal.h.b(obj2);
                                arrayList.addAll((Collection) obj2);
                            }
                            i6++;
                        } else if (arrayList != null) {
                            ((HashMap) map).put(cls, arrayList);
                        }
                    }
                }
            }
            i4 = 2;
        }
        hashMap.put(cls, Integer.valueOf(i4));
        return i4;
    }
}
