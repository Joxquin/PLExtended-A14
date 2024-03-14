package com.android.systemui.shared.condition;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.o;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class Evaluator {
    public static final Evaluator INSTANCE = new Evaluator();
    public static final int OP_AND = 0;
    public static final int OP_OR = 1;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ConditionOperand {
    }

    private Evaluator() {
    }

    private final Boolean threeValuedAndOrOr(Collection collection, boolean z4) {
        Iterator it = collection.iterator();
        boolean z5 = false;
        while (it.hasNext()) {
            Boolean bool = (Boolean) it.next();
            if (bool == null) {
                z5 = true;
            } else if (h.a(bool, Boolean.valueOf(z4))) {
                return Boolean.valueOf(z4);
            }
        }
        if (z5) {
            return null;
        }
        return Boolean.valueOf(!z4);
    }

    public final Boolean evaluate(Collection conditions, int i4) {
        h.e(conditions, "conditions");
        if (conditions.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : conditions) {
            Condition condition = (Condition) obj;
            if (condition.isConditionSet() && condition.isOverridingCondition()) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            conditions = arrayList;
        }
        ArrayList arrayList2 = new ArrayList(o.d(conditions));
        for (Condition condition2 : conditions) {
            arrayList2.add(condition2.isConditionSet() ? Boolean.valueOf(condition2.isConditionMet()) : null);
        }
        return evaluate$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib(arrayList2, i4);
    }

    public final Boolean evaluate$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib(Collection values, int i4) {
        h.e(values, "values");
        if (values.isEmpty()) {
            return null;
        }
        if (i4 != 0) {
            if (i4 != 1) {
                return null;
            }
            return threeValuedAndOrOr(values, true);
        }
        return threeValuedAndOrOr(values, false);
    }
}
