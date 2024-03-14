package kotlin.jvm.internal;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static final k f11265a;

    /* renamed from: b  reason: collision with root package name */
    public static final r3.c[] f11266b;

    static {
        k kVar = null;
        try {
            kVar = (k) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (kVar == null) {
            kVar = new k();
        }
        f11265a = kVar;
        f11266b = new r3.c[0];
    }

    public static d a(Class cls) {
        f11265a.getClass();
        return new d(cls);
    }
}
