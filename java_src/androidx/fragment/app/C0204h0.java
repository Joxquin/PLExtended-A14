package androidx.fragment.app;
/* renamed from: androidx.fragment.app.h0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0204h0 {

    /* renamed from: b  reason: collision with root package name */
    public static final q.m f3416b = new q.m();

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AbstractC0220p0 f3417a;

    public C0204h0(AbstractC0220p0 abstractC0220p0) {
        this.f3417a = abstractC0220p0;
    }

    public static Class b(ClassLoader classLoader, String str) {
        q.m mVar = f3416b;
        q.m mVar2 = (q.m) mVar.get(classLoader);
        if (mVar2 == null) {
            mVar2 = new q.m();
            mVar.put(classLoader, mVar2);
        }
        Class cls = (Class) mVar2.get(str);
        if (cls == null) {
            Class<?> cls2 = Class.forName(str, false, classLoader);
            mVar2.put(str, cls2);
            return cls2;
        }
        return cls;
    }

    public static Class c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e4) {
            throw new Fragment$InstantiationException(E.c.a("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e4);
        } catch (ClassNotFoundException e5) {
            throw new Fragment$InstantiationException(E.c.a("Unable to instantiate fragment ", str, ": make sure class name exists"), e5);
        }
    }

    public final K a(String str) {
        return K.instantiate(this.f3417a.f3484u.f3356e, str, null);
    }
}
