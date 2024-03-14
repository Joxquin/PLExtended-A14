package g0;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import s.C1391a;
/* loaded from: classes.dex */
public final class F {

    /* renamed from: b  reason: collision with root package name */
    public final View f9375b;

    /* renamed from: a  reason: collision with root package name */
    public final Map f9374a = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f9376c = new ArrayList();

    @Deprecated
    public F() {
    }

    public final boolean equals(Object obj) {
        if (obj instanceof F) {
            F f4 = (F) obj;
            return this.f9375b == f4.f9375b && this.f9374a.equals(f4.f9374a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9374a.hashCode() + (this.f9375b.hashCode() * 31);
    }

    public final String toString() {
        Map map;
        StringBuilder a4 = t.j.a("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        a4.append(this.f9375b);
        a4.append("\n");
        String a5 = C1391a.a(a4.toString(), "    values:");
        for (String str : ((HashMap) this.f9374a).keySet()) {
            a5 = a5 + "    " + str + ": " + ((HashMap) map).get(str) + "\n";
        }
        return a5;
    }

    public F(View view) {
        this.f9375b = view;
    }
}
