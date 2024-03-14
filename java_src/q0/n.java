package q0;

import java.util.Arrays;
import java.util.List;
import x0.C1456a;
/* loaded from: classes.dex */
public abstract class n implements m {

    /* renamed from: a  reason: collision with root package name */
    public final List f11988a;

    public n(List list) {
        this.f11988a = list;
    }

    @Override // q0.m
    public final List b() {
        return this.f11988a;
    }

    @Override // q0.m
    public final boolean c() {
        List list = this.f11988a;
        if (list.isEmpty()) {
            return true;
        }
        return list.size() == 1 && ((C1456a) list.get(0)).c();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        List list = this.f11988a;
        if (!list.isEmpty()) {
            sb.append("values=");
            sb.append(Arrays.toString(list.toArray()));
        }
        return sb.toString();
    }
}
