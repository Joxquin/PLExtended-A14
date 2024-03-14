package com.google.android.apps.nexuslauncher.util;

import android.content.Context;
import android.util.Log;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.VibratorWrapper;
import com.android.quickstep.inputconsumers.NavHandleLongPressHandler;
import com.android.quickstep.util.AssistStateManager;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.qsb.AssistUtilsGoogle;
import com.google.android.apps.nexuslauncher.util.NexusNavHandleLongPressHandler;
/* loaded from: classes.dex */
public class NexusNavHandleLongPressHandler extends NavHandleLongPressHandler {

    /* renamed from: d  reason: collision with root package name */
    public final Context f7623d;

    public NexusNavHandleLongPressHandler(Context context) {
        this.f7623d = context;
    }

    @Override // com.android.quickstep.inputconsumers.NavHandleLongPressHandler
    public final Runnable getLongPressRunnable() {
        boolean z4 = FeatureFlags.ENABLE_LONG_PRESS_NAV_HANDLE.get();
        Context context = this.f7623d;
        if (!(z4 && ((AssistStateManager) AssistStateManager.INSTANCE.get(context)).isSettingsNavHandleEnabled())) {
            Log.d("NexusNavHandleLongPressHandler", "Omni invocation failed: entry point disabled");
            return null;
        }
        final AssistUtilsGoogle assistUtilsGoogle = new AssistUtilsGoogle(context);
        if (assistUtilsGoogle.c()) {
            return new Runnable() { // from class: c2.b
                @Override // java.lang.Runnable
                public final void run() {
                    NexusNavHandleLongPressHandler nexusNavHandleLongPressHandler = NexusNavHandleLongPressHandler.this;
                    AssistUtilsGoogle assistUtilsGoogle2 = assistUtilsGoogle;
                    nexusNavHandleLongPressHandler.getClass();
                    if (assistUtilsGoogle2.b(1)) {
                        Log.d("NexusNavHandleLongPressHandler", "Omni invocation successful");
                        MainThreadInitializedObject mainThreadInitializedObject = VibratorWrapper.INSTANCE;
                        Context context2 = nexusNavHandleLongPressHandler.f7623d;
                        ((VibratorWrapper) mainThreadInitializedObject.get(context2)).vibrateForAssist();
                        StatsLogManager.newInstance(context2).logger().log(NexusLauncherEvent.LAUNCHER_LAUNCH_ASSISTANT_SUCCESSFUL_NAV_HANDLE);
                    }
                }
            };
        }
        Log.d("NexusNavHandleLongPressHandler", "Omni invocation failed: precondition not satisfied");
        return null;
    }
}
