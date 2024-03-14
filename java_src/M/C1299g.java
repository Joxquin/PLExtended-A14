package m;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: m.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1299g implements Iterable {

    /* renamed from: d  reason: collision with root package name */
    public C1295c f11578d;

    /* renamed from: e  reason: collision with root package name */
    public C1295c f11579e;

    /* renamed from: f  reason: collision with root package name */
    public final WeakHashMap f11580f = new WeakHashMap();

    /* renamed from: g  reason: collision with root package name */
    public int f11581g = 0;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
        if (r1.hasNext() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
        if (((m.AbstractC1297e) r6).hasNext() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r6 != r5) goto L4
            return r0
        L4:
            boolean r1 = r6 instanceof m.C1299g
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            m.g r6 = (m.C1299g) r6
            int r1 = r5.f11581g
            int r3 = r6.f11581g
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r5 = r5.iterator()
            java.util.Iterator r6 = r6.iterator()
        L1b:
            r1 = r5
            m.e r1 = (m.AbstractC1297e) r1
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L44
            r3 = r6
            m.e r3 = (m.AbstractC1297e) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            java.lang.Object r1 = r1.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r3 = r3.next()
            if (r1 != 0) goto L3b
            if (r3 != 0) goto L43
        L3b:
            if (r1 == 0) goto L1b
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r5 = r1.hasNext()
            if (r5 != 0) goto L53
            m.e r6 = (m.AbstractC1297e) r6
            boolean r5 = r6.hasNext()
            if (r5 != 0) goto L53
            goto L54
        L53:
            r0 = r2
        L54:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: m.C1299g.equals(java.lang.Object):boolean");
    }

    public C1295c h(Object obj) {
        C1295c c1295c = this.f11578d;
        while (c1295c != null && !c1295c.f11569d.equals(obj)) {
            c1295c = c1295c.f11571f;
        }
        return c1295c;
    }

    public final int hashCode() {
        Iterator it = iterator();
        int i4 = 0;
        while (true) {
            AbstractC1297e abstractC1297e = (AbstractC1297e) it;
            if (!abstractC1297e.hasNext()) {
                return i4;
            }
            i4 += ((Map.Entry) abstractC1297e.next()).hashCode();
        }
    }

    public Object i(Object obj) {
        C1295c h4 = h(obj);
        if (h4 == null) {
            return null;
        }
        this.f11581g--;
        if (!this.f11580f.isEmpty()) {
            for (AbstractC1298f abstractC1298f : this.f11580f.keySet()) {
                abstractC1298f.a(h4);
            }
        }
        C1295c c1295c = h4.f11572g;
        if (c1295c != null) {
            c1295c.f11571f = h4.f11571f;
        } else {
            this.f11578d = h4.f11571f;
        }
        C1295c c1295c2 = h4.f11571f;
        if (c1295c2 != null) {
            c1295c2.f11572g = c1295c;
        } else {
            this.f11579e = c1295c;
        }
        h4.f11571f = null;
        h4.f11572g = null;
        return h4.f11570e;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        C1294b c1294b = new C1294b(this.f11578d, this.f11579e, 0);
        this.f11580f.put(c1294b, Boolean.FALSE);
        return c1294b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            AbstractC1297e abstractC1297e = (AbstractC1297e) it;
            if (!abstractC1297e.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) abstractC1297e.next()).toString());
            if (abstractC1297e.hasNext()) {
                sb.append(", ");
            }
        }
    }
}
