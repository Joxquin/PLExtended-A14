package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Pair;
/* loaded from: classes.dex */
public class s extends q {
    public static final boolean f(Iterable iterable, Object obj) {
        int i4;
        kotlin.jvm.internal.h.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        if (!(iterable instanceof List)) {
            Iterator it = iterable.iterator();
            int i5 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i4 = -1;
                    break;
                }
                Object next = it.next();
                if (i5 < 0) {
                    throw new ArithmeticException("Index overflow has happened.");
                }
                if (kotlin.jvm.internal.h.a(obj, next)) {
                    i4 = i5;
                    break;
                }
                i5++;
            }
        } else {
            i4 = ((List) iterable).indexOf(obj);
        }
        return i4 >= 0;
    }

    public static final Object g(Iterable iterable, final int i4) {
        kotlin.jvm.internal.h.e(iterable, "<this>");
        boolean z4 = iterable instanceof List;
        if (z4) {
            return ((List) iterable).get(i4);
        }
        m3.l lVar = new m3.l() { // from class: kotlin.collections.CollectionsKt___CollectionsKt$elementAt$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // m3.l
            public final Object invoke(Object obj) {
                ((Number) obj).intValue();
                throw new IndexOutOfBoundsException("Collection doesn't contain element at index " + i4 + '.');
            }
        };
        if (z4) {
            List list = (List) iterable;
            if (i4 < 0 || i4 > n.a(list)) {
                lVar.invoke(Integer.valueOf(i4));
                throw null;
            }
            return list.get(i4);
        } else if (i4 < 0) {
            lVar.invoke(Integer.valueOf(i4));
            throw null;
        } else {
            int i5 = 0;
            for (Object obj : iterable) {
                int i6 = i5 + 1;
                if (i4 == i5) {
                    return obj;
                }
                i5 = i6;
            }
            lVar.invoke(Integer.valueOf(i4));
            throw null;
        }
    }

    public static final Object h(List list) {
        kotlin.jvm.internal.h.e(list, "<this>");
        if (list.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        return list.get(0);
    }

    public static String i(Iterable iterable, CharSequence charSequence, CharSequence prefix, CharSequence postfix, m3.l lVar, int i4) {
        if ((i4 & 1) != 0) {
            charSequence = ", ";
        }
        if ((i4 & 2) != 0) {
            prefix = "";
        }
        if ((i4 & 4) != 0) {
            postfix = "";
        }
        int i5 = 0;
        int i6 = (i4 & 8) != 0 ? -1 : 0;
        String truncated = (i4 & 16) != 0 ? "..." : null;
        if ((i4 & 32) != 0) {
            lVar = null;
        }
        kotlin.jvm.internal.h.e(iterable, "<this>");
        kotlin.jvm.internal.h.e(prefix, "prefix");
        kotlin.jvm.internal.h.e(postfix, "postfix");
        kotlin.jvm.internal.h.e(truncated, "truncated");
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            i5++;
            if (i5 > 1) {
                sb.append(charSequence);
            }
            if (i6 >= 0 && i5 > i6) {
                break;
            } else if (lVar != null) {
                sb.append((CharSequence) lVar.invoke(next));
            } else {
                if (next != null ? next instanceof CharSequence : true) {
                    sb.append((CharSequence) next);
                } else if (next instanceof Character) {
                    sb.append(((Character) next).charValue());
                } else {
                    sb.append((CharSequence) String.valueOf(next));
                }
            }
        }
        if (i6 >= 0 && i5 > i6) {
            sb.append((CharSequence) truncated);
        }
        sb.append(postfix);
        String sb2 = sb.toString();
        kotlin.jvm.internal.h.d(sb2, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb2;
    }

    public static final void j(Iterable iterable, Collection collection) {
        kotlin.jvm.internal.h.e(iterable, "<this>");
        for (Object obj : iterable) {
            collection.add(obj);
        }
    }

    public static final List k(Iterable iterable) {
        List list;
        boolean z4 = iterable instanceof Collection;
        if (z4) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    return l(collection);
                }
                return n.b(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
            }
            return EmptyList.f11226d;
        }
        if (z4) {
            list = l((Collection) iterable);
        } else {
            ArrayList arrayList = new ArrayList();
            j(iterable, arrayList);
            list = arrayList;
        }
        int size2 = list.size();
        return size2 != 0 ? size2 != 1 ? list : n.b(list.get(0)) : EmptyList.f11226d;
    }

    public static final List l(Collection collection) {
        kotlin.jvm.internal.h.e(collection, "<this>");
        return new ArrayList(collection);
    }

    public static final Set m(Iterable iterable) {
        kotlin.jvm.internal.h.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        j(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static final Set n(Iterable iterable) {
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size != 0) {
            if (size != 1) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(w.a(collection.size()));
                j(iterable, linkedHashSet);
                return linkedHashSet;
            }
            Set singleton = Collections.singleton(((List) iterable).get(0));
            kotlin.jvm.internal.h.d(singleton, "singleton(element)");
            return singleton;
        }
        return EmptySet.f11228d;
    }

    public static final List o(Iterable iterable, Iterable iterable2) {
        kotlin.jvm.internal.h.e(iterable, "<this>");
        Iterator it = iterable.iterator();
        Iterator it2 = ((ArrayList) iterable2).iterator();
        ArrayList arrayList = new ArrayList(Math.min(o.d(iterable), o.d(iterable2)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(new Pair(it.next(), it2.next()));
        }
        return arrayList;
    }
}
