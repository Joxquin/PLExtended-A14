package X2;

import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
/* renamed from: X2.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0107c {

    /* renamed from: b  reason: collision with root package name */
    public static final C0107c f2181b = new C0107c(Collections.emptyMap());

    /* renamed from: a  reason: collision with root package name */
    public final Map f2182a;

    public /* synthetic */ C0107c() {
        throw null;
    }

    public C0107c(Map map) {
        this.f2182a = map;
    }

    public final Object a(C0105b c0105b) {
        return this.f2182a.get(c0105b);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r5 != r6) goto L4
            return r0
        L4:
            r1 = 0
            if (r6 == 0) goto L56
            java.lang.Class<X2.c> r2 = X2.C0107c.class
            java.lang.Class r3 = r6.getClass()
            if (r2 == r3) goto L10
            goto L56
        L10:
            X2.c r6 = (X2.C0107c) r6
            java.util.Map r5 = r5.f2182a
            int r2 = r5.size()
            java.util.Map r3 = r6.f2182a
            int r3 = r3.size()
            if (r2 == r3) goto L21
            return r1
        L21:
            java.util.Set r5 = r5.entrySet()
            java.util.Iterator r5 = r5.iterator()
        L29:
            boolean r2 = r5.hasNext()
            if (r2 == 0) goto L55
            java.lang.Object r2 = r5.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getKey()
            java.util.Map r4 = r6.f2182a
            boolean r3 = r4.containsKey(r3)
            if (r3 != 0) goto L42
            return r1
        L42:
            java.lang.Object r3 = r2.getValue()
            java.lang.Object r2 = r2.getKey()
            java.lang.Object r2 = r4.get(r2)
            boolean r2 = O2.k.a(r3, r2)
            if (r2 != 0) goto L29
            return r1
        L55:
            return r0
        L56:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: X2.C0107c.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int i4 = 0;
        for (Map.Entry entry : this.f2182a.entrySet()) {
            i4 += Arrays.hashCode(new Object[]{entry.getKey(), entry.getValue()});
        }
        return i4;
    }

    public final String toString() {
        return this.f2182a.toString();
    }
}
