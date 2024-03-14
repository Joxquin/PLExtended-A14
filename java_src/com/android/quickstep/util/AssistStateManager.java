package com.android.quickstep.util;

import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public class AssistStateManager implements ResourceBasedOverride {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new com.android.launcher3.util.u(AssistStateManager.class, R.string.assist_state_manager_class));

    public void dump(String str, PrintWriter printWriter) {
    }

    public boolean isSearchAvailable() {
        return false;
    }

    public boolean isSettingsHomeButtonEnabled() {
        return false;
    }

    public boolean isSettingsNavHandleEnabled() {
        return false;
    }
}
