package com.android.systemui.shared.condition;

import kotlin.jvm.internal.h;
import kotlinx.coroutines.B;
import kotlinx.coroutines.C1228d;
import kotlinx.coroutines.a0;
import kotlinx.coroutines.flow.f;
/* loaded from: classes.dex */
public final class ConditionExtensionsKt {
    public static final Condition toCondition(kotlinx.coroutines.flow.d dVar, B scope, int i4) {
        h.e(dVar, "<this>");
        h.e(scope, "scope");
        return toCondition$default(dVar, scope, i4, null, 4, null);
    }

    public static /* synthetic */ Condition toCondition$default(kotlinx.coroutines.flow.d dVar, B b4, int i4, Boolean bool, int i5, Object obj) {
        if ((i5 & 4) != 0) {
            bool = null;
        }
        return toCondition(dVar, b4, i4, bool);
    }

    public static final kotlinx.coroutines.flow.d toFlow(Condition condition) {
        h.e(condition, "<this>");
        return f.a(new kotlinx.coroutines.flow.a(new ConditionExtensionsKt$toFlow$1(condition, null)));
    }

    public static final Condition toCondition(final kotlinx.coroutines.flow.d dVar, final B scope, final int i4, final Boolean bool) {
        h.e(dVar, "<this>");
        h.e(scope, "scope");
        return new Condition(bool, dVar, i4) { // from class: com.android.systemui.shared.condition.ConditionExtensionsKt$toCondition$1
            final /* synthetic */ int $strategy;
            final /* synthetic */ kotlinx.coroutines.flow.d $this_toCondition;
            private a0 job;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(B.this, bool, false);
                this.$this_toCondition = dVar;
                this.$strategy = i4;
            }

            public final a0 getJob() {
                return this.job;
            }

            @Override // com.android.systemui.shared.condition.Condition
            public int getStartStrategy() {
                return this.$strategy;
            }

            public final void setJob(a0 a0Var) {
                this.job = a0Var;
            }

            @Override // com.android.systemui.shared.condition.Condition
            public void start() {
                this.job = C1228d.a(B.this, null, new ConditionExtensionsKt$toCondition$1$start$1(this.$this_toCondition, this, null), 3);
            }

            @Override // com.android.systemui.shared.condition.Condition
            public void stop() {
                a0 a0Var = this.job;
                if (a0Var != null) {
                    a0Var.b(null);
                }
                this.job = null;
            }
        };
    }
}
