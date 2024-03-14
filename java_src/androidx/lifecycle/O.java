package androidx.lifecycle;
/* loaded from: classes.dex */
public class O implements Q {

    /* renamed from: a  reason: collision with root package name */
    public static final O f3583a = new O();

    /* renamed from: b  reason: collision with root package name */
    public static final O f3584b = new O();

    /* renamed from: c  reason: collision with root package name */
    public static O f3585c;

    @Override // androidx.lifecycle.Q
    public N a(Class cls) {
        try {
            Object newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            kotlin.jvm.internal.h.d(newInstance, "{\n                modelC…wInstance()\n            }");
            return (N) newInstance;
        } catch (IllegalAccessException e4) {
            throw new RuntimeException("Cannot create an instance of " + cls, e4);
        } catch (InstantiationException e5) {
            throw new RuntimeException("Cannot create an instance of " + cls, e5);
        } catch (NoSuchMethodException e6) {
            throw new RuntimeException("Cannot create an instance of " + cls, e6);
        }
    }
}
