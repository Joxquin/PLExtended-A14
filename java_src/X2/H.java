package X2;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes.dex */
public final class H {

    /* renamed from: c  reason: collision with root package name */
    public static final O2.f f2109c = new O2.f(String.valueOf(','));

    /* renamed from: d  reason: collision with root package name */
    public static final H f2110d = new H(C0138t.f2229a, false, new H(new C0137s(), true, new H()));

    /* renamed from: a  reason: collision with root package name */
    public final Map f2111a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f2112b;

    public H(InterfaceC0139u interfaceC0139u, boolean z4, H h4) {
        String a4 = interfaceC0139u.a();
        O2.m.b("Comma is currently not allowed in message encoding", !a4.contains(","));
        int size = h4.f2111a.size();
        LinkedHashMap linkedHashMap = new LinkedHashMap(h4.f2111a.containsKey(interfaceC0139u.a()) ? size : size + 1);
        for (G g4 : h4.f2111a.values()) {
            String a5 = g4.f2106a.a();
            if (!a5.equals(a4)) {
                linkedHashMap.put(a5, new G(g4.f2106a, g4.f2107b));
            }
        }
        linkedHashMap.put(a4, new G(interfaceC0139u, z4));
        Map unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        this.f2111a = unmodifiableMap;
        HashSet hashSet = new HashSet(unmodifiableMap.size());
        for (Map.Entry entry : unmodifiableMap.entrySet()) {
            if (((G) entry.getValue()).f2107b) {
                hashSet.add(entry.getKey());
            }
        }
        Set unmodifiableSet = Collections.unmodifiableSet(hashSet);
        O2.f fVar = f2109c;
        fVar.getClass();
        Iterator it = unmodifiableSet.iterator();
        StringBuilder sb = new StringBuilder();
        try {
            if (it.hasNext()) {
                Object next = it.next();
                Objects.requireNonNull(next);
                sb.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
                while (it.hasNext()) {
                    sb.append((CharSequence) fVar.f1512a);
                    Object next2 = it.next();
                    Objects.requireNonNull(next2);
                    sb.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
                }
            }
            this.f2112b = sb.toString().getBytes(Charset.forName("US-ASCII"));
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    public H() {
        this.f2111a = new LinkedHashMap(0);
        this.f2112b = new byte[0];
    }
}
