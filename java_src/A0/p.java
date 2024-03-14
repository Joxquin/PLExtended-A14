package A0;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class p implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f26a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ s f27b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ArrayList f28c;

    public /* synthetic */ p(s sVar, ArrayList arrayList, int i4) {
        this.f26a = i4;
        this.f27b = sVar;
        this.f28c = arrayList;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f26a) {
            case 0:
                return ((List) obj).stream().map(new p(this.f27b, this.f28c, 1)).toList();
            default:
                s sVar = this.f27b;
                ArrayList arrayList = this.f28c;
                w wVar = (w) obj;
                wVar.getClass();
                B0.g d4 = B0.h.d();
                d4.b(wVar.f62e);
                t[] tVarArr = wVar.f67j;
                int i4 = wVar.f70m.f73a;
                if (tVarArr[i4 - 1] == null) {
                    i4 = wVar.f64g + 1;
                }
                while (true) {
                    i4--;
                    if (i4 < 0) {
                        return (B0.h) d4.build();
                    }
                    int i5 = wVar.f70m.f73a;
                    int i6 = ((wVar.f64g + i5) - i4) % i5;
                    B0.e u4 = B0.f.u();
                    wVar.f67j[i6].a(sVar, arrayList, u4);
                    B0.c d5 = B0.d.d();
                    d5.a(u4);
                    d5.b(wVar.f66i[i6]);
                    d4.a(d5);
                }
        }
    }
}
