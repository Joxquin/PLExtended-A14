package kotlinx.coroutines.channels;

import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class BufferedChannelKt$createSegmentFunction$1 extends FunctionReferenceImpl implements m3.p {

    /* renamed from: d  reason: collision with root package name */
    public static final BufferedChannelKt$createSegmentFunction$1 f11338d = new BufferedChannelKt$createSegmentFunction$1();

    public BufferedChannelKt$createSegmentFunction$1() {
        super(2, d.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
    }

    @Override // m3.p
    public final Object invoke(Object obj, Object obj2) {
        long longValue = ((Number) obj).longValue();
        k p12 = (k) obj2;
        kotlin.jvm.internal.h.e(p12, "p1");
        k kVar = d.f11353a;
        c cVar = p12.f11378h;
        kotlin.jvm.internal.h.b(cVar);
        return new k(longValue, p12, cVar, 0);
    }
}
