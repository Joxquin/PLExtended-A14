package kotlinx.coroutines.internal;

import java.util.Arrays;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
/* loaded from: classes.dex */
public final /* synthetic */ class u {
    public static /* synthetic */ Iterator a() {
        try {
            return Arrays.asList(new u3.a()).iterator();
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
