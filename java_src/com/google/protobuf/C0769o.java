package com.google.protobuf;

import java.nio.charset.Charset;
import java.util.List;
/* renamed from: com.google.protobuf.o  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0769o {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC0767n f8676a;

    /* renamed from: b  reason: collision with root package name */
    public int f8677b;

    /* renamed from: c  reason: collision with root package name */
    public int f8678c;

    /* renamed from: d  reason: collision with root package name */
    public int f8679d = 0;

    public C0769o(AbstractC0767n abstractC0767n) {
        Charset charset = T.f8577a;
        if (abstractC0767n == null) {
            throw new NullPointerException("input");
        }
        this.f8676a = abstractC0767n;
        abstractC0767n.f8675d = this;
    }

    public static void A(int i4) {
        if ((i4 & 7) != 0) {
            throw InvalidProtocolBufferException.g();
        }
    }

    public static void z(int i4) {
        if ((i4 & 3) != 0) {
            throw InvalidProtocolBufferException.g();
        }
    }

    public final int a() {
        int i4 = this.f8679d;
        if (i4 != 0) {
            this.f8677b = i4;
            this.f8679d = 0;
        } else {
            this.f8677b = this.f8676a.x();
        }
        int i5 = this.f8677b;
        if (i5 == 0 || i5 == this.f8678c) {
            return Integer.MAX_VALUE;
        }
        return i5 >>> 3;
    }

    public final void b(InterfaceC0772p0 interfaceC0772p0, C0 c02, C0784w c0784w) {
        x(3);
        c(interfaceC0772p0, c02, c0784w);
    }

    public final void c(Object obj, C0 c02, C0784w c0784w) {
        int i4 = this.f8678c;
        this.f8678c = ((this.f8677b >>> 3) << 3) | 4;
        try {
            c02.c(obj, this, c0784w);
            if (this.f8677b == this.f8678c) {
                return;
            }
            throw InvalidProtocolBufferException.g();
        } finally {
            this.f8678c = i4;
        }
    }

    public final void d(Object obj, C0 c02, C0784w c0784w) {
        AbstractC0767n abstractC0767n = this.f8676a;
        int y4 = abstractC0767n.y();
        if (abstractC0767n.f8672a >= abstractC0767n.f8673b) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int h4 = abstractC0767n.h(y4);
        abstractC0767n.f8672a++;
        c02.c(obj, this, c0784w);
        abstractC0767n.a(0);
        abstractC0767n.f8672a--;
        abstractC0767n.g(h4);
    }

    public final void e(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof C0753g;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 0) {
                do {
                    list.add(Boolean.valueOf(abstractC0767n.i()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            } else if (i4 != 2) {
                throw InvalidProtocolBufferException.d();
            } else {
                int d4 = abstractC0767n.d() + abstractC0767n.y();
                do {
                    list.add(Boolean.valueOf(abstractC0767n.i()));
                } while (abstractC0767n.d() < d4);
                w(d4);
                return;
            }
        }
        C0753g c0753g = (C0753g) list;
        int i5 = this.f8677b & 7;
        if (i5 == 0) {
            do {
                c0753g.i(abstractC0767n.i());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        } else if (i5 != 2) {
            throw InvalidProtocolBufferException.d();
        } else {
            int d5 = abstractC0767n.d() + abstractC0767n.y();
            do {
                c0753g.i(abstractC0767n.i());
            } while (abstractC0767n.d() < d5);
            w(d5);
        }
    }

    public final ByteString f() {
        x(2);
        return this.f8676a.j();
    }

    public final void g(List list) {
        int x4;
        if ((this.f8677b & 7) != 2) {
            throw InvalidProtocolBufferException.d();
        }
        do {
            list.add(f());
            AbstractC0767n abstractC0767n = this.f8676a;
            if (abstractC0767n.e()) {
                return;
            }
            x4 = abstractC0767n.x();
        } while (x4 == this.f8677b);
        this.f8679d = x4;
    }

    public final void h(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof C0778t;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 1) {
                do {
                    list.add(Double.valueOf(abstractC0767n.k()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            } else if (i4 != 2) {
                throw InvalidProtocolBufferException.d();
            } else {
                int y4 = abstractC0767n.y();
                A(y4);
                int d4 = abstractC0767n.d() + y4;
                do {
                    list.add(Double.valueOf(abstractC0767n.k()));
                } while (abstractC0767n.d() < d4);
                return;
            }
        }
        C0778t c0778t = (C0778t) list;
        int i5 = this.f8677b & 7;
        if (i5 == 1) {
            do {
                c0778t.i(abstractC0767n.k());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        } else if (i5 != 2) {
            throw InvalidProtocolBufferException.d();
        } else {
            int y5 = abstractC0767n.y();
            A(y5);
            int d5 = abstractC0767n.d() + y5;
            do {
                c0778t.i(abstractC0767n.k());
            } while (abstractC0767n.d() < d5);
        }
    }

    public final void i(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof K;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 0) {
                do {
                    list.add(Integer.valueOf(abstractC0767n.l()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            } else if (i4 != 2) {
                throw InvalidProtocolBufferException.d();
            } else {
                int d4 = abstractC0767n.d() + abstractC0767n.y();
                do {
                    list.add(Integer.valueOf(abstractC0767n.l()));
                } while (abstractC0767n.d() < d4);
                w(d4);
                return;
            }
        }
        K k4 = (K) list;
        int i5 = this.f8677b & 7;
        if (i5 == 0) {
            do {
                k4.i(abstractC0767n.l());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        } else if (i5 != 2) {
            throw InvalidProtocolBufferException.d();
        } else {
            int d5 = abstractC0767n.d() + abstractC0767n.y();
            do {
                k4.i(abstractC0767n.l());
            } while (abstractC0767n.d() < d5);
            w(d5);
        }
    }

    public final Object j(WireFormat$FieldType wireFormat$FieldType, Class cls, C0784w c0784w) {
        int ordinal = wireFormat$FieldType.ordinal();
        AbstractC0767n abstractC0767n = this.f8676a;
        switch (ordinal) {
            case 0:
                x(1);
                return Double.valueOf(abstractC0767n.k());
            case 1:
                x(5);
                return Float.valueOf(abstractC0767n.o());
            case 2:
                x(0);
                return Long.valueOf(abstractC0767n.q());
            case 3:
                x(0);
                return Long.valueOf(abstractC0767n.z());
            case 4:
                x(0);
                return Integer.valueOf(abstractC0767n.p());
            case 5:
                x(1);
                return Long.valueOf(abstractC0767n.n());
            case 6:
                x(5);
                return Integer.valueOf(abstractC0767n.m());
            case 7:
                x(0);
                return Boolean.valueOf(abstractC0767n.i());
            case 8:
                x(2);
                return abstractC0767n.w();
            case 9:
            default:
                throw new IllegalArgumentException("unsupported field type.");
            case 10:
                x(2);
                C0 a4 = C0791z0.f8727c.a(cls);
                Object i4 = a4.i();
                d(i4, a4, c0784w);
                a4.d(i4);
                return i4;
            case 11:
                return f();
            case 12:
                x(0);
                return Integer.valueOf(abstractC0767n.y());
            case 13:
                x(0);
                return Integer.valueOf(abstractC0767n.l());
            case 14:
                x(5);
                return Integer.valueOf(abstractC0767n.r());
            case 15:
                x(1);
                return Long.valueOf(abstractC0767n.s());
            case 16:
                x(0);
                return Integer.valueOf(abstractC0767n.t());
            case 17:
                x(0);
                return Long.valueOf(abstractC0767n.u());
        }
    }

    public final void k(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof K;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 2) {
                int y4 = abstractC0767n.y();
                z(y4);
                int d4 = abstractC0767n.d() + y4;
                do {
                    list.add(Integer.valueOf(abstractC0767n.m()));
                } while (abstractC0767n.d() < d4);
                return;
            } else if (i4 != 5) {
                throw InvalidProtocolBufferException.d();
            } else {
                do {
                    list.add(Integer.valueOf(abstractC0767n.m()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            }
        }
        K k4 = (K) list;
        int i5 = this.f8677b & 7;
        if (i5 == 2) {
            int y5 = abstractC0767n.y();
            z(y5);
            int d5 = abstractC0767n.d() + y5;
            do {
                k4.i(abstractC0767n.m());
            } while (abstractC0767n.d() < d5);
        } else if (i5 != 5) {
            throw InvalidProtocolBufferException.d();
        } else {
            do {
                k4.i(abstractC0767n.m());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        }
    }

    public final void l(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof C0748d0;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 1) {
                do {
                    list.add(Long.valueOf(abstractC0767n.n()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            } else if (i4 != 2) {
                throw InvalidProtocolBufferException.d();
            } else {
                int y4 = abstractC0767n.y();
                A(y4);
                int d4 = abstractC0767n.d() + y4;
                do {
                    list.add(Long.valueOf(abstractC0767n.n()));
                } while (abstractC0767n.d() < d4);
                return;
            }
        }
        C0748d0 c0748d0 = (C0748d0) list;
        int i5 = this.f8677b & 7;
        if (i5 == 1) {
            do {
                c0748d0.i(abstractC0767n.n());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        } else if (i5 != 2) {
            throw InvalidProtocolBufferException.d();
        } else {
            int y5 = abstractC0767n.y();
            A(y5);
            int d5 = abstractC0767n.d() + y5;
            do {
                c0748d0.i(abstractC0767n.n());
            } while (abstractC0767n.d() < d5);
        }
    }

    public final void m(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof C;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 2) {
                int y4 = abstractC0767n.y();
                z(y4);
                int d4 = abstractC0767n.d() + y4;
                do {
                    list.add(Float.valueOf(abstractC0767n.o()));
                } while (abstractC0767n.d() < d4);
                return;
            } else if (i4 != 5) {
                throw InvalidProtocolBufferException.d();
            } else {
                do {
                    list.add(Float.valueOf(abstractC0767n.o()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            }
        }
        C c4 = (C) list;
        int i5 = this.f8677b & 7;
        if (i5 == 2) {
            int y5 = abstractC0767n.y();
            z(y5);
            int d5 = abstractC0767n.d() + y5;
            do {
                c4.i(abstractC0767n.o());
            } while (abstractC0767n.d() < d5);
        } else if (i5 != 5) {
            throw InvalidProtocolBufferException.d();
        } else {
            do {
                c4.i(abstractC0767n.o());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        }
    }

    public final void n(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof K;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 0) {
                do {
                    list.add(Integer.valueOf(abstractC0767n.p()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            } else if (i4 != 2) {
                throw InvalidProtocolBufferException.d();
            } else {
                int d4 = abstractC0767n.d() + abstractC0767n.y();
                do {
                    list.add(Integer.valueOf(abstractC0767n.p()));
                } while (abstractC0767n.d() < d4);
                w(d4);
                return;
            }
        }
        K k4 = (K) list;
        int i5 = this.f8677b & 7;
        if (i5 == 0) {
            do {
                k4.i(abstractC0767n.p());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        } else if (i5 != 2) {
            throw InvalidProtocolBufferException.d();
        } else {
            int d5 = abstractC0767n.d() + abstractC0767n.y();
            do {
                k4.i(abstractC0767n.p());
            } while (abstractC0767n.d() < d5);
            w(d5);
        }
    }

    public final void o(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof C0748d0;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 0) {
                do {
                    list.add(Long.valueOf(abstractC0767n.q()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            } else if (i4 != 2) {
                throw InvalidProtocolBufferException.d();
            } else {
                int d4 = abstractC0767n.d() + abstractC0767n.y();
                do {
                    list.add(Long.valueOf(abstractC0767n.q()));
                } while (abstractC0767n.d() < d4);
                w(d4);
                return;
            }
        }
        C0748d0 c0748d0 = (C0748d0) list;
        int i5 = this.f8677b & 7;
        if (i5 == 0) {
            do {
                c0748d0.i(abstractC0767n.q());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        } else if (i5 != 2) {
            throw InvalidProtocolBufferException.d();
        } else {
            int d5 = abstractC0767n.d() + abstractC0767n.y();
            do {
                c0748d0.i(abstractC0767n.q());
            } while (abstractC0767n.d() < d5);
            w(d5);
        }
    }

    public final void p(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof K;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 2) {
                int y4 = abstractC0767n.y();
                z(y4);
                int d4 = abstractC0767n.d() + y4;
                do {
                    list.add(Integer.valueOf(abstractC0767n.r()));
                } while (abstractC0767n.d() < d4);
                return;
            } else if (i4 != 5) {
                throw InvalidProtocolBufferException.d();
            } else {
                do {
                    list.add(Integer.valueOf(abstractC0767n.r()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            }
        }
        K k4 = (K) list;
        int i5 = this.f8677b & 7;
        if (i5 == 2) {
            int y5 = abstractC0767n.y();
            z(y5);
            int d5 = abstractC0767n.d() + y5;
            do {
                k4.i(abstractC0767n.r());
            } while (abstractC0767n.d() < d5);
        } else if (i5 != 5) {
            throw InvalidProtocolBufferException.d();
        } else {
            do {
                k4.i(abstractC0767n.r());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        }
    }

    public final void q(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof C0748d0;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 1) {
                do {
                    list.add(Long.valueOf(abstractC0767n.s()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            } else if (i4 != 2) {
                throw InvalidProtocolBufferException.d();
            } else {
                int y4 = abstractC0767n.y();
                A(y4);
                int d4 = abstractC0767n.d() + y4;
                do {
                    list.add(Long.valueOf(abstractC0767n.s()));
                } while (abstractC0767n.d() < d4);
                return;
            }
        }
        C0748d0 c0748d0 = (C0748d0) list;
        int i5 = this.f8677b & 7;
        if (i5 == 1) {
            do {
                c0748d0.i(abstractC0767n.s());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        } else if (i5 != 2) {
            throw InvalidProtocolBufferException.d();
        } else {
            int y5 = abstractC0767n.y();
            A(y5);
            int d5 = abstractC0767n.d() + y5;
            do {
                c0748d0.i(abstractC0767n.s());
            } while (abstractC0767n.d() < d5);
        }
    }

    public final void r(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof K;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 0) {
                do {
                    list.add(Integer.valueOf(abstractC0767n.t()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            } else if (i4 != 2) {
                throw InvalidProtocolBufferException.d();
            } else {
                int d4 = abstractC0767n.d() + abstractC0767n.y();
                do {
                    list.add(Integer.valueOf(abstractC0767n.t()));
                } while (abstractC0767n.d() < d4);
                w(d4);
                return;
            }
        }
        K k4 = (K) list;
        int i5 = this.f8677b & 7;
        if (i5 == 0) {
            do {
                k4.i(abstractC0767n.t());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        } else if (i5 != 2) {
            throw InvalidProtocolBufferException.d();
        } else {
            int d5 = abstractC0767n.d() + abstractC0767n.y();
            do {
                k4.i(abstractC0767n.t());
            } while (abstractC0767n.d() < d5);
            w(d5);
        }
    }

    public final void s(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof C0748d0;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 0) {
                do {
                    list.add(Long.valueOf(abstractC0767n.u()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            } else if (i4 != 2) {
                throw InvalidProtocolBufferException.d();
            } else {
                int d4 = abstractC0767n.d() + abstractC0767n.y();
                do {
                    list.add(Long.valueOf(abstractC0767n.u()));
                } while (abstractC0767n.d() < d4);
                w(d4);
                return;
            }
        }
        C0748d0 c0748d0 = (C0748d0) list;
        int i5 = this.f8677b & 7;
        if (i5 == 0) {
            do {
                c0748d0.i(abstractC0767n.u());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        } else if (i5 != 2) {
            throw InvalidProtocolBufferException.d();
        } else {
            int d5 = abstractC0767n.d() + abstractC0767n.y();
            do {
                c0748d0.i(abstractC0767n.u());
            } while (abstractC0767n.d() < d5);
            w(d5);
        }
    }

    public final void t(List list, boolean z4) {
        String v4;
        int x4;
        int x5;
        if ((this.f8677b & 7) != 2) {
            throw InvalidProtocolBufferException.d();
        }
        boolean z5 = list instanceof Z;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (z5 && !z4) {
            Z z6 = (Z) list;
            do {
                z6.c(f());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
            return;
        }
        do {
            if (z4) {
                x(2);
                v4 = abstractC0767n.w();
            } else {
                x(2);
                v4 = abstractC0767n.v();
            }
            list.add(v4);
            if (abstractC0767n.e()) {
                return;
            }
            x4 = abstractC0767n.x();
        } while (x4 == this.f8677b);
        this.f8679d = x4;
    }

    public final void u(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof K;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 0) {
                do {
                    list.add(Integer.valueOf(abstractC0767n.y()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            } else if (i4 != 2) {
                throw InvalidProtocolBufferException.d();
            } else {
                int d4 = abstractC0767n.d() + abstractC0767n.y();
                do {
                    list.add(Integer.valueOf(abstractC0767n.y()));
                } while (abstractC0767n.d() < d4);
                w(d4);
                return;
            }
        }
        K k4 = (K) list;
        int i5 = this.f8677b & 7;
        if (i5 == 0) {
            do {
                k4.i(abstractC0767n.y());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        } else if (i5 != 2) {
            throw InvalidProtocolBufferException.d();
        } else {
            int d5 = abstractC0767n.d() + abstractC0767n.y();
            do {
                k4.i(abstractC0767n.y());
            } while (abstractC0767n.d() < d5);
            w(d5);
        }
    }

    public final void v(List list) {
        int x4;
        int x5;
        boolean z4 = list instanceof C0748d0;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (!z4) {
            int i4 = this.f8677b & 7;
            if (i4 == 0) {
                do {
                    list.add(Long.valueOf(abstractC0767n.z()));
                    if (abstractC0767n.e()) {
                        return;
                    }
                    x4 = abstractC0767n.x();
                } while (x4 == this.f8677b);
                this.f8679d = x4;
                return;
            } else if (i4 != 2) {
                throw InvalidProtocolBufferException.d();
            } else {
                int d4 = abstractC0767n.d() + abstractC0767n.y();
                do {
                    list.add(Long.valueOf(abstractC0767n.z()));
                } while (abstractC0767n.d() < d4);
                w(d4);
                return;
            }
        }
        C0748d0 c0748d0 = (C0748d0) list;
        int i5 = this.f8677b & 7;
        if (i5 == 0) {
            do {
                c0748d0.i(abstractC0767n.z());
                if (abstractC0767n.e()) {
                    return;
                }
                x5 = abstractC0767n.x();
            } while (x5 == this.f8677b);
            this.f8679d = x5;
        } else if (i5 != 2) {
            throw InvalidProtocolBufferException.d();
        } else {
            int d5 = abstractC0767n.d() + abstractC0767n.y();
            do {
                c0748d0.i(abstractC0767n.z());
            } while (abstractC0767n.d() < d5);
            w(d5);
        }
    }

    public final void w(int i4) {
        if (this.f8676a.d() != i4) {
            throw InvalidProtocolBufferException.j();
        }
    }

    public final void x(int i4) {
        if ((this.f8677b & 7) != i4) {
            throw InvalidProtocolBufferException.d();
        }
    }

    public final boolean y() {
        int i4;
        AbstractC0767n abstractC0767n = this.f8676a;
        if (abstractC0767n.e() || (i4 = this.f8677b) == this.f8678c) {
            return false;
        }
        return abstractC0767n.A(i4);
    }
}
