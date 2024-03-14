package kotlin.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.n;
import kotlin.collections.x;
import m3.m;
import m3.o;
import m3.p;
import m3.q;
import m3.r;
import m3.s;
import m3.t;
import m3.u;
import m3.v;
import m3.w;
/* loaded from: classes.dex */
public final class d implements r3.c, c {

    /* renamed from: e  reason: collision with root package name */
    public static final Map f11260e;

    /* renamed from: f  reason: collision with root package name */
    public static final Map f11261f;

    /* renamed from: d  reason: collision with root package name */
    public final Class f11262d;

    static {
        List c4 = n.c(m3.a.class, m3.l.class, p.class, q.class, r.class, s.class, t.class, u.class, v.class, w.class, m3.b.class, m3.c.class, m3.d.class, m3.e.class, m3.f.class, m3.g.class, m3.h.class, m3.i.class, m3.j.class, m3.k.class, m.class, m3.n.class, o.class);
        ArrayList arrayList = new ArrayList(kotlin.collections.o.d(c4));
        int i4 = 0;
        for (Object obj : c4) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                throw new ArithmeticException("Index overflow has happened.");
            }
            arrayList.add(new Pair((Class) obj, Integer.valueOf(i4)));
            i4 = i5;
        }
        f11260e = x.f(arrayList);
        HashMap hashMap = new HashMap();
        hashMap.put("boolean", "kotlin.Boolean");
        hashMap.put("char", "kotlin.Char");
        hashMap.put("byte", "kotlin.Byte");
        hashMap.put("short", "kotlin.Short");
        hashMap.put("int", "kotlin.Int");
        hashMap.put("float", "kotlin.Float");
        hashMap.put("long", "kotlin.Long");
        hashMap.put("double", "kotlin.Double");
        HashMap hashMap2 = new HashMap();
        hashMap2.put("java.lang.Boolean", "kotlin.Boolean");
        hashMap2.put("java.lang.Character", "kotlin.Char");
        hashMap2.put("java.lang.Byte", "kotlin.Byte");
        hashMap2.put("java.lang.Short", "kotlin.Short");
        hashMap2.put("java.lang.Integer", "kotlin.Int");
        hashMap2.put("java.lang.Float", "kotlin.Float");
        hashMap2.put("java.lang.Long", "kotlin.Long");
        hashMap2.put("java.lang.Double", "kotlin.Double");
        HashMap hashMap3 = new HashMap();
        hashMap3.put("java.lang.Object", "kotlin.Any");
        hashMap3.put("java.lang.String", "kotlin.String");
        hashMap3.put("java.lang.CharSequence", "kotlin.CharSequence");
        hashMap3.put("java.lang.Throwable", "kotlin.Throwable");
        hashMap3.put("java.lang.Cloneable", "kotlin.Cloneable");
        hashMap3.put("java.lang.Number", "kotlin.Number");
        hashMap3.put("java.lang.Comparable", "kotlin.Comparable");
        hashMap3.put("java.lang.Enum", "kotlin.Enum");
        hashMap3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        hashMap3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        hashMap3.put("java.util.Iterator", "kotlin.collections.Iterator");
        hashMap3.put("java.util.Collection", "kotlin.collections.Collection");
        hashMap3.put("java.util.List", "kotlin.collections.List");
        hashMap3.put("java.util.Set", "kotlin.collections.Set");
        hashMap3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        hashMap3.put("java.util.Map", "kotlin.collections.Map");
        hashMap3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        hashMap3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        hashMap3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        hashMap3.putAll(hashMap);
        hashMap3.putAll(hashMap2);
        Collection<String> values = hashMap.values();
        h.d(values, "primitiveFqNames.values");
        for (String kotlinName : values) {
            StringBuilder sb = new StringBuilder("kotlin.jvm.internal.");
            h.d(kotlinName, "kotlinName");
            sb.append(s3.g.f(kotlinName));
            sb.append("CompanionObject");
            Pair pair = new Pair(sb.toString(), kotlinName.concat(".Companion"));
            hashMap3.put(pair.c(), pair.d());
        }
        for (Map.Entry entry : f11260e.entrySet()) {
            int intValue = ((Number) entry.getValue()).intValue();
            String name = ((Class) entry.getKey()).getName();
            hashMap3.put(name, "kotlin.Function" + intValue);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.collections.w.a(hashMap3.size()));
        for (Map.Entry entry2 : hashMap3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), s3.g.f((String) entry2.getValue()));
        }
        f11261f = linkedHashMap;
    }

    public d(Class jClass) {
        h.e(jClass, "jClass");
        this.f11262d = jClass;
    }

    @Override // kotlin.jvm.internal.c
    public final Class a() {
        return this.f11262d;
    }

    public final String b() {
        Class jClass = this.f11262d;
        h.e(jClass, "jClass");
        String str = null;
        if (jClass.isAnonymousClass()) {
            return null;
        }
        if (!jClass.isLocalClass()) {
            boolean isArray = jClass.isArray();
            Map map = f11261f;
            if (!isArray) {
                String str2 = (String) ((LinkedHashMap) map).get(jClass.getName());
                return str2 == null ? jClass.getSimpleName() : str2;
            }
            Class<?> componentType = jClass.getComponentType();
            if (componentType.isPrimitive()) {
                String str3 = (String) ((LinkedHashMap) map).get(componentType.getName());
                if (str3 != null) {
                    str = str3.concat("Array");
                }
            }
            return str == null ? "Array" : str;
        }
        String simpleName = jClass.getSimpleName();
        Method enclosingMethod = jClass.getEnclosingMethod();
        if (enclosingMethod != null) {
            return s3.g.e(simpleName, enclosingMethod.getName() + '$');
        }
        Constructor<?> enclosingConstructor = jClass.getEnclosingConstructor();
        if (enclosingConstructor != null) {
            return s3.g.e(simpleName, enclosingConstructor.getName() + '$');
        }
        int indexOf = simpleName.indexOf(36, 0);
        if (indexOf == -1) {
            return simpleName;
        }
        String substring = simpleName.substring(indexOf + 1, simpleName.length());
        h.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof d) && h.a(l3.a.a(this), l3.a.a((r3.c) obj));
    }

    public final int hashCode() {
        return l3.a.a(this).hashCode();
    }

    public final String toString() {
        return this.f11262d.toString() + " (Kotlin reflection is not available)";
    }
}
