package com.google.android.apps.nexuslauncher.allapps;

import X2.InterfaceC0126l0;
import com.google.protobuf.C0784w;
import com.google.protobuf.InvalidProtocolBufferException;
import f2.C0880X;
/* loaded from: classes.dex */
public final class R0 implements InterfaceC0126l0 {
    @Override // X2.InterfaceC0126l0
    public final byte[] a(Object obj) {
        return ((C0880X) obj).toByteArray();
    }

    @Override // X2.InterfaceC0126l0
    public final Object b(byte[] bArr) {
        try {
            return C0880X.c(bArr, C0784w.a());
        } catch (InvalidProtocolBufferException e4) {
            throw new IllegalArgumentException(e4);
        }
    }
}
