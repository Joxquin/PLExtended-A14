package J;

import java.util.ArrayList;
/* loaded from: classes.dex */
public final class h implements L.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f592a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f593b;

    public /* synthetic */ h(int i4, Object obj) {
        this.f592a = i4;
        this.f593b = obj;
    }

    public final void a(i iVar) {
        switch (this.f592a) {
            case 0:
                if (iVar == null) {
                    iVar = new i(-3);
                }
                ((c) this.f593b).a(iVar);
                return;
            default:
                synchronized (j.f598c) {
                    q.m mVar = j.f599d;
                    ArrayList arrayList = (ArrayList) mVar.get((String) this.f593b);
                    if (arrayList == null) {
                        return;
                    }
                    mVar.remove((String) this.f593b);
                    for (int i4 = 0; i4 < arrayList.size(); i4++) {
                        ((L.a) arrayList.get(i4)).accept(iVar);
                    }
                    return;
                }
        }
    }

    @Override // L.a
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f592a) {
            case 0:
                a((i) obj);
                return;
            default:
                a((i) obj);
                return;
        }
    }
}
