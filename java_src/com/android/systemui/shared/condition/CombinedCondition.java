package com.android.systemui.shared.condition;

import java.util.Collection;
import kotlin.jvm.internal.h;
import kotlinx.coroutines.B;
import kotlinx.coroutines.C1228d;
import kotlinx.coroutines.a0;
/* loaded from: classes.dex */
public final class CombinedCondition extends Condition {
    private final e3.c _startStrategy$delegate;
    private final Collection conditions;
    private a0 job;
    private final int operand;
    private final B scope;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombinedCondition(B scope, Collection conditions, int i4) {
        super(scope, null, false);
        h.e(scope, "scope");
        h.e(conditions, "conditions");
        this.scope = scope;
        this.conditions = conditions;
        this.operand = i4;
        this._startStrategy$delegate = kotlin.a.a(new m3.a() { // from class: com.android.systemui.shared.condition.CombinedCondition$_startStrategy$2
            {
                super(0);
            }

            @Override // m3.a
            public final Integer invoke() {
                int calculateStartStrategy;
                calculateStartStrategy = CombinedCondition.this.calculateStartStrategy();
                return Integer.valueOf(calculateStartStrategy);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int calculateStartStrategy() {
        int i4 = 2;
        for (Condition condition : this.conditions) {
            int startStrategy = condition.getStartStrategy();
            if (startStrategy == 0) {
                return 0;
            }
            if (startStrategy == 1) {
                i4 = 1;
            }
        }
        return i4;
    }

    private final int get_startStrategy() {
        return ((Number) this._startStrategy$delegate.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlinx.coroutines.flow.d lazilyEvaluate(Collection collection, boolean z4) {
        return new kotlinx.coroutines.flow.a(new CombinedCondition$lazilyEvaluate$1(collection, z4, this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean shouldEarlyReturn(Boolean bool) {
        int i4 = this.operand;
        if (i4 != 0) {
            if (i4 != 1) {
                return false;
            }
            return h.a(bool, Boolean.TRUE);
        }
        return h.a(bool, Boolean.FALSE);
    }

    @Override // com.android.systemui.shared.condition.Condition
    public int getStartStrategy() {
        return get_startStrategy();
    }

    @Override // com.android.systemui.shared.condition.Condition
    public void start() {
        this.job = C1228d.a(this.scope, null, new CombinedCondition$start$1(this, null), 3);
    }

    @Override // com.android.systemui.shared.condition.Condition
    public void stop() {
        a0 a0Var = this.job;
        if (a0Var != null) {
            a0Var.b(null);
        }
        this.job = null;
    }
}
