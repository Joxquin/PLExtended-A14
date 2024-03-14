package v0;

import x3.h;
/* renamed from: v0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1430a {

    /* renamed from: a  reason: collision with root package name */
    public final String[] f12628a;

    /* renamed from: b  reason: collision with root package name */
    public final h f12629b;

    public C1430a(String[] strArr, h hVar) {
        this.f12628a = strArr;
        this.f12629b = hVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004e A[Catch: IOException -> 0x0091, TryCatch #0 {IOException -> 0x0091, blocks: (B:2:0x0000, B:3:0x000a, B:5:0x000d, B:7:0x0032, B:9:0x003a, B:21:0x005a, B:19:0x004e, B:20:0x0051, B:23:0x005f, B:24:0x0062, B:25:0x0081), top: B:30:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static v0.C1430a a(java.lang.String... r15) {
        /*
            int r0 = r15.length     // Catch: java.io.IOException -> L91
            okio.ByteString[] r0 = new okio.ByteString[r0]     // Catch: java.io.IOException -> L91
            x3.b r1 = new x3.b     // Catch: java.io.IOException -> L91
            r1.<init>()     // Catch: java.io.IOException -> L91
            r2 = 0
            r3 = r2
        La:
            int r4 = r15.length     // Catch: java.io.IOException -> L91
            if (r3 >= r4) goto L81
            r4 = r15[r3]     // Catch: java.io.IOException -> L91
            java.lang.String[] r5 = com.airbnb.lottie.parser.moshi.a.f4383h     // Catch: java.io.IOException -> L91
            r6 = 1
            x3.l r7 = r1.l(r6)     // Catch: java.io.IOException -> L91
            int r8 = r7.f12910c     // Catch: java.io.IOException -> L91
            int r9 = r8 + 1
            r7.f12910c = r9     // Catch: java.io.IOException -> L91
            r9 = 34
            byte r9 = (byte) r9     // Catch: java.io.IOException -> L91
            byte[] r7 = r7.f12908a     // Catch: java.io.IOException -> L91
            r7[r8] = r9     // Catch: java.io.IOException -> L91
            long r7 = r1.f12892e     // Catch: java.io.IOException -> L91
            r10 = 1
            long r7 = r7 + r10
            r1.f12892e = r7     // Catch: java.io.IOException -> L91
            int r7 = r4.length()     // Catch: java.io.IOException -> L91
            r8 = r2
            r12 = r8
        L30:
            if (r8 >= r7) goto L5d
            char r13 = r4.charAt(r8)     // Catch: java.io.IOException -> L91
            r14 = 128(0x80, float:1.794E-43)
            if (r13 >= r14) goto L3f
            r13 = r5[r13]     // Catch: java.io.IOException -> L91
            if (r13 != 0) goto L4c
            goto L5a
        L3f:
            r14 = 8232(0x2028, float:1.1535E-41)
            if (r13 != r14) goto L46
            java.lang.String r13 = "\\u2028"
            goto L4c
        L46:
            r14 = 8233(0x2029, float:1.1537E-41)
            if (r13 != r14) goto L5a
            java.lang.String r13 = "\\u2029"
        L4c:
            if (r12 >= r8) goto L51
            r1.o(r4, r12, r8)     // Catch: java.io.IOException -> L91
        L51:
            int r12 = r13.length()     // Catch: java.io.IOException -> L91
            r1.o(r13, r2, r12)     // Catch: java.io.IOException -> L91
            int r12 = r8 + 1
        L5a:
            int r8 = r8 + 1
            goto L30
        L5d:
            if (r12 >= r7) goto L62
            r1.o(r4, r12, r7)     // Catch: java.io.IOException -> L91
        L62:
            x3.l r4 = r1.l(r6)     // Catch: java.io.IOException -> L91
            int r5 = r4.f12910c     // Catch: java.io.IOException -> L91
            int r6 = r5 + 1
            r4.f12910c = r6     // Catch: java.io.IOException -> L91
            byte[] r4 = r4.f12908a     // Catch: java.io.IOException -> L91
            r4[r5] = r9     // Catch: java.io.IOException -> L91
            long r4 = r1.f12892e     // Catch: java.io.IOException -> L91
            long r4 = r4 + r10
            r1.f12892e = r4     // Catch: java.io.IOException -> L91
            r1.c()     // Catch: java.io.IOException -> L91
            okio.ByteString r4 = r1.e()     // Catch: java.io.IOException -> L91
            r0[r3] = r4     // Catch: java.io.IOException -> L91
            int r3 = r3 + 1
            goto La
        L81:
            v0.a r1 = new v0.a     // Catch: java.io.IOException -> L91
            java.lang.Object r15 = r15.clone()     // Catch: java.io.IOException -> L91
            java.lang.String[] r15 = (java.lang.String[]) r15     // Catch: java.io.IOException -> L91
            x3.h r0 = x3.h.i(r0)     // Catch: java.io.IOException -> L91
            r1.<init>(r15, r0)     // Catch: java.io.IOException -> L91
            return r1
        L91:
            r15 = move-exception
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>(r15)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: v0.C1430a.a(java.lang.String[]):v0.a");
    }
}
