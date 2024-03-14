package com.android.systemui.shared.condition;

import e3.f;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.B;
import m3.p;
@g3.c(c = "com.android.systemui.shared.condition.ConditionExtensionsKt$toCondition$1$start$1", f = "ConditionExtensions.kt", l = {23}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class ConditionExtensionsKt$toCondition$1$start$1 extends SuspendLambda implements p {
    final /* synthetic */ kotlinx.coroutines.flow.d $this_toCondition;
    int label;
    final /* synthetic */ ConditionExtensionsKt$toCondition$1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConditionExtensionsKt$toCondition$1$start$1(kotlinx.coroutines.flow.d dVar, ConditionExtensionsKt$toCondition$1 conditionExtensionsKt$toCondition$1, kotlin.coroutines.c cVar) {
        super(2, cVar);
        this.$this_toCondition = dVar;
        this.this$0 = conditionExtensionsKt$toCondition$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c create(Object obj, kotlin.coroutines.c cVar) {
        return new ConditionExtensionsKt$toCondition$1$start$1(this.$this_toCondition, this.this$0, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.label;
        if (i4 == 0) {
            e3.d.b(obj);
            kotlinx.coroutines.flow.d dVar = this.$this_toCondition;
            final ConditionExtensionsKt$toCondition$1 conditionExtensionsKt$toCondition$1 = this.this$0;
            kotlinx.coroutines.flow.e eVar = new kotlinx.coroutines.flow.e() { // from class: com.android.systemui.shared.condition.ConditionExtensionsKt$toCondition$1$start$1.1
                @Override // kotlinx.coroutines.flow.e
                public /* bridge */ /* synthetic */ Object emit(Object obj2, kotlin.coroutines.c cVar) {
                    return emit(((Boolean) obj2).booleanValue(), cVar);
                }

                public final Object emit(boolean z4, kotlin.coroutines.c cVar) {
                    updateCondition(z4);
                    return f.f9037a;
                }
            };
            this.label = 1;
            if (dVar.a(eVar, this) == coroutineSingletons) {
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
    public final Object invoke(B b4, kotlin.coroutines.c cVar) {
        return ((ConditionExtensionsKt$toCondition$1$start$1) create(b4, cVar)).invokeSuspend(f.f9037a);
    }
}
