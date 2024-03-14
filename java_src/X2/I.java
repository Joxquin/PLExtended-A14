package X2;

import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class I {

    /* renamed from: d  reason: collision with root package name */
    public static final C0105b f2113d = new C0105b("io.grpc.EquivalentAddressGroup.authorityOverride");

    /* renamed from: a  reason: collision with root package name */
    public final List f2114a;

    /* renamed from: b  reason: collision with root package name */
    public final C0107c f2115b;

    /* renamed from: c  reason: collision with root package name */
    public final int f2116c;

    public I(List list, C0107c c0107c) {
        O2.m.b("addrs is empty", !list.isEmpty());
        List unmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        this.f2114a = unmodifiableList;
        O2.m.h(c0107c, "attrs");
        this.f2115b = c0107c;
        this.f2116c = unmodifiableList.hashCode();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof I) {
            I i4 = (I) obj;
            List list = this.f2114a;
            if (list.size() != i4.f2114a.size()) {
                return false;
            }
            for (int i5 = 0; i5 < list.size(); i5++) {
                if (!((SocketAddress) list.get(i5)).equals(i4.f2114a.get(i5))) {
                    return false;
                }
            }
            return this.f2115b.equals(i4.f2115b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2116c;
    }

    public final String toString() {
        return "[" + this.f2114a + "/" + this.f2115b + "]";
    }

    public I(SocketAddress socketAddress) {
        this(Collections.singletonList(socketAddress), C0107c.f2181b);
    }
}
