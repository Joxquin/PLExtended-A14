package com.google.protobuf;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.protobuf.t0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0779t0 implements C0 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC0772p0 f8713a;

    /* renamed from: b  reason: collision with root package name */
    public final O0 f8714b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f8715c;

    /* renamed from: d  reason: collision with root package name */
    public final AbstractC0786x f8716d;

    public C0779t0(O0 o02, AbstractC0786x abstractC0786x, InterfaceC0772p0 interfaceC0772p0) {
        this.f8714b = o02;
        this.f8715c = abstractC0786x.e(interfaceC0772p0);
        this.f8716d = abstractC0786x;
        this.f8713a = interfaceC0772p0;
    }

    @Override // com.google.protobuf.C0
    public final void a(Object obj, Object obj2) {
        Class cls = D0.f8510a;
        O0 o02 = this.f8714b;
        o02.o(obj, o02.k(o02.g(obj), o02.g(obj2)));
        if (this.f8715c) {
            D0.y(this.f8716d, obj, obj2);
        }
    }

    @Override // com.google.protobuf.C0
    public final void b(Object obj, C0776s c0776s) {
        Iterator i4 = this.f8716d.c(obj).i();
        while (i4.hasNext()) {
            Map.Entry entry = (Map.Entry) i4.next();
            A a4 = (A) entry.getKey();
            if (a4.m() != WireFormat$JavaType.f8611l) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            a4.b();
            a4.n();
            if (entry instanceof U) {
                a4.getNumber();
                c0776s.g(0, ((W) ((U) entry).f8580d.getValue()).b());
            } else {
                a4.getNumber();
                c0776s.g(0, entry.getValue());
            }
        }
        O0 o02 = this.f8714b;
        o02.r(o02.g(obj), c0776s);
    }

    @Override // com.google.protobuf.C0
    public final void c(Object obj, C0769o c0769o, C0784w c0784w) {
        O0 o02 = this.f8714b;
        P0 f4 = o02.f(obj);
        AbstractC0786x abstractC0786x = this.f8716d;
        B d4 = abstractC0786x.d(obj);
        do {
            try {
                if (c0769o.a() == Integer.MAX_VALUE) {
                    break;
                }
            } finally {
                o02.n(obj, f4);
            }
        } while (k(c0769o, c0784w, abstractC0786x, d4, o02, f4));
    }

    @Override // com.google.protobuf.C0
    public final void d(Object obj) {
        this.f8714b.j(obj);
        this.f8716d.f(obj);
    }

    @Override // com.google.protobuf.C0
    public final boolean e(Object obj) {
        return this.f8716d.c(obj).g();
    }

    @Override // com.google.protobuf.C0
    public final boolean f(Object obj, Object obj2) {
        O0 o02 = this.f8714b;
        if (o02.g(obj).equals(o02.g(obj2))) {
            if (this.f8715c) {
                AbstractC0786x abstractC0786x = this.f8716d;
                return abstractC0786x.c(obj).equals(abstractC0786x.c(obj2));
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ad, code lost:
        if (r5 == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00af, code lost:
        r10.c((r1 << 3) | 2, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b6, code lost:
        r1 = r3;
        r11 = r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ad A[EDGE_INSN: B:61:0x00ad->B:43:0x00ad ?: BREAK  , SYNTHETIC] */
    @Override // com.google.protobuf.C0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(java.lang.Object r18, byte[] r19, int r20, int r21, com.google.protobuf.C0749e r22) {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0779t0.g(java.lang.Object, byte[], int, int, com.google.protobuf.e):void");
    }

    @Override // com.google.protobuf.C0
    public final int h(Object obj) {
        L0 l02;
        O0 o02 = this.f8714b;
        int i4 = 0;
        int i5 = o02.i(o02.g(obj)) + 0;
        if (this.f8715c) {
            B c4 = this.f8716d.c(obj);
            int i6 = 0;
            while (true) {
                l02 = c4.f8498a;
                if (i4 >= l02.e()) {
                    break;
                }
                i6 += B.f(l02.d(i4));
                i4++;
            }
            for (Map.Entry entry : l02.f()) {
                i6 += B.f(entry);
            }
            return i5 + i6;
        }
        return i5;
    }

    @Override // com.google.protobuf.C0
    public final Object i() {
        InterfaceC0772p0 interfaceC0772p0 = this.f8713a;
        return interfaceC0772p0 instanceof J ? (J) ((J) interfaceC0772p0).dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_MUTABLE_INSTANCE) : interfaceC0772p0.newBuilderForType$1().buildPartial();
    }

    @Override // com.google.protobuf.C0
    public final int j(Object obj) {
        int hashCode = this.f8714b.g(obj).hashCode();
        return this.f8715c ? (hashCode * 53) + this.f8716d.c(obj).hashCode() : hashCode;
    }

    public final boolean k(C0769o c0769o, C0784w c0784w, AbstractC0786x abstractC0786x, B b4, O0 o02, Object obj) {
        int i4 = c0769o.f8677b;
        InterfaceC0772p0 interfaceC0772p0 = this.f8713a;
        if (i4 != 11) {
            if ((i4 & 7) == 2) {
                I b5 = abstractC0786x.b(c0784w, interfaceC0772p0, i4 >>> 3);
                if (b5 != null) {
                    abstractC0786x.h(b5);
                    return true;
                }
                return o02.l(obj, c0769o);
            }
            return c0769o.y();
        }
        I i5 = null;
        int i6 = 0;
        ByteString byteString = null;
        while (c0769o.a() != Integer.MAX_VALUE) {
            int i7 = c0769o.f8677b;
            if (i7 == 16) {
                c0769o.x(0);
                i6 = c0769o.f8676a.y();
                i5 = abstractC0786x.b(c0784w, interfaceC0772p0, i6);
            } else if (i7 == 26) {
                if (i5 != null) {
                    abstractC0786x.h(i5);
                } else {
                    byteString = c0769o.f();
                }
            } else if (!c0769o.y()) {
                break;
            }
        }
        if (c0769o.f8677b == 12) {
            if (byteString != null) {
                if (i5 != null) {
                    abstractC0786x.i(i5);
                } else {
                    o02.d(obj, i6, byteString);
                }
            }
            return true;
        }
        throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
    }
}
