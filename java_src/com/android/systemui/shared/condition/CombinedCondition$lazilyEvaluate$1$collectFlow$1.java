package com.android.systemui.shared.condition;

import e3.f;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.B;
import kotlinx.coroutines.a0;
import m3.p;
/* JADX INFO: Access modifiers changed from: package-private */
@g3.c(c = "com.android.systemui.shared.condition.CombinedCondition$lazilyEvaluate$1$collectFlow$1", f = "CombinedCondition.kt", l = {131}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class CombinedCondition$lazilyEvaluate$1$collectFlow$1 extends SuspendLambda implements p {
    final /* synthetic */ kotlinx.coroutines.channels.p $$this$callbackFlow;
    final /* synthetic */ Collection $conditions;
    final /* synthetic */ boolean $filterUnknown;
    final /* synthetic */ List $flows;
    final /* synthetic */ int $index;
    final /* synthetic */ List $jobs;
    final /* synthetic */ List $values;
    int label;
    final /* synthetic */ CombinedCondition this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombinedCondition$lazilyEvaluate$1$collectFlow$1(List list, int i4, List list2, CombinedCondition combinedCondition, kotlinx.coroutines.channels.p pVar, List list3, Collection collection, boolean z4, kotlin.coroutines.c cVar) {
        super(2, cVar);
        this.$flows = list;
        this.$index = i4;
        this.$values = list2;
        this.this$0 = combinedCondition;
        this.$$this$callbackFlow = pVar;
        this.$jobs = list3;
        this.$conditions = collection;
        this.$filterUnknown = z4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c create(Object obj, kotlin.coroutines.c cVar) {
        return new CombinedCondition$lazilyEvaluate$1$collectFlow$1(this.$flows, this.$index, this.$values, this.this$0, this.$$this$callbackFlow, this.$jobs, this.$conditions, this.$filterUnknown, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.label;
        if (i4 == 0) {
            e3.d.b(obj);
            final List list = this.$values;
            final int i5 = this.$index;
            final CombinedCondition combinedCondition = this.this$0;
            final kotlinx.coroutines.channels.p pVar = this.$$this$callbackFlow;
            final List list2 = this.$jobs;
            final Collection collection = this.$conditions;
            final List list3 = this.$flows;
            final boolean z4 = this.$filterUnknown;
            kotlinx.coroutines.flow.e eVar = new kotlinx.coroutines.flow.e() { // from class: com.android.systemui.shared.condition.CombinedCondition$lazilyEvaluate$1$collectFlow$1.1
                @Override // kotlinx.coroutines.flow.e
                public final Object emit(Boolean bool, kotlin.coroutines.c cVar) {
                    boolean shouldEarlyReturn;
                    int i6;
                    list.set(i5, bool);
                    shouldEarlyReturn = combinedCondition.shouldEarlyReturn(bool);
                    if (shouldEarlyReturn) {
                        pVar.p(bool);
                        CombinedCondition$lazilyEvaluate$1.invokeSuspend$cancelAllExcept(list2, collection, list, i5);
                    } else {
                        List list4 = list3;
                        boolean z5 = z4;
                        List list5 = list;
                        kotlinx.coroutines.channels.p pVar2 = pVar;
                        CombinedCondition combinedCondition2 = combinedCondition;
                        List list6 = list2;
                        Collection collection2 = collection;
                        Iterator it = list6.iterator();
                        int i7 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i6 = -1;
                                break;
                            }
                            if (((a0) it.next()) == null) {
                                i6 = i7;
                                break;
                            }
                            i7++;
                        }
                        CombinedCondition$lazilyEvaluate$1.invokeSuspend$collectFlow(list4, z5, list5, pVar2, combinedCondition2, list6, collection2, i6);
                    }
                    return f.f9037a;
                }
            };
            this.label = 1;
            if (((kotlinx.coroutines.flow.d) this.$flows.get(this.$index)).a(eVar, this) == coroutineSingletons) {
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
        return ((CombinedCondition$lazilyEvaluate$1$collectFlow$1) create(b4, cVar)).invokeSuspend(f.f9037a);
    }
}
