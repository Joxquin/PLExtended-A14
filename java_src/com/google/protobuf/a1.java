package com.google.protobuf;
/* loaded from: classes.dex */
public final class a1 extends Z0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f8624a;

    public /* synthetic */ a1(int i4) {
        this.f8624a = i4;
    }

    public static int b(byte[] bArr, int i4, long j4, int i5) {
        if (i5 == 0) {
            a1 a1Var = b1.f8625a;
            if (i4 > -12) {
                return -1;
            }
            return i4;
        } else if (i5 != 1) {
            if (i5 == 2) {
                return b1.e(i4, X0.h(bArr, j4), X0.h(bArr, j4 + 1));
            }
            throw new AssertionError();
        } else {
            byte h4 = X0.h(bArr, j4);
            a1 a1Var2 = b1.f8625a;
            if (i4 > -12 || h4 > -65) {
                return -1;
            }
            return i4 ^ (h4 << 8);
        }
    }
}
