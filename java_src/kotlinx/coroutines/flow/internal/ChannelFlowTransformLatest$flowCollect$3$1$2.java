package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.B;
import m3.p;
import m3.q;
@g3.c(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", l = {34}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class ChannelFlowTransformLatest$flowCollect$3$1$2 extends SuspendLambda implements p {
    final /* synthetic */ kotlinx.coroutines.flow.e $collector;
    final /* synthetic */ Object $value;
    int label;
    final /* synthetic */ d this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlowTransformLatest$flowCollect$3$1$2(d dVar, kotlinx.coroutines.flow.e eVar, Object obj, kotlin.coroutines.c cVar) {
        super(2, cVar);
        this.this$0 = dVar;
        this.$collector = eVar;
        this.$value = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c create(Object obj, kotlin.coroutines.c cVar) {
        return new ChannelFlowTransformLatest$flowCollect$3$1$2(this.this$0, this.$collector, this.$value, cVar);
    }

    @Override // m3.p
    public final Object invoke(Object obj, Object obj2) {
        return ((ChannelFlowTransformLatest$flowCollect$3$1$2) create((B) obj, (kotlin.coroutines.c) obj2)).invokeSuspend(e3.f.f9037a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.label;
        if (i4 == 0) {
            e3.d.b(obj);
            q qVar = this.this$0.f11413e;
            kotlinx.coroutines.flow.e eVar = this.$collector;
            Object obj2 = this.$value;
            this.label = 1;
            if (qVar.invoke(eVar, obj2, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            e3.d.b(obj);
        }
        return e3.f.f9037a;
    }
}
