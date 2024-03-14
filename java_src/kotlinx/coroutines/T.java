package kotlinx.coroutines;

import java.io.Closeable;
/* loaded from: classes.dex */
public abstract class T extends AbstractC1258x implements Closeable {
    static {
        ExecutorCoroutineDispatcher$Key$1 safeCast = new m3.l() { // from class: kotlinx.coroutines.ExecutorCoroutineDispatcher$Key$1
            @Override // m3.l
            public final Object invoke(Object obj) {
                kotlin.coroutines.g it = (kotlin.coroutines.g) obj;
                kotlin.jvm.internal.h.e(it, "it");
                if (it instanceof T) {
                    return (T) it;
                }
                return null;
            }
        };
        C1257w baseKey = AbstractC1258x.f11521e;
        kotlin.jvm.internal.h.e(baseKey, "baseKey");
        kotlin.jvm.internal.h.e(safeCast, "safeCast");
    }
}
