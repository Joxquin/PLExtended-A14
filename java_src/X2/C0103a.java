package X2;

import java.util.IdentityHashMap;
import java.util.Map;
/* renamed from: X2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0103a {

    /* renamed from: a  reason: collision with root package name */
    public C0107c f2177a;

    /* renamed from: b  reason: collision with root package name */
    public Map f2178b;

    public C0103a(C0107c c0107c) {
        this.f2177a = c0107c;
    }

    public final C0107c a() {
        if (this.f2178b != null) {
            for (Map.Entry entry : this.f2177a.f2182a.entrySet()) {
                if (!this.f2178b.containsKey(entry.getKey())) {
                    this.f2178b.put(entry.getKey(), entry.getValue());
                }
            }
            this.f2177a = new C0107c(this.f2178b);
            this.f2178b = null;
        }
        return this.f2177a;
    }

    public final void b(C0105b c0105b) {
        if (this.f2177a.f2182a.containsKey(c0105b)) {
            IdentityHashMap identityHashMap = new IdentityHashMap(this.f2177a.f2182a);
            identityHashMap.remove(c0105b);
            this.f2177a = new C0107c(identityHashMap);
        }
        Map map = this.f2178b;
        if (map != null) {
            ((IdentityHashMap) map).remove(c0105b);
        }
    }

    public final void c(C0105b c0105b, Object obj) {
        if (this.f2178b == null) {
            this.f2178b = new IdentityHashMap(1);
        }
        ((IdentityHashMap) this.f2178b).put(c0105b, obj);
    }
}
