package b2;

import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class g implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public static final g f4228a = new g();

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Boolean success = (Boolean) obj;
        kotlin.jvm.internal.h.d(success, "success");
        if (success.booleanValue()) {
            InteractionJankMonitorWrapper.end(63);
        }
    }
}
