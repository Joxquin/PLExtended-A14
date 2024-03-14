package com.google.protobuf;
/* renamed from: com.google.protobuf.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0767n {

    /* renamed from: a  reason: collision with root package name */
    public int f8672a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8673b = 100;

    /* renamed from: c  reason: collision with root package name */
    public int f8674c = Integer.MAX_VALUE;

    /* renamed from: d  reason: collision with root package name */
    public C0769o f8675d;

    public static int b(int i4) {
        return (-(i4 & 1)) ^ (i4 >>> 1);
    }

    public static long c(long j4) {
        return (-(j4 & 1)) ^ (j4 >>> 1);
    }

    public static C0763l f(byte[] bArr, int i4, int i5, boolean z4) {
        C0763l c0763l = new C0763l(bArr, i4, i5, z4);
        try {
            c0763l.h(i5);
            return c0763l;
        } catch (InvalidProtocolBufferException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    public abstract boolean A(int i4);

    public abstract void a(int i4);

    public abstract int d();

    public abstract boolean e();

    public abstract void g(int i4);

    public abstract int h(int i4);

    public abstract boolean i();

    public abstract ByteString j();

    public abstract double k();

    public abstract int l();

    public abstract int m();

    public abstract long n();

    public abstract float o();

    public abstract int p();

    public abstract long q();

    public abstract int r();

    public abstract long s();

    public abstract int t();

    public abstract long u();

    public abstract String v();

    public abstract String w();

    public abstract int x();

    public abstract int y();

    public abstract long z();
}
