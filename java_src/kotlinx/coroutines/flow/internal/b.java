package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.i;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.l;
import kotlinx.coroutines.C1256v;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.p;
import kotlinx.coroutines.internal.H;
/* loaded from: classes.dex */
public abstract class b extends a {

    /* renamed from: d  reason: collision with root package name */
    public final kotlinx.coroutines.flow.d f11408d;

    public b(kotlinx.coroutines.flow.d dVar, i iVar, int i4, BufferOverflow bufferOverflow) {
        super(iVar, i4, bufferOverflow);
        this.f11408d = dVar;
    }

    @Override // kotlinx.coroutines.flow.internal.a, kotlinx.coroutines.flow.d
    public final Object a(kotlinx.coroutines.flow.e eVar, kotlin.coroutines.c cVar) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.f11406b == -3) {
            i context = cVar.getContext();
            kotlin.jvm.internal.h.e(context, "<this>");
            i addedContext = this.f11405a;
            kotlin.jvm.internal.h.e(addedContext, "addedContext");
            i i4 = !C1256v.b(addedContext) ? context.i(addedContext) : C1256v.a(context, addedContext, false);
            if (kotlin.jvm.internal.h.a(i4, context)) {
                Object d4 = d(eVar, cVar);
                return d4 == coroutineSingletons ? d4 : e3.f.f9037a;
            }
            kotlin.coroutines.d dVar = kotlin.coroutines.d.f11251d;
            if (kotlin.jvm.internal.h.a(i4.e(dVar), context.e(dVar))) {
                i context2 = cVar.getContext();
                if (!(eVar instanceof f)) {
                    eVar = new h(eVar, context2);
                }
                ChannelFlowOperator$collectWithContextUndispatched$2 channelFlowOperator$collectWithContextUndispatched$2 = new ChannelFlowOperator$collectWithContextUndispatched$2(this, null);
                Object c4 = H.c(i4, H.b(i4));
                try {
                    g gVar = new g(cVar, i4);
                    l.a(2, channelFlowOperator$collectWithContextUndispatched$2);
                    Object invoke = channelFlowOperator$collectWithContextUndispatched$2.invoke(eVar, gVar);
                    Object obj = invoke == coroutineSingletons ? invoke : e3.f.f9037a;
                    return obj == coroutineSingletons ? obj : e3.f.f9037a;
                } finally {
                    H.a(i4, c4);
                }
            }
        }
        Object a4 = super.a(eVar, cVar);
        return a4 == coroutineSingletons ? a4 : e3.f.f9037a;
    }

    @Override // kotlinx.coroutines.flow.internal.a
    public final Object c(p pVar, kotlin.coroutines.c cVar) {
        Object d4 = d(new f(pVar), cVar);
        return d4 == CoroutineSingletons.COROUTINE_SUSPENDED ? d4 : e3.f.f9037a;
    }

    public abstract Object d(kotlinx.coroutines.flow.e eVar, kotlin.coroutines.c cVar);

    @Override // kotlinx.coroutines.flow.internal.a
    public final String toString() {
        String aVar = super.toString();
        return this.f11408d + " -> " + aVar;
    }
}
