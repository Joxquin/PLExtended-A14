package kotlin.sequences;
/* loaded from: classes.dex */
public class n extends l {
    public static final g a(final Object obj, m3.l nextFunction) {
        kotlin.jvm.internal.h.e(nextFunction, "nextFunction");
        return obj == null ? b.f11271a : new f(new m3.a() { // from class: kotlin.sequences.SequencesKt__SequencesKt$generateSequence$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // m3.a
            public final Object invoke() {
                return obj;
            }
        }, nextFunction);
    }
}
