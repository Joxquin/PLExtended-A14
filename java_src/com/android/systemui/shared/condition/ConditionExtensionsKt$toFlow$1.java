package com.android.systemui.shared.condition;

import com.android.systemui.shared.condition.Condition;
import e3.f;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.channels.n;
import m3.p;
@g3.c(c = "com.android.systemui.shared.condition.ConditionExtensionsKt$toFlow$1", f = "ConditionExtensions.kt", l = {48}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class ConditionExtensionsKt$toFlow$1 extends SuspendLambda implements p {
    final /* synthetic */ Condition $this_toFlow;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConditionExtensionsKt$toFlow$1(Condition condition, kotlin.coroutines.c cVar) {
        super(2, cVar);
        this.$this_toFlow = condition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c create(Object obj, kotlin.coroutines.c cVar) {
        ConditionExtensionsKt$toFlow$1 conditionExtensionsKt$toFlow$1 = new ConditionExtensionsKt$toFlow$1(this.$this_toFlow, cVar);
        conditionExtensionsKt$toFlow$1.L$0 = obj;
        return conditionExtensionsKt$toFlow$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.label;
        if (i4 == 0) {
            e3.d.b(obj);
            final kotlinx.coroutines.channels.p pVar = (kotlinx.coroutines.channels.p) this.L$0;
            final Condition.Callback callback = new Condition.Callback() { // from class: com.android.systemui.shared.condition.ConditionExtensionsKt$toFlow$1$callback$1
                @Override // com.android.systemui.shared.condition.Condition.Callback
                public final void onConditionChanged(Condition condition) {
                    if (condition.isConditionSet()) {
                        kotlinx.coroutines.channels.p.this.p(Boolean.valueOf(condition.isConditionMet()));
                    } else {
                        kotlinx.coroutines.channels.p.this.p(null);
                    }
                }
            };
            this.$this_toFlow.addCallback(callback);
            callback.onConditionChanged(this.$this_toFlow);
            final Condition condition = this.$this_toFlow;
            m3.a aVar = new m3.a() { // from class: com.android.systemui.shared.condition.ConditionExtensionsKt$toFlow$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // m3.a
                public /* bridge */ /* synthetic */ Object invoke() {
                    m6invoke();
                    return f.f9037a;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m6invoke() {
                    Condition.this.removeCallback(callback);
                }
            };
            this.label = 1;
            if (n.a(pVar, aVar, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            e3.d.b(obj);
        }
        return f.f9037a;
    }

    @Override // m3.p
    public final Object invoke(kotlinx.coroutines.channels.p pVar, kotlin.coroutines.c cVar) {
        return ((ConditionExtensionsKt$toFlow$1) create(pVar, cVar)).invokeSuspend(f.f9037a);
    }
}
