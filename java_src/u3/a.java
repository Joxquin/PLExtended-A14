package u3;

import android.os.Looper;
import java.util.List;
import kotlin.jvm.internal.h;
import kotlinx.coroutines.internal.t;
import kotlinx.coroutines.k0;
/* loaded from: classes.dex */
public final class a implements t {
    @Override // kotlinx.coroutines.internal.t
    public String a() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }

    @Override // kotlinx.coroutines.internal.t
    public k0 b(List allFactories) {
        h.e(allFactories, "allFactories");
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            return new c(e.a(mainLooper), null, false);
        }
        throw new IllegalStateException("The main looper is not available");
    }

    @Override // kotlinx.coroutines.internal.t
    public int c() {
        return 1073741823;
    }
}
