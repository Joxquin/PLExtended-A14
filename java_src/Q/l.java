package q;

import r.C1368b;
import r.C1369c;
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public final int f11959a;

    /* renamed from: b  reason: collision with root package name */
    public final C1369c f11960b;

    /* renamed from: c  reason: collision with root package name */
    public final C1368b f11961c;

    /* renamed from: d  reason: collision with root package name */
    public int f11962d;

    /* renamed from: e  reason: collision with root package name */
    public int f11963e;

    /* renamed from: f  reason: collision with root package name */
    public int f11964f;

    public l(int i4) {
        this.f11959a = i4;
        if (!(i4 > 0)) {
            throw new IllegalArgumentException("maxSize <= 0".toString());
        }
        this.f11960b = new C1369c();
        this.f11961c = new C1368b();
    }

    public final Object a(Object key) {
        kotlin.jvm.internal.h.e(key, "key");
        synchronized (this.f11961c) {
            C1369c c1369c = this.f11960b;
            c1369c.getClass();
            Object obj = c1369c.f12067a.get(key);
            if (obj != null) {
                this.f11963e++;
                return obj;
            }
            this.f11964f++;
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00bb, code lost:
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!".toString());
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008a A[Catch: all -> 0x00bc, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:12:0x002e, B:14:0x0033, B:16:0x003d, B:21:0x0046, B:23:0x004a, B:26:0x0055, B:28:0x0066, B:36:0x0084, B:40:0x008a, B:31:0x006f, B:32:0x0074, B:35:0x0080, B:45:0x00b0, B:46:0x00bb), top: B:53:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0088 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.lang.Object r7, java.lang.Object r8) {
        /*
            r6 = this;
            java.lang.String r0 = "key"
            kotlin.jvm.internal.h.e(r7, r0)
            java.lang.String r0 = "value"
            kotlin.jvm.internal.h.e(r8, r0)
            r.b r0 = r6.f11961c
            monitor-enter(r0)
            int r1 = r6.f11962d     // Catch: java.lang.Throwable -> Lbf
            r2 = 1
            int r1 = r1 + r2
            r6.f11962d = r1     // Catch: java.lang.Throwable -> Lbf
            r.c r1 = r6.f11960b     // Catch: java.lang.Throwable -> Lbf
            r1.getClass()     // Catch: java.lang.Throwable -> Lbf
            java.util.LinkedHashMap r1 = r1.f12067a     // Catch: java.lang.Throwable -> Lbf
            java.lang.Object r7 = r1.put(r7, r8)     // Catch: java.lang.Throwable -> Lbf
            if (r7 == 0) goto L26
            int r8 = r6.f11962d     // Catch: java.lang.Throwable -> Lbf
            int r8 = r8 + (-1)
            r6.f11962d = r8     // Catch: java.lang.Throwable -> Lbf
        L26:
            e3.f r8 = e3.f.f9037a     // Catch: java.lang.Throwable -> Lbf
            monitor-exit(r0)
            int r8 = r6.f11959a
        L2b:
            r.b r0 = r6.f11961c
            monitor-enter(r0)
            int r1 = r6.f11962d     // Catch: java.lang.Throwable -> Lbc
            r3 = 0
            if (r1 < 0) goto L43
            r.c r1 = r6.f11960b     // Catch: java.lang.Throwable -> Lbc
            java.util.LinkedHashMap r1 = r1.f12067a     // Catch: java.lang.Throwable -> Lbc
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> Lbc
            if (r1 == 0) goto L41
            int r1 = r6.f11962d     // Catch: java.lang.Throwable -> Lbc
            if (r1 != 0) goto L43
        L41:
            r1 = r2
            goto L44
        L43:
            r1 = r3
        L44:
            if (r1 == 0) goto Lb0
            int r1 = r6.f11962d     // Catch: java.lang.Throwable -> Lbc
            if (r1 <= r8) goto Lae
            r.c r1 = r6.f11960b     // Catch: java.lang.Throwable -> Lbc
            java.util.LinkedHashMap r1 = r1.f12067a     // Catch: java.lang.Throwable -> Lbc
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> Lbc
            if (r1 == 0) goto L55
            goto Lae
        L55:
            r.c r1 = r6.f11960b     // Catch: java.lang.Throwable -> Lbc
            java.util.LinkedHashMap r1 = r1.f12067a     // Catch: java.lang.Throwable -> Lbc
            java.util.Set r1 = r1.entrySet()     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r4 = "map.entries"
            kotlin.jvm.internal.h.d(r1, r4)     // Catch: java.lang.Throwable -> Lbc
            boolean r4 = r1 instanceof java.util.List     // Catch: java.lang.Throwable -> Lbc
            if (r4 == 0) goto L74
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Throwable -> Lbc
            boolean r4 = r1.isEmpty()     // Catch: java.lang.Throwable -> Lbc
            if (r4 == 0) goto L6f
            goto L7e
        L6f:
            java.lang.Object r1 = r1.get(r3)     // Catch: java.lang.Throwable -> Lbc
            goto L84
        L74:
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> Lbc
            boolean r3 = r1.hasNext()     // Catch: java.lang.Throwable -> Lbc
            if (r3 != 0) goto L80
        L7e:
            r1 = 0
            goto L84
        L80:
            java.lang.Object r1 = r1.next()     // Catch: java.lang.Throwable -> Lbc
        L84:
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> Lbc
            if (r1 != 0) goto L8a
            monitor-exit(r0)
            goto Laf
        L8a:
            java.lang.Object r3 = r1.getKey()     // Catch: java.lang.Throwable -> Lbc
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> Lbc
            r.c r4 = r6.f11960b     // Catch: java.lang.Throwable -> Lbc
            r4.getClass()     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r5 = "key"
            kotlin.jvm.internal.h.e(r3, r5)     // Catch: java.lang.Throwable -> Lbc
            java.util.LinkedHashMap r4 = r4.f12067a     // Catch: java.lang.Throwable -> Lbc
            r4.remove(r3)     // Catch: java.lang.Throwable -> Lbc
            int r3 = r6.f11962d     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r4 = "value"
            kotlin.jvm.internal.h.e(r1, r4)     // Catch: java.lang.Throwable -> Lbc
            int r3 = r3 - r2
            r6.f11962d = r3     // Catch: java.lang.Throwable -> Lbc
            monitor-exit(r0)
            goto L2b
        Lae:
            monitor-exit(r0)
        Laf:
            return r7
        Lb0:
            java.lang.String r6 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> Lbc
            r7.<init>(r6)     // Catch: java.lang.Throwable -> Lbc
            throw r7     // Catch: java.lang.Throwable -> Lbc
        Lbc:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        Lbf:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: q.l.b(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public final String toString() {
        String str;
        synchronized (this.f11961c) {
            int i4 = this.f11963e;
            int i5 = this.f11964f + i4;
            str = "LruCache[maxSize=" + this.f11959a + ",hits=" + this.f11963e + ",misses=" + this.f11964f + ",hitRate=" + (i5 != 0 ? (i4 * 100) / i5 : 0) + "%]";
        }
        return str;
    }
}
