package kotlin.collections.builders;

import f3.b;
import f3.c;
import f3.d;
import f3.g;
import f3.h;
import f3.i;
import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes.dex */
public final class MapBuilder implements Map, Serializable {

    /* renamed from: d  reason: collision with root package name */
    public static final c f11229d = new c();
    private g entriesView;
    private int[] hashArray;
    private int hashShift;
    private boolean isReadOnly;
    private Object[] keysArray;
    private h keysView;
    private int length;
    private int maxProbeDistance;
    private int[] presenceArray;
    private int size;
    private Object[] valuesArray;
    private i valuesView;

    public MapBuilder(int i4) {
        Object[] a4 = b.a(i4);
        int[] iArr = new int[i4];
        int highestOneBit = Integer.highestOneBit((i4 < 1 ? 1 : i4) * 3);
        this.keysArray = a4;
        this.valuesArray = null;
        this.presenceArray = iArr;
        this.hashArray = new int[highestOneBit];
        this.maxProbeDistance = 2;
        this.length = 0;
        this.hashShift = Integer.numberOfLeadingZeros(highestOneBit) + 1;
    }

    private final Object writeReplace() {
        if (this.isReadOnly) {
            return new SerializedMap(this);
        }
        throw new NotSerializableException("The map cannot be serialized while it is being built.");
    }

    @Override // java.util.Map
    public final void clear() {
        i();
        q3.b it = new q3.c(0, this.length - 1).iterator();
        while (it.f12058f) {
            int a4 = it.a();
            int[] iArr = this.presenceArray;
            int i4 = iArr[a4];
            if (i4 >= 0) {
                this.hashArray[i4] = 0;
                iArr[a4] = -1;
            }
        }
        b.b(0, this.length, this.keysArray);
        Object[] objArr = this.valuesArray;
        if (objArr != null) {
            b.b(0, this.length, objArr);
        }
        this.size = 0;
        this.length = 0;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return m(obj) >= 0;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return n(obj) >= 0;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        g gVar = this.entriesView;
        if (gVar == null) {
            g gVar2 = new g(this);
            this.entriesView = gVar2;
            return gVar2;
        }
        return gVar;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (this.size == map.size() && j(map.entrySet())) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int f(Object obj) {
        i();
        while (true) {
            int o4 = o(obj);
            int i4 = this.maxProbeDistance * 2;
            int length = this.hashArray.length / 2;
            if (i4 > length) {
                i4 = length;
            }
            int i5 = 0;
            while (true) {
                int[] iArr = this.hashArray;
                int i6 = iArr[o4];
                if (i6 <= 0) {
                    int i7 = this.length;
                    Object[] objArr = this.keysArray;
                    if (i7 < objArr.length) {
                        int i8 = i7 + 1;
                        this.length = i8;
                        objArr[i7] = obj;
                        this.presenceArray[i7] = o4;
                        iArr[o4] = i8;
                        this.size++;
                        if (i5 > this.maxProbeDistance) {
                            this.maxProbeDistance = i5;
                        }
                        return i7;
                    }
                    l(1);
                } else if (kotlin.jvm.internal.h.a(this.keysArray[i6 - 1], obj)) {
                    return -i6;
                } else {
                    i5++;
                    if (i5 > i4) {
                        q(this.hashArray.length * 2);
                        break;
                    }
                    o4 = o4 == 0 ? this.hashArray.length - 1 : o4 - 1;
                }
            }
        }
    }

    public final Object[] g() {
        Object[] objArr = this.valuesArray;
        if (objArr != null) {
            return objArr;
        }
        Object[] a4 = b.a(this.keysArray.length);
        this.valuesArray = a4;
        return a4;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int m4 = m(obj);
        if (m4 < 0) {
            return null;
        }
        Object[] objArr = this.valuesArray;
        kotlin.jvm.internal.h.b(objArr);
        return objArr[m4];
    }

    public final void h() {
        i();
        this.isReadOnly = true;
    }

    @Override // java.util.Map
    public final int hashCode() {
        d dVar = new d(this, 0);
        int i4 = 0;
        while (dVar.hasNext()) {
            int i5 = dVar.f9355e;
            MapBuilder mapBuilder = dVar.f9354d;
            if (i5 >= mapBuilder.length) {
                throw new NoSuchElementException();
            }
            dVar.f9355e = i5 + 1;
            dVar.f9356f = i5;
            Object obj = mapBuilder.keysArray[i5];
            int hashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = mapBuilder.valuesArray;
            kotlin.jvm.internal.h.b(objArr);
            Object obj2 = objArr[dVar.f9356f];
            int hashCode2 = obj2 != null ? obj2.hashCode() : 0;
            dVar.a();
            i4 += hashCode ^ hashCode2;
        }
        return i4;
    }

    public final void i() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.size == 0;
    }

