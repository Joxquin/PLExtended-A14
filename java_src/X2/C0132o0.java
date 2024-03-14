package X2;

import java.io.IOException;
import java.util.logging.Logger;
/* renamed from: X2.o0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0132o0 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC0128m0 f2210a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f2211b;

    /* renamed from: c  reason: collision with root package name */
    public volatile byte[] f2212c;

    public C0132o0(InterfaceC0128m0 interfaceC0128m0, Object obj) {
        this.f2210a = interfaceC0128m0;
        this.f2211b = obj;
    }

    public final byte[] a() {
        if (this.f2212c == null) {
            synchronized (this) {
                if (this.f2212c == null) {
                    Y2.l a4 = this.f2210a.a(this.f2211b);
                    Logger logger = r0.f2219c;
                    try {
                        this.f2212c = P2.f.b(a4);
                    } catch (IOException e4) {
                        throw new RuntimeException("failure reading serialized stream", e4);
                    }
                }
            }
        }
        return this.f2212c;
    }
}
