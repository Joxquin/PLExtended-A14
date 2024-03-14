package w;

import java.util.ArrayList;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final androidx.constraintlayout.core.widgets.analyzer.f f12711a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f12712b = new ArrayList();

    public k(androidx.constraintlayout.core.widgets.analyzer.f fVar) {
        this.f12711a = null;
        this.f12711a = fVar;
    }

    public static long a(androidx.constraintlayout.core.widgets.analyzer.a aVar, long j4) {
        androidx.constraintlayout.core.widgets.analyzer.f fVar = aVar.f2742d;
        if (fVar instanceof androidx.constraintlayout.core.widgets.analyzer.c) {
            return j4;
        }
        ArrayList arrayList = (ArrayList) aVar.f2749k;
        int size = arrayList.size();
        long j5 = j4;
        for (int i4 = 0; i4 < size; i4++) {
            InterfaceC1443e interfaceC1443e = (InterfaceC1443e) arrayList.get(i4);
            if (interfaceC1443e instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                androidx.constraintlayout.core.widgets.analyzer.a aVar2 = (androidx.constraintlayout.core.widgets.analyzer.a) interfaceC1443e;
                if (aVar2.f2742d != fVar) {
                    j5 = Math.min(j5, a(aVar2, aVar2.f2744f + j4));
                }
            }
        }
        if (aVar == fVar.f2763i) {
            long j6 = fVar.j();
            androidx.constraintlayout.core.widgets.analyzer.a aVar3 = fVar.f2762h;
            long j7 = j4 - j6;
            return Math.min(Math.min(j5, a(aVar3, j7)), j7 - aVar3.f2744f);
        }
        return j5;
    }

    public static long b(androidx.constraintlayout.core.widgets.analyzer.a aVar, long j4) {
        androidx.constraintlayout.core.widgets.analyzer.f fVar = aVar.f2742d;
        if (fVar instanceof androidx.constraintlayout.core.widgets.analyzer.c) {
            return j4;
        }
        ArrayList arrayList = (ArrayList) aVar.f2749k;
        int size = arrayList.size();
        long j5 = j4;
        for (int i4 = 0; i4 < size; i4++) {
            InterfaceC1443e interfaceC1443e = (InterfaceC1443e) arrayList.get(i4);
            if (interfaceC1443e instanceof androidx.constraintlayout.core.widgets.analyzer.a) {
                androidx.constraintlayout.core.widgets.analyzer.a aVar2 = (androidx.constraintlayout.core.widgets.analyzer.a) interfaceC1443e;
                if (aVar2.f2742d != fVar) {
                    j5 = Math.max(j5, b(aVar2, aVar2.f2744f + j4));
                }
            }
        }
        if (aVar == fVar.f2762h) {
            long j6 = fVar.j();
            androidx.constraintlayout.core.widgets.analyzer.a aVar3 = fVar.f2763i;
            long j7 = j4 + j6;
            return Math.max(Math.max(j5, b(aVar3, j7)), j7 - aVar3.f2744f);
        }
        return j5;
    }
}
