package com.android.launcher3.testing;

import android.util.Log;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.recents.model.Task;
/* loaded from: classes.dex */
public final class TestLogging {
    public static boolean sHadEventsNotFromTest;

    public static void recordEvent(String str, String str2) {
        if (Utilities.isRunningInTestHarness()) {
            recordEventSlow(str, str2, true);
        }
    }

    private static void recordEventSlow(String str, String str2, boolean z4) {
        String str3 = z4 ? "TaplEvents" : "LauncherEvents";
        Log.d(str3, str + " / " + str2);
    }

    public static void recordKeyEvent(KeyEvent keyEvent) {
        if (Utilities.isRunningInTestHarness()) {
            recordEventSlow("Main", "Key event: " + keyEvent, true);
            registerEventNotFromTest(keyEvent);
        }
    }

    public static void recordMotionEvent(String str, String str2, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (!Utilities.isRunningInTestHarness() || action == 2) {
            return;
        }
        recordEventSlow(str, str2 + ": " + motionEvent, false);
        registerEventNotFromTest(motionEvent);
    }

    private static void registerEventNotFromTest(InputEvent inputEvent) {
        if (sHadEventsNotFromTest || inputEvent.getDeviceId() == -1) {
            return;
        }
        sHadEventsNotFromTest = true;
        Log.d("TaplTarget", "First event not from test: " + inputEvent);
    }

    public static void recordEvent(Task task) {
        if (Utilities.isRunningInTestHarness()) {
            recordEventSlow("Main", "startActivityFromRecentsAsync: " + task, true);
        }
    }
}
