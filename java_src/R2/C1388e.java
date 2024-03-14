package r2;

import android.util.Property;
/* renamed from: r2.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1388e extends Property {

    /* renamed from: a  reason: collision with root package name */
    public static final C1388e f12160a = new C1388e();

    public C1388e() {
        super(Integer.class, "circularRevealScrimColor");
    }

    @Override // android.util.Property
    public final Object get(Object obj) {
        return Integer.valueOf(((InterfaceC1390g) obj).d());
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        ((Integer) obj2).intValue();
        ((InterfaceC1390g) obj).g();
    }
}
