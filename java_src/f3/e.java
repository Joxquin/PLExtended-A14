package f3;

import java.util.Map;
import kotlin.collections.builders.MapBuilder;
/* loaded from: classes.dex */
public final class e implements Map.Entry {

    /* renamed from: d  reason: collision with root package name */
    public final MapBuilder f9352d;

    /* renamed from: e  reason: collision with root package name */
    public final int f9353e;

    public e(MapBuilder map, int i4) {
        kotlin.jvm.internal.h.e(map, "map");
        this.f9352d = map;
        this.f9353e = i4;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (kotlin.jvm.internal.h.a(entry.getKey(), getKey()) && kotlin.jvm.internal.h.a(entry.getValue(), getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        Object[] objArr;
        objArr = this.f9352d.keysArray;
        return objArr[this.f9353e];
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        Object[] objArr;
        objArr = this.f9352d.valuesArray;
        kotlin.jvm.internal.h.b(objArr);
        return objArr[this.f9353e];
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object key = getKey();
        int hashCode = key != null ? key.hashCode() : 0;
        Object value = getValue();
        return hashCode ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f9352d.i();
        Object[] g4 = this.f9352d.g();
        int i4 = this.f9353e;
        Object obj2 = g4[i4];
        g4[i4] = obj;
        return obj2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getKey());
        sb.append('=');
        sb.append(getValue());
        return sb.toString();
    }
}
