package X2;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public final class U {

    /* renamed from: a  reason: collision with root package name */
    public final List f2166a;

    /* renamed from: b  reason: collision with root package name */
    public final C0107c f2167b;

    /* renamed from: c  reason: collision with root package name */
    public final Object[][] f2168c;

    public U(List list, C0107c c0107c, Object[][] objArr) {
        O2.m.h(list, "addresses are not set");
        this.f2166a = list;
        O2.m.h(c0107c, "attrs");
        this.f2167b = c0107c;
        O2.m.h(objArr, "customOptions");
        this.f2168c = objArr;
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f2166a, "addrs");
        b4.a(this.f2167b, "attrs");
        b4.a(Arrays.deepToString(this.f2168c), "customOptions");
        return b4.toString();
    }
}
