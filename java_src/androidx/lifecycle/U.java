package androidx.lifecycle;

import java.io.Closeable;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class U {

    /* renamed from: a  reason: collision with root package name */
    public final Map f3600a = new LinkedHashMap();

    public final void a() {
        for (N n4 : ((LinkedHashMap) this.f3600a).values()) {
            n4.f3582c = true;
            Map map = n4.f3580a;
            if (map != null) {
                synchronized (map) {
                    for (Object obj : ((HashMap) n4.f3580a).values()) {
                        N.a(obj);
                    }
                }
            }
            Set set = n4.f3581b;
            if (set != null) {
                synchronized (set) {
                    for (Closeable closeable : n4.f3581b) {
                        N.a(closeable);
                    }
                }
            }
            n4.b();
        }
        ((LinkedHashMap) this.f3600a).clear();
    }
}
