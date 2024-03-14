package X2;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class M {

    /* renamed from: d  reason: collision with root package name */
    public static final M f2140d;

    /* renamed from: a  reason: collision with root package name */
    public final ConcurrentNavigableMap f2141a;

    /* renamed from: b  reason: collision with root package name */
    public final ConcurrentMap f2142b;

    /* renamed from: c  reason: collision with root package name */
    public final ConcurrentMap f2143c;

    static {
        Logger.getLogger(M.class.getName());
        f2140d = new M();
    }

    public M() {
        new ConcurrentSkipListMap();
        this.f2141a = new ConcurrentSkipListMap();
        this.f2142b = new ConcurrentHashMap();
        this.f2143c = new ConcurrentHashMap();
        new ConcurrentHashMap();
    }

    public static void a(Map map, P p4) {
        P p5 = (P) map.put(Long.valueOf(p4.e().f2162c), p4);
    }

    public static void b(Map map, P p4) {
        P p5 = (P) map.remove(Long.valueOf(p4.e().f2162c));
    }
}
