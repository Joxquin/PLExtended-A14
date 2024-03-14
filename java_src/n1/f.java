package n1;

import android.app.smartspace.SmartspaceTargetEvent;
import o1.InterfaceC1324c;
@InterfaceC1324c(action = "com.android.systemui.action.PLUGIN_BC_SMARTSPACE_DATA", version = 1)
/* loaded from: classes.dex */
public interface f extends j {
    default void a(SmartspaceTargetEvent smartspaceTargetEvent) {
        throw new UnsupportedOperationException("Not implemented by " + getClass());
    }

    default void d(e eVar) {
        throw new UnsupportedOperationException("Not implemented by " + getClass());
    }

    default void p(e eVar) {
        throw new UnsupportedOperationException("Not implemented by " + getClass());
    }
}
