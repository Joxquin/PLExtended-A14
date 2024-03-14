package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import m3.p;
/* JADX INFO: Access modifiers changed from: package-private */
@g3.c(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1", f = "ChannelFlow.kt", l = {60}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ChannelFlow$collectToFun$1 extends SuspendLambda implements p {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ a this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelFlow$collectToFun$1(a aVar, kotlin.coroutines.c cVar) {
        super(2, cVar);
        this.this$0 = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c create(Object obj, kotlin.coroutines.c cVar) {
        ChannelFlow$collectToFun$1 channelFlow$collectToFun$1 = new ChannelFlow$collectToFun$1(this.this$0, cVar);
        channelFlow$collectToFun$1.L$0 = obj;
        return channelFlow$collectToFun$1;
    }

    @Override // m3.p
    public final Object invoke(Object obj, Object obj2) {
        return ((ChannelFlow$collectToFun$1) create((kotlinx.coroutines.channels.p) obj, (kotlin.coroutines.c) obj2)).invokeSuspend(e3.f.f9037a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.label;
        if (i4 == 0) {
            e3.d.b(obj);
            a aVar = this.this$0;
            this.label = 1;
            if (aVar.c((kotlinx.coroutines.channels.p) this.L$0, this) == coroutineSingletons) {
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
