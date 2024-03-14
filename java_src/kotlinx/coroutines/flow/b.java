package kotlinx.coroutines.flow;

import kotlin.jvm.internal.Ref$ObjectRef;
/* loaded from: classes.dex */
public final class b implements e {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ c f11396a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f11397b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ e f11398c;

    public b(c cVar, Ref$ObjectRef ref$ObjectRef, e eVar) {
        this.f11396a = cVar;
        this.f11397b = ref$ObjectRef;
        this.f11398c = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    @Override // kotlinx.coroutines.flow.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r8, kotlin.coroutines.c r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1 r0 = (kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1 r0 = new kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L2f
            if (r2 != r3) goto L27
            e3.d.b(r9)
            goto L61
        L27:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L2f:
            e3.d.b(r9)
            kotlinx.coroutines.flow.c r9 = r7.f11396a
            m3.l r2 = r9.f11400b
            java.lang.Object r2 = r2.invoke(r8)
            kotlin.jvm.internal.Ref$ObjectRef r4 = r7.f11397b
            java.lang.Object r5 = r4.element
            kotlinx.coroutines.internal.E r6 = kotlinx.coroutines.flow.internal.e.f11414a
            if (r5 == r6) goto L54
            m3.p r9 = r9.f11401c
            java.lang.Object r9 = r9.invoke(r5, r2)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 != 0) goto L51
            goto L54
        L51:
            e3.f r7 = e3.f.f9037a
            return r7
        L54:
            r4.element = r2
            r0.label = r3
            kotlinx.coroutines.flow.e r7 = r7.f11398c
            java.lang.Object r7 = r7.emit(r8, r0)
            if (r7 != r1) goto L61
            return r1
        L61:
            e3.f r7 = e3.f.f9037a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.b.emit(java.lang.Object, kotlin.coroutines.c):java.lang.Object");
    }
}
