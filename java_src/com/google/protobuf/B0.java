package com.google.protobuf;
/* loaded from: classes.dex */
public final class B0 implements InterfaceC0766m0 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC0772p0 f8501a;

    /* renamed from: b  reason: collision with root package name */
    public final String f8502b;

    /* renamed from: c  reason: collision with root package name */
    public final Object[] f8503c;

    /* renamed from: d  reason: collision with root package name */
    public final int f8504d;

    public B0(J j4, String str, Object[] objArr) {
        this.f8501a = j4;
        this.f8502b = str;
        this.f8503c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f8504d = charAt;
            return;
        }
        int i4 = charAt & 8191;
        int i5 = 1;
        int i6 = 13;
        while (true) {
            int i7 = i5 + 1;
            char charAt2 = str.charAt(i5);
            if (charAt2 < 55296) {
                this.f8504d = i4 | (charAt2 << i6);
                return;
            }
            i4 |= (charAt2 & 8191) << i6;
            i6 += 13;
            i5 = i7;
        }
    }

    @Override // com.google.protobuf.InterfaceC0766m0
    public final boolean a() {
        return (this.f8504d & 2) == 2;
    }

    @Override // com.google.protobuf.InterfaceC0766m0
    public final ProtoSyntax b() {
        return (this.f8504d & 1) == 1 ? ProtoSyntax.PROTO2 : ProtoSyntax.PROTO3;
    }

    @Override // com.google.protobuf.InterfaceC0766m0
    public final InterfaceC0772p0 c() {
        return this.f8501a;
    }
}
