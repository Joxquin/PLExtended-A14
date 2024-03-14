package kotlin.sequences;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;
/* loaded from: classes.dex */
public final class j extends n {
    public static final d b(g gVar, m3.l transform) {
        kotlin.jvm.internal.h.e(transform, "transform");
        p pVar = new p(gVar, transform);
        SequencesKt___SequencesKt$filterNotNull$1 predicate = new m3.l() { // from class: kotlin.sequences.SequencesKt___SequencesKt$filterNotNull$1
            @Override // m3.l
            public final Object invoke(Object obj) {
                return Boolean.valueOf(obj == null);
            }
        };
        kotlin.jvm.internal.h.e(predicate, "predicate");
        return new d(pVar, false, predicate);
    }

    public static final List c(g gVar) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : gVar) {
            arrayList.add(obj);
        }
        int size = arrayList.size();
        return size != 0 ? size != 1 ? arrayList : kotlin.collections.n.b(arrayList.get(0)) : EmptyList.f11226d;
    }
}
