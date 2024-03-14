package Z2;

import X2.t0;
import com.google.protobuf.InterfaceC0772p0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class b implements t0 {

    /* renamed from: c  reason: collision with root package name */
    public static final ThreadLocal f2376c = new ThreadLocal();

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC0787x0 f2377a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC0772p0 f2378b;

    public b(J j4) {
        this.f2378b = j4;
        this.f2377a = j4.getParserForType();
    }

    @Override // X2.t0
    public final a a(Object obj) {
        return new a((InterfaceC0772p0) obj, this.f2377a);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x008c  */
    @Override // X2.t0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.protobuf.InterfaceC0772p0 b(java.io.InputStream r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof Z2.a
            if (r0 == 0) goto L1e
            r0 = r8
            Z2.a r0 = (Z2.a) r0
            com.google.protobuf.x0 r0 = r0.f2374e
            com.google.protobuf.x0 r1 = r7.f2377a
            if (r0 != r1) goto L1e
            r0 = r8
            Z2.a r0 = (Z2.a) r0     // Catch: java.lang.IllegalStateException -> L1e
            com.google.protobuf.p0 r0 = r0.f2373d     // Catch: java.lang.IllegalStateException -> L1e
            if (r0 == 0) goto L16
            goto La2
        L16:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.IllegalStateException -> L1e
            java.lang.String r1 = "message not available"
            r0.<init>(r1)     // Catch: java.lang.IllegalStateException -> L1e
            throw r0     // Catch: java.lang.IllegalStateException -> L1e
        L1e:
            boolean r0 = r8 instanceof X2.T     // Catch: java.io.IOException -> Lbb
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L89
            int r0 = r8.available()     // Catch: java.io.IOException -> Lbb
            if (r0 <= 0) goto L84
            r3 = 4194304(0x400000, float:5.877472E-39)
            if (r0 > r3) goto L84
            java.lang.ThreadLocal r3 = Z2.b.f2376c     // Catch: java.io.IOException -> Lbb
            java.lang.Object r4 = r3.get()     // Catch: java.io.IOException -> Lbb
            java.lang.ref.Reference r4 = (java.lang.ref.Reference) r4     // Catch: java.io.IOException -> Lbb
            if (r4 == 0) goto L43
            java.lang.Object r4 = r4.get()     // Catch: java.io.IOException -> Lbb
            byte[] r4 = (byte[]) r4     // Catch: java.io.IOException -> Lbb
            if (r4 == 0) goto L43
            int r5 = r4.length     // Catch: java.io.IOException -> Lbb
            if (r5 >= r0) goto L4d
        L43:
            byte[] r4 = new byte[r0]     // Catch: java.io.IOException -> Lbb
            java.lang.ref.WeakReference r5 = new java.lang.ref.WeakReference     // Catch: java.io.IOException -> Lbb
            r5.<init>(r4)     // Catch: java.io.IOException -> Lbb
            r3.set(r5)     // Catch: java.io.IOException -> Lbb
        L4d:
            r3 = r0
        L4e:
            if (r3 <= 0) goto L5c
            int r5 = r0 - r3
            int r5 = r8.read(r4, r5, r3)     // Catch: java.io.IOException -> Lbb
            r6 = -1
            if (r5 != r6) goto L5a
            goto L5c
        L5a:
            int r3 = r3 - r5
            goto L4e
        L5c:
            if (r3 != 0) goto L63
            com.google.protobuf.l r0 = com.google.protobuf.AbstractC0767n.f(r4, r2, r0, r2)     // Catch: java.io.IOException -> Lbb
            goto L8a
        L63:
            int r7 = r0 - r3
            java.lang.RuntimeException r8 = new java.lang.RuntimeException     // Catch: java.io.IOException -> Lbb
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.io.IOException -> Lbb
            r1.<init>()     // Catch: java.io.IOException -> Lbb
            java.lang.String r2 = "size inaccurate: "
            r1.append(r2)     // Catch: java.io.IOException -> Lbb
            r1.append(r0)     // Catch: java.io.IOException -> Lbb
            java.lang.String r0 = " != "
            r1.append(r0)     // Catch: java.io.IOException -> Lbb
            r1.append(r7)     // Catch: java.io.IOException -> Lbb
            java.lang.String r7 = r1.toString()     // Catch: java.io.IOException -> Lbb
            r8.<init>(r7)     // Catch: java.io.IOException -> Lbb
            throw r8     // Catch: java.io.IOException -> Lbb
        L84:
            if (r0 != 0) goto L89
            com.google.protobuf.p0 r0 = r7.f2378b     // Catch: java.io.IOException -> Lbb
            goto La2
        L89:
            r0 = r1
        L8a:
            if (r0 != 0) goto L91
            com.google.protobuf.m r0 = new com.google.protobuf.m
            r0.<init>(r8)
        L91:
            r8 = 2147483647(0x7fffffff, float:NaN)
            r0.f8674c = r8
            com.google.protobuf.x0 r7 = r7.f2377a     // Catch: com.google.protobuf.InvalidProtocolBufferException -> La8
            com.google.protobuf.w r8 = Z2.c.f2379a     // Catch: com.google.protobuf.InvalidProtocolBufferException -> La8
            com.google.protobuf.p0 r7 = r7.a(r0, r8)     // Catch: com.google.protobuf.InvalidProtocolBufferException -> La8
            r0.a(r2)     // Catch: com.google.protobuf.InvalidProtocolBufferException -> La3
            r0 = r7
        La2:
            return r0
        La3:
            r8 = move-exception
            r8.i(r7)     // Catch: com.google.protobuf.InvalidProtocolBufferException -> La8
            throw r8     // Catch: com.google.protobuf.InvalidProtocolBufferException -> La8
        La8:
            r7 = move-exception
            X2.L0 r8 = X2.L0.f2134m
            java.lang.String r0 = "Invalid protobuf byte sequence"
            X2.L0 r8 = r8.f(r0)
            X2.L0 r7 = r8.e(r7)
            io.grpc.StatusRuntimeException r8 = new io.grpc.StatusRuntimeException
            r8.<init>(r7, r1)
            throw r8
        Lbb:
            r7 = move-exception
            java.lang.RuntimeException r8 = new java.lang.RuntimeException
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: Z2.b.b(java.io.InputStream):com.google.protobuf.p0");
    }
}
