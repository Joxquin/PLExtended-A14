package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.C;
import m3.q;
/* loaded from: classes.dex */
public final class d extends b {

    /* renamed from: e  reason: collision with root package name */
    public final q f11413e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d(com.android.systemui.shared.condition.CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1 r4, kotlinx.coroutines.flow.d r5) {
        /*
            r3 = this;
            kotlin.coroutines.EmptyCoroutineContext r0 = kotlin.coroutines.EmptyCoroutineContext.f11247d
            kotlinx.coroutines.channels.BufferOverflow r1 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            java.lang.String r2 = "context"
            kotlin.jvm.internal.h.e(r0, r2)
            r2 = -2
            r3.<init>(r5, r0, r2, r1)
            r3.f11413e = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.d.<init>(com.android.systemui.shared.condition.CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1, kotlinx.coroutines.flow.d):void");
    }

    @Override // kotlinx.coroutines.flow.internal.b
    public final Object d(kotlinx.coroutines.flow.e eVar, kotlin.coroutines.c cVar) {
        Object a4 = C.a(new ChannelFlowTransformLatest$flowCollect$3(this, eVar, null), cVar);
        return a4 == CoroutineSingletons.COROUTINE_SUSPENDED ? a4 : e3.f.f9037a;
    }
}
