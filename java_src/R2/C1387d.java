package r2;

import android.util.Property;
/* renamed from: r2.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1387d extends Property {

    /* renamed from: a  reason: collision with root package name */
    public static final C1387d f12159a = new C1387d();

    public C1387d() {
        super(C1389f.class, "circularReveal");
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        return ((InterfaceC1390g) obj).c();
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        C1389f c1389f = (C1389f) obj2;
        ((InterfaceC1390g) obj).a();
    }
}
