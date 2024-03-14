package com.android.systemui.shared.condition;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.B;
import kotlinx.coroutines.flow.f;
import kotlinx.coroutines.flow.j;
import m3.p;
@g3.c(c = "com.android.systemui.shared.condition.CombinedCondition$start$1", f = "CombinedCondition.kt", l = {71}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class CombinedCondition$start$1 extends SuspendLambda implements p {
    int label;
    final /* synthetic */ CombinedCondition this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombinedCondition$start$1(CombinedCondition combinedCondition, kotlin.coroutines.c cVar) {
        super(2, cVar);
        this.this$0 = combinedCondition;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c create(Object obj, kotlin.coroutines.c cVar) {
        return new CombinedCondition$start$1(this.this$0, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Collection collection;
        kotlinx.coroutines.flow.d lazilyEvaluate;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.label;
        if (i4 == 0) {
            e3.d.b(obj);
            collection = this.this$0.conditions;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj2 : collection) {
                Boolean valueOf = Boolean.valueOf(((Condition) obj2).isOverridingCondition());
                Object obj3 = linkedHashMap.get(valueOf);
                if (obj3 == null) {
                    obj3 = new ArrayList();
                    linkedHashMap.put(valueOf, obj3);
                }
                ((List) obj3).add(obj2);
            }
            lazilyEvaluate = this.this$0.lazilyEvaluate((Collection) linkedHashMap.getOrDefault(Boolean.TRUE, EmptyList.f11226d), true);
            kotlinx.coroutines.flow.d a4 = f.a(lazilyEvaluate);
            CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1 combinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1 = new CombinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1(null, this.this$0, linkedHashMap);
            int i5 = j.f11421a;
            kotlinx.coroutines.flow.internal.d dVar = new kotlinx.coroutines.flow.internal.d(combinedCondition$start$1$invokeSuspend$$inlined$flatMapLatest$1, a4);
            final CombinedCondition combinedCondition = this.this$0;
            kotlinx.coroutines.flow.e eVar = new kotlinx.coroutines.flow.e() { // from class: com.android.systemui.shared.condition.CombinedCondition$start$1.2
                @Override // kotlinx.coroutines.flow.e
                public final Object emit(Boolean bool, kotlin.coroutines.c cVar) {
                    if (bool == null) {
                        CombinedCondition.this.clearCondition();
                    } else {
                        CombinedCondition.this.updateCondition(bool.booleanValue());
                    }
                    return e3.f.f9037a;
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
        return e3.f.f9037a;
    }

    @Override // m3.p
    public final Object invoke(B b4, kotlin.coroutines.c cVar) {
        return ((CombinedCondition$start$1) create(b4, cVar)).invokeSuspend(e3.f.f9037a);
    }
}
