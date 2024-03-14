package kotlinx.coroutines.flow;

import m3.p;
/* loaded from: classes.dex */
public final class a extends kotlinx.coroutines.flow.internal.a {

    /* renamed from: d  reason: collision with root package name */
    public final p f11394d;

    /* renamed from: e  reason: collision with root package name */
    public final p f11395e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(m3.p r4) {
        /*
            r3 = this;
            kotlin.coroutines.EmptyCoroutineContext r0 = kotlin.coroutines.EmptyCoroutineContext.f11247d
            kotlinx.coroutines.channels.BufferOverflow r1 = kotlinx.coroutines.channels.BufferOverflow.SUSPEND
            java.lang.String r2 = "context"
            kotlin.jvm.internal.h.e(r0, r2)
            r2 = -2
            r3.<init>(r0, r2, r1)
            r3.f11394d = r4
            r3.f11395e = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.a.<init>(m3.p):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0052  */
    @Override // kotlinx.coroutines.flow.internal.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(kotlinx.coroutines.channels.p r5, kotlin.coroutines.c r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1 r0 = (kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1 r0 = new kotlinx.coroutines.flow.CallbackFlowBuilder$collectTo$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2c
            java.lang.Object r4 = r0.L$0
            r5 = r4
            kotlinx.coroutines.channels.p r5 = (kotlinx.coroutines.channels.p) r5
            e3.d.b(r6)
            goto L49
        L2c:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L34:
            e3.d.b(r6)
            r0.L$0 = r5
            r0.label = r3
            m3.p r4 = r4.f11394d
            java.lang.Object r4 = r4.invoke(r5, r0)
            if (r4 != r1) goto L44
            goto L46
        L44:
            e3.f r4 = e3.f.f9037a
        L46:
            if (r4 != r1) goto L49
            return r1
        L49:
            boolean r4 = r5.s()
            if (r4 == 0) goto L52
            e3.f r4 = e3.f.f9037a
            return r4
        L52:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.a.c(kotlinx.coroutines.channels.p, kotlin.coroutines.c):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.internal.a
    /* renamed from: d */
    public final String toString() {
        String aVar = super.toString();
        return "block[" + this.f11394d + "] -> " + aVar;
    }
}
