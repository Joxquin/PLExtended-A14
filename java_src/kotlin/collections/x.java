package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Pair;
/* loaded from: classes.dex */
public class x extends w {
    public static final Map c() {
        EmptyMap emptyMap = EmptyMap.f11227d;
        kotlin.jvm.internal.h.c(emptyMap, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return emptyMap;
    }

    public static final Object d(Map map, Object obj) {
        if (map instanceof v) {
            return ((v) map).a();
        }
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return obj2;
        }
        throw new NoSuchElementException("Key " + obj + " is missing in the map.");
    }

    public static final Map e(Pair... pairArr) {
        if (pairArr.length > 0) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(w.a(pairArr.length));
            for (Pair pair : pairArr) {
                linkedHashMap.put(pair.a(), pair.b());
            }
            return linkedHashMap;
        }
        return c();
    }

    public static final Map f(Iterable iterable) {
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size != 0) {
            if (size != 1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(w.a(collection.size()));
                g(iterable, linkedHashMap);
                return linkedHashMap;
            }
            Pair pair = (Pair) ((List) iterable).get(0);
            kotlin.jvm.internal.h.e(pair, "pair");
            Map singletonMap = Collections.singletonMap(pair.c(), pair.d());
            kotlin.jvm.internal.h.d(singletonMap, "singletonMap(pair.first, pair.second)");
            return singletonMap;
        }
        return c();
    }

    public static final void g(Iterable iterable, Map map) {
        Iterator it = ((ArrayList) iterable).iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            map.put(pair.a(), pair.b());
        }
    }
}
