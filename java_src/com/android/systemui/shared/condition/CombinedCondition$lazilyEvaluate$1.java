package com.android.systemui.shared.condition;

import e3.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.o;
import kotlin.collections.s;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.h;
import kotlinx.coroutines.B;
import kotlinx.coroutines.C1228d;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.channels.n;
import m3.p;
/* JADX INFO: Access modifiers changed from: package-private */
@g3.c(c = "com.android.systemui.shared.condition.CombinedCondition$lazilyEvaluate$1", f = "CombinedCondition.kt", l = {158}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class CombinedCondition$lazilyEvaluate$1 extends SuspendLambda implements p {
    final /* synthetic */ Collection $conditions;
    final /* synthetic */ boolean $filterUnknown;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ CombinedCondition this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombinedCondition$lazilyEvaluate$1(Collection collection, boolean z4, CombinedCondition combinedCondition, kotlin.coroutines.c cVar) {
        super(2, cVar);
        this.$conditions = collection;
        this.$filterUnknown = z4;
        this.this$0 = combinedCondition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$cancelAllExcept(List list, Collection collection, List list2, int i4) {
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            if (i5 != i4 && (i4 == -1 || ((Condition) s.g(collection, i5)).getStartStrategy() == 2)) {
                a0 a0Var = (a0) list.get(i5);
                if (a0Var != null) {
                    a0Var.b(null);
                }
                list.set(i5, null);
                list2.set(i5, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.shared.condition.Evaluator] */
    public static final void invokeSuspend$collectFlow(List list, boolean z4, List list2, kotlinx.coroutines.channels.p pVar, CombinedCondition combinedCondition, List list3, Collection collection, int i4) {
        ?? r02;
        int i5;
        B b4;
        if (!list.isEmpty() && i4 != -1) {
            b4 = combinedCondition.scope;
            list3.set(i4, C1228d.a(b4, null, new CombinedCondition$lazilyEvaluate$1$collectFlow$1(list, i4, list2, combinedCondition, pVar, list3, collection, z4, null), 3));
            return;
        }
        if (z4) {
            h.e(list2, "<this>");
            r02 = new ArrayList();
            for (Object obj : list2) {
                if (obj != null) {
                    r02.add(obj);
                }
            }
        } else {
            r02 = list2;
        }
        ?? r12 = Evaluator.INSTANCE;
        i5 = combinedCondition.operand;
        pVar.p(r12.evaluate$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib(r02, i5));
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final kotlin.coroutines.c create(Object obj, kotlin.coroutines.c cVar) {
        CombinedCondition$lazilyEvaluate$1 combinedCondition$lazilyEvaluate$1 = new CombinedCondition$lazilyEvaluate$1(this.$conditions, this.$filterUnknown, this.this$0, cVar);
        combinedCondition$lazilyEvaluate$1.L$0 = obj;
        return combinedCondition$lazilyEvaluate$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = this.label;
        if (i4 == 0) {
            e3.d.b(obj);
            kotlinx.coroutines.channels.p pVar = (kotlinx.coroutines.channels.p) this.L$0;
            int size = this.$conditions.size();
            final ArrayList arrayList = new ArrayList(size);
            boolean z4 = false;
            for (int i5 = 0; i5 < size; i5++) {
                arrayList.add(null);
            }
            int size2 = this.$conditions.size();
            final ArrayList arrayList2 = new ArrayList(size2);
            for (int i6 = 0; i6 < size2; i6++) {
                arrayList2.add(null);
            }
            Collection<Condition> collection = this.$conditions;
            ArrayList arrayList3 = new ArrayList(o.d(collection));
            for (Condition condition : collection) {
                arrayList3.add(ConditionExtensionsKt.toFlow(condition));
            }
            int i7 = 0;
            for (Condition condition2 : this.$conditions) {
                int i8 = i7 + 1;
                if (condition2.getStartStrategy() == 0) {
                    invokeSuspend$collectFlow(arrayList3, this.$filterUnknown, arrayList2, pVar, this.this$0, arrayList, this.$conditions, i7);
                    z4 = true;
                }
                i7 = i8;
            }
            if (!z4) {
                invokeSuspend$collectFlow(arrayList3, this.$filterUnknown, arrayList2, pVar, this.this$0, arrayList, this.$conditions, 0);
            }
            final Collection collection2 = this.$conditions;
            m3.a aVar = new m3.a() { // from class: com.android.systemui.shared.condition.CombinedCondition$lazilyEvaluate$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // m3.a
                public /* bridge */ /* synthetic */ Object invoke() {
                    m5invoke();
                    return f.f9037a;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m5invoke() {
                    CombinedCondition$lazilyEvaluate$1.invokeSuspend$cancelAllExcept(arrayList, collection2, arrayList2, -1);
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
        return ((CombinedCondition$lazilyEvaluate$1) create(pVar, cVar)).invokeSuspend(f.f9037a);
    }
}
