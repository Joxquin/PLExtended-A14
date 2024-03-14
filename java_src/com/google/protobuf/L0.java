package com.google.protobuf;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* loaded from: classes.dex */
public class L0 extends AbstractMap {

    /* renamed from: j  reason: collision with root package name */
    public static final /* synthetic */ int f8556j = 0;

    /* renamed from: d  reason: collision with root package name */
    public final int f8557d;

    /* renamed from: g  reason: collision with root package name */
    public boolean f8560g;

    /* renamed from: h  reason: collision with root package name */
    public volatile K0 f8561h;

    /* renamed from: e  reason: collision with root package name */
    public List f8558e = Collections.emptyList();

    /* renamed from: f  reason: collision with root package name */
    public Map f8559f = Collections.emptyMap();

    /* renamed from: i  reason: collision with root package name */
    public Map f8562i = Collections.emptyMap();

    public L0(int i4) {
        this.f8557d = i4;
    }

    public final int b(Comparable comparable) {
        int size = this.f8558e.size() - 1;
        if (size >= 0) {
            int compareTo = comparable.compareTo(((I0) this.f8558e.get(size)).f8534d);
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i4 = 0;
        while (i4 <= size) {
            int i5 = (i4 + size) / 2;
            int compareTo2 = comparable.compareTo(((I0) this.f8558e.get(i5)).f8534d);
            if (compareTo2 < 0) {
                size = i5 - 1;
            } else if (compareTo2 <= 0) {
                return i5;
            } else {
                i4 = i5 + 1;
            }
        }
        return -(i4 + 1);
    }

    public final void c() {
        if (this.f8560g) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        c();
        if (!this.f8558e.isEmpty()) {
            this.f8558e.clear();
        }
        if (this.f8559f.isEmpty()) {
            return;
        }
        this.f8559f.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return b(comparable) >= 0 || this.f8559f.containsKey(comparable);
    }

    public final Map.Entry d(int i4) {
        return (Map.Entry) this.f8558e.get(i4);
    }

    public final int e() {
        return this.f8558e.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f8561h == null) {
            this.f8561h = new K0(this);
        }
        return this.f8561h;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof L0) {
            L0 l02 = (L0) obj;
            int size = size();
            if (size != l02.size()) {
                return false;
            }
            int e4 = e();
            if (e4 != l02.e()) {
                return entrySet().equals(l02.entrySet());
            }
            for (int i4 = 0; i4 < e4; i4++) {
                if (!d(i4).equals(l02.d(i4))) {
                    return false;
                }
            }
            if (e4 != size) {
                return this.f8559f.equals(l02.f8559f);
            }
            return true;
        }
        return super.equals(obj);
    }

    public final Iterable f() {
        return this.f8559f.isEmpty() ? H0.f8533b : this.f8559f.entrySet();
    }

    public final SortedMap g() {
        c();
        if (this.f8559f.isEmpty() && !(this.f8559f instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f8559f = treeMap;
            this.f8562i = treeMap.descendingMap();
        }
        return (SortedMap) this.f8559f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int b4 = b(comparable);
        return b4 >= 0 ? ((I0) this.f8558e.get(b4)).f8535e : this.f8559f.get(comparable);
    }

    public void h() {
        if (this.f8560g) {
            return;
        }
        this.f8559f = this.f8559f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f8559f);
        this.f8562i = this.f8562i.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f8562i);
        this.f8560g = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int e4 = e();
        int i4 = 0;
        for (int i5 = 0; i5 < e4; i5++) {
            i4 += ((I0) this.f8558e.get(i5)).hashCode();
        }
        return this.f8559f.size() > 0 ? i4 + this.f8559f.hashCode() : i4;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: i */
    public final Object put(Comparable comparable, Object obj) {
        c();
        int b4 = b(comparable);
        if (b4 >= 0) {
            return ((I0) this.f8558e.get(b4)).setValue(obj);
        }
        c();
        if (this.f8558e.isEmpty() && !(this.f8558e instanceof ArrayList)) {
            this.f8558e = new ArrayList(this.f8557d);
        }
        int i4 = -(b4 + 1);
        if (i4 >= this.f8557d) {
            return g().put(comparable, obj);
        }
        int size = this.f8558e.size();
        int i5 = this.f8557d;
        if (size == i5) {
            I0 i02 = (I0) this.f8558e.remove(i5 - 1);
            g().put(i02.f8534d, i02.f8535e);
        }
        this.f8558e.add(i4, new I0(this, comparable, obj));
        return null;
    }

    public final Object j(int i4) {
        c();
        Object obj = ((I0) this.f8558e.remove(i4)).f8535e;
        if (!this.f8559f.isEmpty()) {
            Iterator it = g().entrySet().iterator();
            List list = this.f8558e;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new I0(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        c();
        Comparable comparable = (Comparable) obj;
        int b4 = b(comparable);
        if (b4 >= 0) {
            return j(b4);
        }
        if (this.f8559f.isEmpty()) {
            return null;
        }
        return this.f8559f.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f8559f.size() + this.f8558e.size();
    }
}