    public final boolean j(Collection m4) {
        kotlin.jvm.internal.h.e(m4, "m");
        for (Object obj : m4) {
            if (obj != null) {
                try {
                    if (!k((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean k(Map.Entry entry) {
        kotlin.jvm.internal.h.e(entry, "entry");
        int m4 = m(entry.getKey());
        if (m4 < 0) {
            return false;
        }
        Object[] objArr = this.valuesArray;
        kotlin.jvm.internal.h.b(objArr);
        return kotlin.jvm.internal.h.a(objArr[m4], entry.getValue());
    }

    @Override // java.util.Map
    public final Set keySet() {
        h hVar = this.keysView;
        if (hVar == null) {
            h hVar2 = new h(this);
            this.keysView = hVar2;
            return hVar2;
        }
        return hVar;
    }

    public final void l(int i4) {
        Object[] objArr;
        int i5 = this.length;
        int i6 = i4 + i5;
        if (i6 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr2 = this.keysArray;
        if (i6 <= objArr2.length) {
            if ((i5 + i6) - this.size > objArr2.length) {
                q(this.hashArray.length);
                return;
            }
            return;
        }
        int length = (objArr2.length * 3) / 2;
        if (i6 <= length) {
            i6 = length;
        }
        Object[] copyOf = Arrays.copyOf(objArr2, i6);
        kotlin.jvm.internal.h.d(copyOf, "copyOf(this, newSize)");
        this.keysArray = copyOf;
        Object[] objArr3 = this.valuesArray;
        if (objArr3 != null) {
            objArr = Arrays.copyOf(objArr3, i6);
            kotlin.jvm.internal.h.d(objArr, "copyOf(this, newSize)");
        } else {
            objArr = null;
        }
        this.valuesArray = objArr;
        int[] copyOf2 = Arrays.copyOf(this.presenceArray, i6);
        kotlin.jvm.internal.h.d(copyOf2, "copyOf(this, newSize)");
        this.presenceArray = copyOf2;
        if (i6 < 1) {
            i6 = 1;
        }
        int highestOneBit = Integer.highestOneBit(i6 * 3);
        if (highestOneBit > this.hashArray.length) {
            q(highestOneBit);
        }
    }

    public final int m(Object obj) {
        int o4 = o(obj);
        int i4 = this.maxProbeDistance;
        while (true) {
            int i5 = this.hashArray[o4];
            if (i5 == 0) {
                return -1;
            }
            if (i5 > 0) {
                int i6 = i5 - 1;
                if (kotlin.jvm.internal.h.a(this.keysArray[i6], obj)) {
                    return i6;
                }
            }
            i4--;
            if (i4 < 0) {
                return -1;
            }
            o4 = o4 == 0 ? this.hashArray.length - 1 : o4 - 1;
        }
    }

    public final int n(Object obj) {
        int i4 = this.length;
        while (true) {
            i4--;
            if (i4 < 0) {
                return -1;
            }
            if (this.presenceArray[i4] >= 0) {
                Object[] objArr = this.valuesArray;
                kotlin.jvm.internal.h.b(objArr);
                if (kotlin.jvm.internal.h.a(objArr[i4], obj)) {
                    return i4;
                }
            }
        }
    }

    public final int o(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * (-1640531527)) >>> this.hashShift;
    }

    public final boolean p() {
        return this.isReadOnly;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        i();
        int f4 = f(obj);
        Object[] g4 = g();
        if (f4 >= 0) {
            g4[f4] = obj2;
            return null;
        }
        int i4 = (-f4) - 1;
        Object obj3 = g4[i4];
        g4[i4] = obj2;
        return obj3;
    }

    @Override // java.util.Map
    public final void putAll(Map from) {
        kotlin.jvm.internal.h.e(from, "from");
        i();
        Set<Map.Entry> entrySet = from.entrySet();
        if (entrySet.isEmpty()) {
            return;
        }
        l(entrySet.size());
        for (Map.Entry entry : entrySet) {
            int f4 = f(entry.getKey());
            Object[] g4 = g();
            if (f4 >= 0) {
                g4[f4] = entry.getValue();
            } else {
                int i4 = (-f4) - 1;
                if (!kotlin.jvm.internal.h.a(entry.getValue(), g4[i4])) {
                    g4[i4] = entry.getValue();
                }
            }
        }
    }

    public final void q(int i4) {
        boolean z4;
        int i5;
        if (this.length > this.size) {
            Object[] objArr = this.valuesArray;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                i5 = this.length;
                if (i6 >= i5) {
                    break;
                }
                if (this.presenceArray[i6] >= 0) {
                    Object[] objArr2 = this.keysArray;
                    objArr2[i7] = objArr2[i6];
                    if (objArr != null) {
                        objArr[i7] = objArr[i6];
                    }
                    i7++;
                }
                i6++;
            }
            b.b(i7, i5, this.keysArray);
            if (objArr != null) {
                b.b(i7, this.length, objArr);
            }
            this.length = i7;
        }
        int[] iArr = this.hashArray;
        if (i4 != iArr.length) {
            this.hashArray = new int[i4];
            this.hashShift = Integer.numberOfLeadingZeros(i4) + 1;
        } else {
            int length = iArr.length;
            kotlin.jvm.internal.h.e(iArr, "<this>");
            Arrays.fill(iArr, 0, length, 0);
        }
        int i8 = 0;
        while (i8 < this.length) {
            int i9 = i8 + 1;
            int o4 = o(this.keysArray[i8]);
            int i10 = this.maxProbeDistance;
            while (true) {
                int[] iArr2 = this.hashArray;
                if (iArr2[o4] == 0) {
                    iArr2[o4] = i9;
                    this.presenceArray[i8] = o4;
                    z4 = true;
                    break;
                }
                i10--;
                if (i10 < 0) {
                    z4 = false;
                    break;
                }
                o4 = o4 == 0 ? iArr2.length - 1 : o4 - 1;
            }
            if (!z4) {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            i8 = i9;
        }
    }

    public final boolean r(Map.Entry entry) {
        kotlin.jvm.internal.h.e(entry, "entry");
        i();
        int m4 = m(entry.getKey());
        if (m4 < 0) {
            return false;
        }
        Object[] objArr = this.valuesArray;
        kotlin.jvm.internal.h.b(objArr);
        if (kotlin.jvm.internal.h.a(objArr[m4], entry.getValue())) {
            s(m4);
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        i();
        int m4 = m(obj);
        if (m4 < 0) {
            m4 = -1;
        } else {
            s(m4);
        }
        if (m4 < 0) {
            return null;
        }
        Object[] objArr = this.valuesArray;
        kotlin.jvm.internal.h.b(objArr);
        Object obj2 = objArr[m4];
        objArr[m4] = null;
        return obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x005f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s(int r12) {
        /*
            r11 = this;
            java.lang.Object[] r0 = r11.keysArray
            java.lang.String r1 = "<this>"
            kotlin.jvm.internal.h.e(r0, r1)
            r1 = 0
            r0[r12] = r1
            int[] r0 = r11.presenceArray
            r0 = r0[r12]
            int r1 = r11.maxProbeDistance
            int r1 = r1 * 2
            int[] r2 = r11.hashArray
            int r2 = r2.length
            int r2 = r2 / 2
            if (r1 <= r2) goto L1a
            r1 = r2
        L1a:
            r2 = 0
            r3 = r1
            r4 = r2
            r1 = r0
        L1e:
            int r5 = r0 + (-1)
            r6 = -1
            if (r0 != 0) goto L28
            int[] r0 = r11.hashArray
            int r0 = r0.length
            int r0 = r0 + r6
            goto L29
        L28:
            r0 = r5
        L29:
            int r4 = r4 + 1
            int r5 = r11.maxProbeDistance
            if (r4 <= r5) goto L34
            int[] r0 = r11.hashArray
            r0[r1] = r2
            goto L63
        L34:
            int[] r5 = r11.hashArray
            r7 = r5[r0]
            if (r7 != 0) goto L3d
            r5[r1] = r2
            goto L63
        L3d:
            if (r7 >= 0) goto L42
            r5[r1] = r6
            goto L5a
        L42:
            java.lang.Object[] r5 = r11.keysArray
            int r8 = r7 + (-1)
            r5 = r5[r8]
            int r5 = r11.o(r5)
            int r5 = r5 - r0
            int[] r9 = r11.hashArray
            int r10 = r9.length
            int r10 = r10 + r6
            r5 = r5 & r10
            if (r5 < r4) goto L5c
            r9[r1] = r7
            int[] r4 = r11.presenceArray
            r4[r8] = r1
        L5a:
            r1 = r0
            r4 = r2
        L5c:
            int r3 = r3 + r6
            if (r3 >= 0) goto L1e
            int[] r0 = r11.hashArray
            r0[r1] = r6
        L63:
            int[] r0 = r11.presenceArray
            r0[r12] = r6
            int r12 = r11.size
            int r12 = r12 + r6
            r11.size = r12
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.builders.MapBuilder.s(int):void");
    }

    @Override // java.util.Map
    public final int size() {
        return this.size;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.size * 3) + 2);
        sb.append("{");
        int i4 = 0;
        d dVar = new d(this, 0);
        while (dVar.hasNext()) {
            if (i4 > 0) {
                sb.append(", ");
            }
            int i5 = dVar.f9355e;
            MapBuilder mapBuilder = dVar.f9354d;
            if (i5 >= mapBuilder.length) {
                throw new NoSuchElementException();
            }
            dVar.f9355e = i5 + 1;
            dVar.f9356f = i5;
            Object obj = mapBuilder.keysArray[i5];
            if (kotlin.jvm.internal.h.a(obj, mapBuilder)) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = mapBuilder.valuesArray;
            kotlin.jvm.internal.h.b(objArr);
            Object obj2 = objArr[dVar.f9356f];
            if (kotlin.jvm.internal.h.a(obj2, mapBuilder)) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            dVar.a();
            i4++;
        }
        sb.append("}");
        String sb2 = sb.toString();
        kotlin.jvm.internal.h.d(sb2, "sb.toString()");
        return sb2;
    }

    @Override // java.util.Map
    public final Collection values() {
        i iVar = this.valuesView;
        if (iVar == null) {
            i iVar2 = new i(this);
            this.valuesView = iVar2;
            return iVar2;
        }
        return iVar;
    }
}
