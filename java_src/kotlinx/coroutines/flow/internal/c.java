package kotlinx.coroutines.flow.internal;

import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.B;
/* loaded from: classes.dex */
public final class c implements kotlinx.coroutines.flow.e {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f11409a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ B f11410b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ d f11411c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ kotlinx.coroutines.flow.e f11412d;

    public c(Ref$ObjectRef ref$ObjectRef, B b4, d dVar, kotlinx.coroutines.flow.e eVar) {
        this.f11409a = ref$ObjectRef;
        this.f11410b = b4;
        this.f11411c = dVar;
        this.f11412d = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    @Override // kotlinx.coroutines.flow.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r7, kotlin.coroutines.c r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1 r0 = (kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1 r0 = new kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$emit$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.L$2
            kotlinx.coroutines.a0 r6 = (kotlinx.coroutines.a0) r6
            java.lang.Object r7 = r0.L$1
            java.lang.Object r6 = r0.L$0
            kotlinx.coroutines.flow.internal.c r6 = (kotlinx.coroutines.flow.internal.c) r6
            e3.d.b(r8)
            goto L5b
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            e3.d.b(r8)
            kotlin.jvm.internal.Ref$ObjectRef r8 = r6.f11409a
            java.lang.Object r8 = r8.element
            kotlinx.coroutines.a0 r8 = (kotlinx.coroutines.a0) r8
            if (r8 == 0) goto L5b
            kotlinx.coroutines.flow.internal.ChildCancelledException r2 = new kotlinx.coroutines.flow.internal.ChildCancelledException
            r2.<init>()
            r8.b(r2)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.L$2 = r8
            r0.label = r3
            java.lang.Object r8 = r8.l(r0)
            if (r8 != r1) goto L5b
            return r1
        L5b:
            kotlin.jvm.internal.Ref$ObjectRef r8 = r6.f11409a
            kotlinx.coroutines.CoroutineStart r0 = kotlinx.coroutines.CoroutineStart.UNDISPATCHED
            kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2 r1 = new kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2
            r2 = 0
            kotlinx.coroutines.flow.internal.d r4 = r6.f11411c
            kotlinx.coroutines.flow.e r5 = r6.f11412d
            r1.<init>(r4, r5, r7, r2)
            kotlinx.coroutines.B r6 = r6.f11410b
            kotlinx.coroutines.q0 r6 = kotlinx.coroutines.C1228d.a(r6, r0, r1, r3)
            r8.element = r6
            e3.f r6 = e3.f.f9037a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.c.emit(java.lang.Object, kotlin.coroutines.c):java.lang.Object");
    }
}
