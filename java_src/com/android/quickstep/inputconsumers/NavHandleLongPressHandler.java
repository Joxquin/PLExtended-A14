package com.android.quickstep.inputconsumers;

import android.content.Context;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class NavHandleLongPressHandler implements ResourceBasedOverride {
    public static NavHandleLongPressHandler newInstance(Context context) {
        return (NavHandleLongPressHandler) ResourceBasedOverride.Overrides.getObject(R.string.nav_handle_long_press_handler_class, context, NavHandleLongPressHandler.class);
    }

    public Runnable getLongPressRunnable() {
        return null;
    }
}
