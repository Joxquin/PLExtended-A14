package kotlin.collections;

import java.util.Collection;
/* loaded from: classes.dex */
public class q extends p {
    public static final void e(Iterable elements, Collection collection) {
        kotlin.jvm.internal.h.e(elements, "elements");
        if (elements instanceof Collection) {
            collection.addAll((Collection) elements);
            return;
        }
        for (Object obj : elements) {
            collection.add(obj);
        }
    }
}
