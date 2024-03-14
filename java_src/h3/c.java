package h3;

import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final b f9535a;

    static {
        b bVar;
        try {
            Object newInstance = j3.b.class.newInstance();
            h.d(newInstance, "forName(\"kotlin.internal…entations\").newInstance()");
            try {
                try {
                    bVar = (b) newInstance;
                } catch (ClassCastException e4) {
                    ClassLoader classLoader = newInstance.getClass().getClassLoader();
                    ClassLoader classLoader2 = b.class.getClassLoader();
                    if (h.a(classLoader, classLoader2)) {
                        throw e4;
                    }
                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader + ", base type classloader: " + classLoader2, e4);
                }
            } catch (ClassNotFoundException unused) {
                Object newInstance2 = i3.b.class.newInstance();
                h.d(newInstance2, "forName(\"kotlin.internal…entations\").newInstance()");
                try {
                    try {
                        bVar = (b) newInstance2;
                    } catch (ClassNotFoundException unused2) {
                        bVar = new b();
                    }
                } catch (ClassCastException e5) {
                    ClassLoader classLoader3 = newInstance2.getClass().getClassLoader();
                    ClassLoader classLoader4 = b.class.getClassLoader();
                    if (h.a(classLoader3, classLoader4)) {
                        throw e5;
                    }
                    throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader3 + ", base type classloader: " + classLoader4, e5);
                }
            }
        } catch (ClassNotFoundException unused3) {
            Object newInstance3 = Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
            h.d(newInstance3, "forName(\"kotlin.internal…entations\").newInstance()");
            try {
                try {
                    bVar = (b) newInstance3;
                } catch (ClassNotFoundException unused4) {
                    Object newInstance4 = Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                    h.d(newInstance4, "forName(\"kotlin.internal…entations\").newInstance()");
                    try {
                        bVar = (b) newInstance4;
                    } catch (ClassCastException e6) {
                        ClassLoader classLoader5 = newInstance4.getClass().getClassLoader();
                        ClassLoader classLoader6 = b.class.getClassLoader();
                        if (h.a(classLoader5, classLoader6)) {
                            throw e6;
                        }
                        throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader5 + ", base type classloader: " + classLoader6, e6);
                    }
                }
            } catch (ClassCastException e7) {
                ClassLoader classLoader7 = newInstance3.getClass().getClassLoader();
                ClassLoader classLoader8 = b.class.getClassLoader();
                if (h.a(classLoader7, classLoader8)) {
                    throw e7;
                }
                throw new ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader7 + ", base type classloader: " + classLoader8, e7);
            }
        }
        f9535a = bVar;
    }
}
