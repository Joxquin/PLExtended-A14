package kotlinx.coroutines.internal;

import java.util.Arrays;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
/* renamed from: kotlinx.coroutines.internal.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C1237d {
    public static /* synthetic */ Iterator a() {
        try {
            return Arrays.asList(new u3.b()).iterator();
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
