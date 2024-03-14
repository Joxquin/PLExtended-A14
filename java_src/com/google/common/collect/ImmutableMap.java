package com.google.common.collect;

import j.C1080K;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
/* loaded from: classes.dex */
public abstract class ImmutableMap implements Map, Serializable {

    /* renamed from: d  reason: collision with root package name */
    public transient ImmutableSet f8431d;

    /* renamed from: e  reason: collision with root package name */
    public transient ImmutableSet f8432e;

    /* renamed from: f  reason: collision with root package name */
    public transient ImmutableCollection f8433f;

    /* loaded from: classes.dex */
    class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final Object keys;
        private final Object values;

        public SerializedForm(ImmutableMap immutableMap) {
            Object[] objArr = new Object[immutableMap.size()];
            Object[] objArr2 = new Object[immutableMap.size()];
            ImmutableSet immutableSet = immutableMap.f8431d;
            if (immutableSet == null) {
                immutableSet = immutableMap.c();
                immutableMap.f8431d = immutableSet;
            }
            h it = immutableSet.iterator();
            int i4 = 0;
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                objArr[i4] = entry.getKey();
                objArr2[i4] = entry.getValue();
                i4++;
            }
            this.keys = objArr;
            this.values = objArr2;
        }

        public final Object readResolve() {
            Object obj = this.keys;
            if (obj instanceof ImmutableSet) {
                ImmutableSet immutableSet = (ImmutableSet) obj;
                e eVar = new e(immutableSet.size());
                h it = immutableSet.iterator();
                h it2 = ((ImmutableCollection) this.values).iterator();
                while (it.hasNext()) {
                    eVar.c(it.next(), it2.next());
                }
                return eVar.a();
            }
            Object[] objArr = (Object[]) obj;
            Object[] objArr2 = (Object[]) this.values;
            e eVar2 = new e(objArr.length);
            for (int i4 = 0; i4 < objArr.length; i4++) {
                eVar2.c(objArr[i4], objArr2[i4]);
            }
            return eVar2.a();
        }
    }

    public static ImmutableMap b(Map map) {
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            ImmutableMap immutableMap = (ImmutableMap) map;
            immutableMap.f();
            return immutableMap;
        }
        Set<Map.Entry> entrySet = ((HashMap) map).entrySet();
        boolean z4 = entrySet instanceof Collection;
        e eVar = new e(z4 ? entrySet.size() : 4);
        if (z4) {
            eVar.b(entrySet.size() + eVar.f8467b);
        }
        for (Map.Entry entry : entrySet) {
            eVar.c(entry.getKey(), entry.getValue());
        }
        return eVar.a();
    }

    public static ImmutableMap g() {
        return RegularImmutableMap.f8439j;
    }

    public abstract ImmutableSet c();

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        ImmutableCollection immutableCollection = this.f8433f;
        if (immutableCollection == null) {
            immutableCollection = e();
            this.f8433f = immutableCollection;
        }
        return immutableCollection.contains(obj);
    }

    public abstract ImmutableSet d();

    public abstract ImmutableCollection e();

    @Override // java.util.Map
    public final Set entrySet() {
        ImmutableSet immutableSet = this.f8431d;
        if (immutableSet == null) {
            ImmutableSet c4 = c();
            this.f8431d = c4;
            return c4;
        }
        return immutableSet;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public abstract void f();

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        ImmutableSet immutableSet = this.f8431d;
        if (immutableSet == null) {
            immutableSet = c();
            this.f8431d = immutableSet;
        }
        return g.a(immutableSet);
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final Set keySet() {
        ImmutableSet immutableSet = this.f8432e;
        if (immutableSet == null) {
            ImmutableSet d4 = d();
            this.f8432e = d4;
            return d4;
        }
        return immutableSet;
    }

    @Override // java.util.Map
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        if (size >= 0) {
            StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
            sb.append('{');
            boolean z4 = true;
            for (Map.Entry entry : entrySet()) {
                if (!z4) {
                    sb.append(", ");
                }
                sb.append(entry.getKey());
                sb.append('=');
                sb.append(entry.getValue());
                z4 = false;
            }
            sb.append('}');
            return sb.toString();
        }
        throw new IllegalArgumentException(C1080K.a("size cannot be negative but was: ", size));
    }

    @Override // java.util.Map
    public final Collection values() {
        ImmutableCollection immutableCollection = this.f8433f;
        if (immutableCollection == null) {
            ImmutableCollection e4 = e();
            this.f8433f = e4;
            return e4;
        }
        return immutableCollection;
    }

    public Object writeReplace() {
        return new SerializedForm(this);
    }
}
