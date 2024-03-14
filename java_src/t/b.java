package T;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.EmptySet;
import kotlin.collections.t;
import kotlin.collections.x;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    public static final b f1685c = new b(EmptySet.f11228d, x.c());

    /* renamed from: a  reason: collision with root package name */
    public final Set f1686a;

    /* renamed from: b  reason: collision with root package name */
    public final Map f1687b;

    public b(EmptySet flags, Map map) {
        h.e(flags, "flags");
        this.f1686a = flags;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ((EmptySet) map.entrySet()).getClass();
        t tVar = t.f11244d;
        this.f1687b = linkedHashMap;
    }
}
