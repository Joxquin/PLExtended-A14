package n0;

import java.util.ArrayList;
import java.util.List;
import r0.C1376g;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public final List f11764a;

    /* renamed from: b  reason: collision with root package name */
    public final List f11765b;

    /* renamed from: c  reason: collision with root package name */
    public final List f11766c;

    public n(List list) {
        this.f11766c = list;
        this.f11764a = new ArrayList(list.size());
        this.f11765b = new ArrayList(list.size());
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((ArrayList) this.f11764a).add(new s(((C1376g) list.get(i4)).f12098b.f11988a));
            q0.d dVar = ((C1376g) list.get(i4)).f12099c;
            ((ArrayList) this.f11765b).add(dVar.a());
        }
    }
}
