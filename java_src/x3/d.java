package x3;

import java.io.InputStream;
/* loaded from: classes.dex */
public final class d implements n {

    /* renamed from: d  reason: collision with root package name */
    public final InputStream f12893d;

    /* renamed from: e  reason: collision with root package name */
    public final p f12894e;

    public d(InputStream input, p pVar) {
        kotlin.jvm.internal.h.e(input, "input");
        this.f12893d = input;
        this.f12894e = pVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f12893d.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0061, code lost:
        if ((r5 != null && s3.g.b(r5, "getsockname failed", 0, false) >= 0) != false) goto L22;
     */
    @Override // x3.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long g(x3.b r5, long r6) {
        /*
            r4 = this;
            java.lang.String r6 = "sink"
            kotlin.jvm.internal.h.e(r5, r6)
            r6 = 1
            x3.p r7 = r4.f12894e     // Catch: java.lang.AssertionError -> L46
            r7.a()     // Catch: java.lang.AssertionError -> L46
            x3.l r7 = r5.l(r6)     // Catch: java.lang.AssertionError -> L46
            int r0 = r7.f12910c     // Catch: java.lang.AssertionError -> L46
            int r0 = 8192 - r0
            long r0 = (long) r0     // Catch: java.lang.AssertionError -> L46
            r2 = 8192(0x2000, double:4.0474E-320)
            long r0 = java.lang.Math.min(r2, r0)     // Catch: java.lang.AssertionError -> L46
            int r0 = (int) r0     // Catch: java.lang.AssertionError -> L46
            java.io.InputStream r4 = r4.f12893d     // Catch: java.lang.AssertionError -> L46
            byte[] r1 = r7.f12908a     // Catch: java.lang.AssertionError -> L46
            int r2 = r7.f12910c     // Catch: java.lang.AssertionError -> L46
            int r4 = r4.read(r1, r2, r0)     // Catch: java.lang.AssertionError -> L46
            r0 = -1
            if (r4 != r0) goto L3a
            int r4 = r7.f12909b     // Catch: java.lang.AssertionError -> L46
            int r0 = r7.f12910c     // Catch: java.lang.AssertionError -> L46
            if (r4 != r0) goto L37
            x3.l r4 = r7.a()     // Catch: java.lang.AssertionError -> L46
            r5.f12891d = r4     // Catch: java.lang.AssertionError -> L46
            x3.m.a(r7)     // Catch: java.lang.AssertionError -> L46
        L37:
            r4 = -1
            return r4
        L3a:
            int r0 = r7.f12910c     // Catch: java.lang.AssertionError -> L46
            int r0 = r0 + r4
            r7.f12910c = r0     // Catch: java.lang.AssertionError -> L46
            long r0 = r5.f12892e     // Catch: java.lang.AssertionError -> L46
            long r2 = (long) r4     // Catch: java.lang.AssertionError -> L46
            long r0 = r0 + r2
            r5.f12892e = r0     // Catch: java.lang.AssertionError -> L46
            return r2
        L46:
            r4 = move-exception
            int r5 = x3.f.f12895a
            java.lang.Throwable r5 = r4.getCause()
            r7 = 0
            if (r5 == 0) goto L64
            java.lang.String r5 = r4.getMessage()
            if (r5 == 0) goto L60
            java.lang.String r0 = "getsockname failed"
            int r5 = s3.g.b(r5, r0, r7, r7)
            if (r5 < 0) goto L60
            r5 = r6
            goto L61
        L60:
            r5 = r7
        L61:
            if (r5 == 0) goto L64
            goto L65
        L64:
            r6 = r7
        L65:
            if (r6 == 0) goto L6d
            java.io.IOException r5 = new java.io.IOException
            r5.<init>(r4)
            throw r5
        L6d:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: x3.d.g(x3.b, long):long");
    }

    public final String toString() {
        InputStream inputStream = this.f12893d;
        return "source(" + inputStream + ")";
    }
}
