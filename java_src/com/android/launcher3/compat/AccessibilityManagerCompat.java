package com.android.launcher3.compat;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.android.launcher3.Utilities;
/* loaded from: classes.dex */
public final class AccessibilityManagerCompat {
    private static AccessibilityManager getAccessibilityManagerForTest(Context context) {
        if (Utilities.isRunningInTestHarness()) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
            if (accessibilityManager.isEnabled()) {
                return accessibilityManager;
            }
            return null;
        }
        return null;
    }

    public static int getRecommendedTimeoutMillis(Context context, int i4, int i5) {
        return Utilities.ATLEAST_Q ? ((AccessibilityManager) context.getSystemService("accessibility")).getRecommendedTimeoutMillis(i4, i5) : i4;
    }

    public static boolean isAccessibilityEnabled(Context context) {
        return ((AccessibilityManager) context.getSystemService("accessibility")).isEnabled();
    }

    public static void sendCustomAccessibilityEvent(View view, int i4, String str) {
        if (view == null || !isAccessibilityEnabled(view.getContext())) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i4);
        view.onInitializeAccessibilityEvent(obtain);
        if (!TextUtils.isEmpty(str)) {
            obtain.getText().add(str);
        }
        ((AccessibilityManager) view.getContext().getSystemService("accessibility")).sendAccessibilityEvent(obtain);
    }

    public static void sendDismissAnimationEndsEventToTest(Context context) {
        AccessibilityManager accessibilityManagerForTest = getAccessibilityManagerForTest(context);
        if (accessibilityManagerForTest == null) {
            return;
        }
        sendEventToTest(accessibilityManagerForTest, context, "TAPL_DISMISS_ANIMATION_ENDS", null);
    }

    private static void sendEventToTest(AccessibilityManager accessibilityManager, Context context, String str, Bundle bundle) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
        obtain.setClassName(str);
        obtain.setParcelableData(bundle);
        obtain.setPackageName(context.getApplicationContext().getPackageName());
        accessibilityManager.sendAccessibilityEvent(obtain);
    }

    public static void sendFolderOpenedEventToTest(Context context) {
        AccessibilityManager accessibilityManagerForTest = getAccessibilityManagerForTest(context);
        if (accessibilityManagerForTest == null) {
            return;
        }
        sendEventToTest(accessibilityManagerForTest, context, "TAPL_FOLDER_OPENED", null);
    }

    public static void sendPauseDetectedEventToTest(Context context) {
        AccessibilityManager accessibilityManagerForTest = getAccessibilityManagerForTest(context);
        if (accessibilityManagerForTest == null) {
            return;
        }
        sendEventToTest(accessibilityManagerForTest, context, "TAPL_PAUSE_DETECTED", null);
    }

    public static void sendScrollFinishedEventToTest(Context context) {
        AccessibilityManager accessibilityManagerForTest = getAccessibilityManagerForTest(context);
        if (accessibilityManagerForTest == null) {
            return;
        }
        sendEventToTest(accessibilityManagerForTest, context, "TAPL_SCROLL_FINISHED", null);
    }

    public static void sendStateEventToTest(int i4, Context context) {
        AccessibilityManager accessibilityManagerForTest = getAccessibilityManagerForTest(context);
        if (accessibilityManagerForTest == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("state", i4);
        sendEventToTest(accessibilityManagerForTest, context, "TAPL_SWITCHED_TO_STATE", bundle);
        Log.d("TaplTarget", "sendStateEventToTest: " + i4);
    }
}
