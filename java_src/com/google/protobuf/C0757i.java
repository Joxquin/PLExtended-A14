package com.google.protobuf;
/* renamed from: com.google.protobuf.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0757i extends AbstractC0759j {

    /* renamed from: d  reason: collision with root package name */
    public int f8647d = 0;

    /* renamed from: e  reason: collision with root package name */
    public final int f8648e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ByteString f8649f;

    public C0757i(ByteString byteString) {
        this.f8649f = byteString;
        this.f8648e = byteString.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8647d < this.f8648e;
    }
}
