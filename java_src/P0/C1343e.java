package p0;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: p0.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1343e {

    /* renamed from: c  reason: collision with root package name */
    public static final C1343e f11918c = new C1343e("COMPOSITION");

    /* renamed from: a  reason: collision with root package name */
    public final List f11919a;

    /* renamed from: b  reason: collision with root package name */
    public InterfaceC1344f f11920b;

    public C1343e(String... strArr) {
        this.f11919a = Arrays.asList(strArr);
    }

    public final boolean a(int i4, String str) {
        List list = this.f11919a;
        if (i4 >= list.size()) {
            return false;
        }
        boolean z4 = i4 == list.size() - 1;
        String str2 = (String) list.get(i4);
        if (!str2.equals("**")) {
            return (z4 || (i4 == list.size() + (-2) && ((String) list.get(list.size() + (-1))).equals("**"))) && (str2.equals(str) || str2.equals("*"));
        }
        if (!z4 && ((String) list.get(i4 + 1)).equals(str)) {
            return i4 == list.size() + (-2) || (i4 == list.size() + (-3) && ((String) list.get(list.size() + (-1))).equals("**"));
        } else if (z4) {
            return true;
        } else {
            int i5 = i4 + 1;
            if (i5 < list.size() - 1) {
                return false;
            }
            return ((String) list.get(i5)).equals(str);
        }
    }

    public final int b(int i4, String str) {
        if ("__container".equals(str)) {
            return 0;
        }
        List list = this.f11919a;
        if (((String) list.get(i4)).equals("**")) {
            return (i4 != list.size() - 1 && ((String) list.get(i4 + 1)).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    public final boolean c(int i4, String str) {
        if ("__container".equals(str)) {
            return true;
        }
        List list = this.f11919a;
        if (i4 >= list.size()) {
            return false;
        }
        return ((String) list.get(i4)).equals(str) || ((String) list.get(i4)).equals("**") || ((String) list.get(i4)).equals("*");
    }

    public final boolean d(int i4, String str) {
        if ("__container".equals(str)) {
            return true;
        }
        List list = this.f11919a;
        return i4 < list.size() - 1 || ((String) list.get(i4)).equals("**");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1343e.class != obj.getClass()) {
            return false;
        }
        C1343e c1343e = (C1343e) obj;
        if (this.f11919a.equals(c1343e.f11919a)) {
            InterfaceC1344f interfaceC1344f = this.f11920b;
            return interfaceC1344f != null ? interfaceC1344f.equals(c1343e.f11920b) : c1343e.f11920b == null;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f11919a.hashCode() * 31;
        InterfaceC1344f interfaceC1344f = this.f11920b;
        return hashCode + (interfaceC1344f != null ? interfaceC1344f.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("KeyPath{keys=");
        sb.append(this.f11919a);
        sb.append(",resolved=");
        sb.append(this.f11920b != null);
        sb.append('}');
        return sb.toString();
    }

    public C1343e(C1343e c1343e) {
        this.f11919a = new ArrayList(c1343e.f11919a);
        this.f11920b = c1343e.f11920b;
    }
}
