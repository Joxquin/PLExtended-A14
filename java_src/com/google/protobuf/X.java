package com.google.protobuf;
/* loaded from: classes.dex */
public class X {

    /* renamed from: a  reason: collision with root package name */
    public volatile InterfaceC0772p0 f8613a;

    /* renamed from: b  reason: collision with root package name */
    public volatile ByteString f8614b;

    static {
        C0784w.a();
    }

    public final InterfaceC0772p0 a(InterfaceC0772p0 interfaceC0772p0) {
        if (this.f8613a == null) {
            synchronized (this) {
                if (this.f8613a == null) {
                    try {
                        this.f8613a = interfaceC0772p0;
                        this.f8614b = ByteString.f8505d;
                    } catch (InvalidProtocolBufferException unused) {
                        this.f8613a = interfaceC0772p0;
                        this.f8614b = ByteString.f8505d;
                    }
                }
            }
        }
        return this.f8613a;
    }

    public final ByteString b() {
        if (this.f8614b != null) {
            return this.f8614b;
        }
        synchronized (this) {
            if (this.f8614b != null) {
                return this.f8614b;
            }
            if (this.f8613a == null) {
                this.f8614b = ByteString.f8505d;
            } else {
                this.f8614b = this.f8613a.toByteString();
            }
            return this.f8614b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof X) {
            X x4 = (X) obj;
            InterfaceC0772p0 interfaceC0772p0 = this.f8613a;
            InterfaceC0772p0 interfaceC0772p02 = x4.f8613a;
            return (interfaceC0772p0 == null && interfaceC0772p02 == null) ? b().equals(x4.b()) : (interfaceC0772p0 == null || interfaceC0772p02 == null) ? interfaceC0772p0 != null ? interfaceC0772p0.equals(x4.a(interfaceC0772p0.getDefaultInstanceForType$1())) : a(interfaceC0772p02.getDefaultInstanceForType$1()).equals(interfaceC0772p02) : interfaceC0772p0.equals(interfaceC0772p02);
        }
        return false;
    }

    public int hashCode() {
        return 1;
    }
}
