package com.google.protobuf;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public final class T {

    /* renamed from: a  reason: collision with root package name */
    public static final Charset f8577a;

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f8578b;

    static {
        Charset.forName("US-ASCII");
        f8577a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f8578b = bArr;
        ByteBuffer.wrap(bArr);
        AbstractC0767n.f(bArr, 0, 0, false);
    }

    public static int a(long j4) {
        return (int) (j4 ^ (j4 >>> 32));
    }
}
