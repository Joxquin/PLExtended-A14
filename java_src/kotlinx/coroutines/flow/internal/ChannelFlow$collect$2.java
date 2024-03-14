package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.B;
import m3.p;
/* JADX INFO: Access modifiers changed from: package-private */
@g3.c(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", l = {123}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ChannelFlow$collect$2 extends SuspendLambda implements p {
    final /* synthetic */ kotlinx.coroutines.flow.e $collector;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ a this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlow$collect$2(kotlin.coroutines.c cVar, kotlinx.coroutines.flow.e eVar, a aVar) {
        super(2, cVar);
        this.$collector = eVar;
        this.this$0 = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c create(Object obj, kotlin.coroutines.c cVar) {
        ChannelFlow$collect$2 channelFlow$collect$2 = new ChannelFlow$collect$2(cVar, this.$collector, this.this$0);
        channelFlow$collect$2.L$0 = obj;
        return channelFlow$collect$2;
    }

    @Override // m3.p
    public final Object invoke(Object obj, Object obj2) {
        return ((ChannelFlow$collect$2) create((B) obj, (kotlin.coroutines.c) obj2)).invokeSuspend(e3.f.f9037a);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00be A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r12.label
            r2 = 1
            if (r1 == 0) goto L16
            if (r1 != r2) goto Le
            e3.d.b(r13)
            goto Lbf
        Le:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L16:
            e3.d.b(r13)
            java.lang.Object r13 = r12.L$0
            kotlinx.coroutines.B r13 = (kotlinx.coroutines.B) r13
            kotlinx.coroutines.flow.e r1 = r12.$collector
            kotlinx.coroutines.flow.internal.a r3 = r12.this$0
            r3.getClass()
            java.lang.String r4 = "scope"
            kotlin.jvm.internal.h.e(r13, r4)
            r4 = -2
            r5 = -3
            int r6 = r3.f11406b
            if (r6 != r5) goto L30
            r6 = r4
        L30:
            kotlinx.coroutines.CoroutineStart r5 = kotlinx.coroutines.CoroutineStart.ATOMIC
            kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1 r7 = new kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1
            r8 = 0
            r7.<init>(r3, r8)
            kotlinx.coroutines.channels.BufferOverflow r9 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            java.lang.String r10 = "context"
            kotlin.coroutines.i r11 = r3.f11405a
            kotlin.jvm.internal.h.e(r11, r10)
            java.lang.String r10 = "onBufferOverflow"
            kotlinx.coroutines.channels.BufferOverflow r3 = r3.f11407c
            kotlin.jvm.internal.h.e(r3, r10)
            if (r6 == r4) goto L90
            r4 = -1
            r10 = 0
            if (r6 == r4) goto L77
            if (r6 == 0) goto L69
            r4 = 2147483647(0x7fffffff, float:NaN)
            if (r6 == r4) goto L63
            if (r3 != r9) goto L5d
            kotlinx.coroutines.channels.c r3 = new kotlinx.coroutines.channels.c
            r3.<init>(r6, r8)
            goto La5
        L5d:
            kotlinx.coroutines.channels.m r4 = new kotlinx.coroutines.channels.m
            r4.<init>(r6, r3, r8)
            goto La4
        L63:
            kotlinx.coroutines.channels.c r3 = new kotlinx.coroutines.channels.c
            r3.<init>(r4, r8)
            goto La5
        L69:
            if (r3 != r9) goto L71
            kotlinx.coroutines.channels.c r3 = new kotlinx.coroutines.channels.c
            r3.<init>(r10, r8)
            goto La5
        L71:
            kotlinx.coroutines.channels.m r4 = new kotlinx.coroutines.channels.m
            r4.<init>(r2, r3, r8)
            goto La4
        L77:
            if (r3 != r9) goto L7a
            r10 = r2
        L7a:
            if (r10 == 0) goto L84
            kotlinx.coroutines.channels.m r3 = new kotlinx.coroutines.channels.m
            kotlinx.coroutines.channels.BufferOverflow r4 = kotlinx.coroutines.channels.BufferOverflow.DROP_OLDEST
            r3.<init>(r2, r4, r8)
            goto La5
        L84:
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            java.lang.String r13 = "CONFLATED capacity cannot be used with non-default onBufferOverflow"
            java.lang.String r13 = r13.toString()
            r12.<init>(r13)
            throw r12
        L90:
            if (r3 != r9) goto L9f
            kotlinx.coroutines.channels.c r3 = new kotlinx.coroutines.channels.c
            kotlinx.coroutines.channels.e r4 = kotlinx.coroutines.channels.f.f11374c
            r4.getClass()
            int r4 = kotlinx.coroutines.channels.e.f11373b
            r3.<init>(r4, r8)
            goto La5
        L9f:
            kotlinx.coroutines.channels.m r4 = new kotlinx.coroutines.channels.m
            r4.<init>(r2, r3, r8)
        La4:
            r3 = r4
        La5:
            kotlin.coroutines.i r13 = kotlinx.coroutines.C1256v.c(r13, r11)
            kotlinx.coroutines.channels.o r4 = new kotlinx.coroutines.channels.o
            r4.<init>(r13, r3)
            r4.e0(r5, r4, r7)
            r12.label = r2
            java.lang.Object r12 = kotlinx.coroutines.flow.h.a(r1, r4, r2, r12)
            if (r12 != r0) goto Lba
            goto Lbc
        Lba:
            e3.f r12 = e3.f.f9037a
        Lbc:
            if (r12 != r0) goto Lbf
            return r0
        Lbf:
            e3.f r12 = e3.f.f9037a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.ChannelFlow$collect$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
