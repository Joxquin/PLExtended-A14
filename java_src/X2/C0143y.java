package X2;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: X2.y  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0143y {

    /* renamed from: b  reason: collision with root package name */
    public static final C0143y f2249b = new C0143y(new C0137s(), C0138t.f2229a);

    /* renamed from: a  reason: collision with root package name */
    public final ConcurrentMap f2250a = new ConcurrentHashMap();

    public C0143y(InterfaceC0142x... interfaceC0142xArr) {
        for (InterfaceC0142x interfaceC0142x : interfaceC0142xArr) {
            ((ConcurrentHashMap) this.f2250a).put(interfaceC0142x.a(), interfaceC0142x);
        }
    }
}
