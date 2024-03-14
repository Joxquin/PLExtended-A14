package com.android.launcher3.util;

import android.content.res.Resources;
import android.content.res.TypedArray;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes.dex */
public final class IconSizeSteps {
    private final List steps;

    public IconSizeSteps(Resources resources) {
        List asList;
        TypedArray obtainTypedArray = resources.obtainTypedArray(R.array.icon_size_steps);
        kotlin.jvm.internal.h.d(obtainTypedArray, "res.obtainTypedArray(R.array.icon_size_steps)");
        int length = obtainTypedArray.length();
        q3.c cVar = length <= Integer.MIN_VALUE ? q3.c.f12060g : new q3.c(0, length - 1);
        ArrayList arrayList = new ArrayList(kotlin.collections.o.d(cVar));
        q3.b it = cVar.iterator();
        while (it.f12058f) {
            int a4 = it.a();
            if (!obtainTypedArray.hasValue(a4)) {
                throw new IllegalArgumentException("Attribute not defined in set.");
            }
            arrayList.add(Integer.valueOf((int) obtainTypedArray.getDimension(a4, 0.0f)));
        }
        if (arrayList.size() <= 1) {
            asList = kotlin.collections.s.k(arrayList);
        } else {
            Object[] array = arrayList.toArray(new Comparable[0]);
            Comparable[] comparableArr = (Comparable[]) array;
            kotlin.jvm.internal.h.e(comparableArr, "<this>");
            if (comparableArr.length > 1) {
                Arrays.sort(comparableArr);
            }
            kotlin.jvm.internal.h.e(array, "<this>");
            asList = Arrays.asList(array);
            kotlin.jvm.internal.h.d(asList, "asList(this)");
        }
        obtainTypedArray.recycle();
        this.steps = asList;
    }

    public final int getIconSmallerThan(int i4) {
        Object obj;
        boolean z4;
        List list = this.steps;
        ListIterator listIterator = list.listIterator(list.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            }
            obj = listIterator.previous();
            if (((Number) obj).intValue() <= i4) {
                z4 = true;
                continue;
            } else {
                z4 = false;
                continue;
            }
            if (z4) {
                break;
            }
        }
        Integer num = (Integer) obj;
        return num != null ? num.intValue() : ((Number) list.get(0)).intValue();
    }

    public final int getNextLowerIconSize(int i4) {
        List list = this.steps;
        Iterator it = list.iterator();
        int i5 = 0;
        while (true) {
            if (!it.hasNext()) {
                i5 = -1;
                break;
            }
            if (i4 <= ((Number) it.next()).intValue()) {
                break;
            }
            i5++;
        }
        return ((Number) list.get(Math.max(0, Math.max(0, i5) - 1))).intValue();
    }

    public final int minimumIconSize() {
        return ((Number) this.steps.get(0)).intValue();
    }
}
