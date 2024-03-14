package com.android.systemui.shared.condition;

import e3.f;
import java.util.Collection;
import java.util.Map;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.h;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.l;
import m3.q;
@g3.c(c = "com.android.systemui.shared.condition.CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1", f = "CombinedCondition.kt", l = {193}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1 extends SuspendLambda implements q {
    final /* synthetic */ Map $groupedConditions$inlined;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ CombinedCondition this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1(kotlin.coroutines.c cVar, CombinedCondition combinedCondition, Map map) {
        super(3, cVar);
        this.this$0 = combinedCondition;
        this.$groupedConditions$inlined = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.label;
        if (i4 == 0) {
            e3.d.b(obj);
            kotlinx.coroutines.flow.e eVar = (kotlinx.coroutines.flow.e) this.L$0;
            Boolean bool = (Boolean) this.L$1;
            kotlinx.coroutines.flow.d lazilyEvaluate = bool == null ? this.this$0.lazilyEvaluate((Collection) this.$groupedConditions$inlined.getOrDefault(Boolean.FALSE, EmptyList.f11226d), false) : new g(bool);
            this.label = 1;
            h.e(eVar, "<this>");
            if (eVar instanceof l) {
                l lVar = (l) eVar;
                throw null;
            }
            Object a4 = lazilyEvaluate.a(eVar, this);
            if (a4 != coroutineSingletons) {
                a4 = f.f9037a;
            }
            if (a4 == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            e3.d.b(obj);
        }
        return f.f9037a;
    }

    @Override // m3.q
    public final Object invoke(kotlinx.coroutines.flow.e eVar, Object obj, kotlin.coroutines.c cVar) {
        CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1 combinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1 = new CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1(cVar, this.this$0, this.$groupedConditions$inlined);
        combinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1.L$0 = eVar;
        combinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1.L$1 = obj;
        return combinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1.invokeSuspend(f.f9037a);
    }
}
