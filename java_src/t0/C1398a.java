package t0;

import java.io.Closeable;
import java.net.HttpURLConnection;
/* renamed from: t0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1398a implements Closeable {

    /* renamed from: d  reason: collision with root package name */
    public final HttpURLConnection f12342d;

    public C1398a(HttpURLConnection httpURLConnection) {
        this.f12342d = httpURLConnection;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0012 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0010 A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a() {
        /*
            r3 = this;
            java.net.HttpURLConnection r0 = r3.f12342d     // Catch: java.io.IOException -> Ld
            int r0 = r0.getResponseCode()     // Catch: java.io.IOException -> Ld
            int r0 = r0 / 100
            r1 = 2
            if (r0 != r1) goto Ld
            r0 = 1
            goto Le
        Ld:
            r0 = 0
        Le:
            if (r0 == 0) goto L12
            r3 = 0
            goto L6a
        L12:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L70
            r0.<init>()     // Catch: java.io.IOException -> L70
            java.lang.String r1 = "Unable to fetch "
            r0.append(r1)     // Catch: java.io.IOException -> L70
            java.net.HttpURLConnection r1 = r3.f12342d     // Catch: java.io.IOException -> L70
            java.net.URL r1 = r1.getURL()     // Catch: java.io.IOException -> L70
            r0.append(r1)     // Catch: java.io.IOException -> L70
            java.lang.String r1 = ". Failed with "
            r0.append(r1)     // Catch: java.io.IOException -> L70
            java.net.HttpURLConnection r1 = r3.f12342d     // Catch: java.io.IOException -> L70
            int r1 = r1.getResponseCode()     // Catch: java.io.IOException -> L70
            r0.append(r1)     // Catch: java.io.IOException -> L70
            java.lang.String r1 = "\n"
            r0.append(r1)     // Catch: java.io.IOException -> L70
            java.net.HttpURLConnection r3 = r3.f12342d     // Catch: java.io.IOException -> L70
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.io.IOException -> L70
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L70
            java.io.InputStream r3 = r3.getErrorStream()     // Catch: java.io.IOException -> L70
            r2.<init>(r3)     // Catch: java.io.IOException -> L70
            r1.<init>(r2)     // Catch: java.io.IOException -> L70
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L70
            r3.<init>()     // Catch: java.io.IOException -> L70
        L4d:
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> L6b
            if (r2 == 0) goto L5c
            r3.append(r2)     // Catch: java.lang.Throwable -> L6b
            r2 = 10
            r3.append(r2)     // Catch: java.lang.Throwable -> L6b
            goto L4d
        L5c:
            r1.close()     // Catch: java.lang.Exception -> L5f
        L5f:
            java.lang.String r3 = r3.toString()     // Catch: java.io.IOException -> L70
            r0.append(r3)     // Catch: java.io.IOException -> L70
            java.lang.String r3 = r0.toString()     // Catch: java.io.IOException -> L70
        L6a:
            return r3
        L6b:
            r3 = move-exception
            r1.close()     // Catch: java.lang.Exception -> L6f
        L6f:
            throw r3     // Catch: java.io.IOException -> L70
        L70:
            r3 = move-exception
            java.lang.String r0 = "get error failed "
            w0.C1446c.c(r0, r3)
            java.lang.String r3 = r3.getMessage()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: t0.C1398a.a():java.lang.String");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f12342d.disconnect();
    }
}
