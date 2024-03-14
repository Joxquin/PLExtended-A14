package kotlin.collections;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class n {
    public static final int a(List list) {
        kotlin.jvm.internal.h.e(list, "<this>");
        return list.size() - 1;
    }

    public static final List b(Object obj) {
        List singletonList = Collections.singletonList(obj);
        kotlin.jvm.internal.h.d(singletonList, "singletonList(element)");
        return singletonList;
    }

    public static final List c(Object... objArr) {
        if (objArr.length > 0) {
            List asList = Arrays.asList(objArr);
            kotlin.jvm.internal.h.d(asList, "asList(this)");
            return asList;
        }
        return EmptyList.f11226d;
    }
}
