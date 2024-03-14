package com.google.common.collect;

import java.util.Iterator;
import java.util.Set;
/* loaded from: classes.dex */
public final class g {
    public static int a(Set set) {
        Iterator it = set.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i4 = ~(~(i4 + (next != null ? next.hashCode() : 0)));
        }
        return i4;
    }
}
