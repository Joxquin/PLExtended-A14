package L2;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public List f1328a;

    /* renamed from: b  reason: collision with root package name */
    public int f1329b;

    public h(g gVar) {
        List list = gVar.f1326a;
        if (list != null) {
            this.f1328a = list;
        } else {
            this.f1328a = new ArrayList();
        }
        this.f1329b = gVar.f1327b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            return this.f1329b == hVar.f1329b && Objects.equals(this.f1328a, hVar.f1328a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f1328a, Integer.valueOf(this.f1329b));
    }

    public final String toString() {
        return "BcSmartspaceSubcardLoggingInfo{mSubcards=" + this.f1328a + ", mClickedSubcardIndex=" + this.f1329b + '}';
    }
}
