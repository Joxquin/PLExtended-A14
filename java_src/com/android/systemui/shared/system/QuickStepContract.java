package com.android.systemui.shared.system;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemProperties;
import android.view.ViewConfiguration;
import com.android.internal.policy.ScreenDecorationsUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.StringJoiner;
/* loaded from: classes.dex */
public class QuickStepContract {
    public static final boolean ALLOW_BACK_GESTURE_IN_SHADE = SystemProperties.getBoolean("persist.wm.debug.shade_allow_back_gesture", false);
    public static final String KEY_EXTRA_SYSUI_PROXY = "extra_sysui_proxy";
    public static final String KEY_EXTRA_UNFOLD_ANIMATION_FORWARDER = "extra_unfold_animation";
    public static final String KEY_EXTRA_UNLOCK_ANIMATION_CONTROLLER = "unlock_animation";
    public static final String LAUNCHER_ACTIVITY_CLASS_NAME = "com.google.android.apps.nexuslauncher.NexusLauncherActivity";
    public static final String NAV_BAR_MODE_3BUTTON_OVERLAY = "com.android.internal.systemui.navbar.threebutton";
    public static final String NAV_BAR_MODE_GESTURAL_OVERLAY = "com.android.internal.systemui.navbar.gestural";
    public static final float QUICKSTEP_TOUCH_SLOP_RATIO = 3.0f;
    public static final int SYSUI_STATE_A11Y_BUTTON_CLICKABLE = 16;
    public static final int SYSUI_STATE_A11Y_BUTTON_LONG_CLICKABLE = 32;
    public static final int SYSUI_STATE_ALLOW_GESTURE_IGNORING_BAR_VISIBILITY = 131072;
    public static final int SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED = 8192;
    public static final int SYSUI_STATE_AWAKE = 268435456;
    public static final int SYSUI_STATE_BACK_DISABLED = 4194304;
    public static final int SYSUI_STATE_BOUNCER_SHOWING = 8;
    public static final int SYSUI_STATE_BUBBLES_EXPANDED = 16384;
    public static final int SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED = 8388608;
    public static final int SYSUI_STATE_DEVICE_DOZING = 2097152;
    public static final int SYSUI_STATE_DEVICE_DREAMING = 134217728;
    public static final int SYSUI_STATE_DIALOG_SHOWING = 32768;
    public static final int SYSUI_STATE_FREEFORM_ACTIVE_IN_DESKTOP_MODE = 67108864;
    public static final int SYSUI_STATE_HOME_DISABLED = 256;
    public static final int SYSUI_STATE_IME_SHOWING = 262144;
    public static final int SYSUI_STATE_IME_SWITCHER_SHOWING = 1048576;
    public static final int SYSUI_STATE_IMMERSIVE_MODE = 16777216;
    public static final int SYSUI_STATE_MAGNIFICATION_OVERLAP = 524288;
    public static final int SYSUI_STATE_NAV_BAR_HIDDEN = 2;
    public static final int SYSUI_STATE_NOTIFICATION_PANEL_EXPANDED = 4;
    public static final int SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE = 1073741824;
    public static final int SYSUI_STATE_ONE_HANDED_ACTIVE = 65536;
    public static final int SYSUI_STATE_OVERVIEW_DISABLED = 128;
    public static final int SYSUI_STATE_QUICK_SETTINGS_EXPANDED = 2048;
    public static final int SYSUI_STATE_SCREEN_PINNING = 1;
    public static final int SYSUI_STATE_SEARCH_DISABLED = 1024;
    public static final int SYSUI_STATE_STATUS_BAR_KEYGUARD_GOING_AWAY = Integer.MIN_VALUE;
    public static final int SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING = 64;
    public static final int SYSUI_STATE_STATUS_BAR_KEYGUARD_SHOWING_OCCLUDED = 512;
    public static final int SYSUI_STATE_TRACING_ENABLED = 4096;
    public static final int SYSUI_STATE_VOICE_INTERACTION_WINDOW_SHOWING = 33554432;
    public static final int SYSUI_STATE_WAKEFULNESS_MASK = 805306368;
    public static final int SYSUI_STATE_WAKEFULNESS_TRANSITION = 536870912;
    public static final int WAKEFULNESS_ASLEEP = 0;
    public static final int WAKEFULNESS_AWAKE = 268435456;
    public static final int WAKEFULNESS_GOING_TO_SLEEP = 536870912;
    public static final int WAKEFULNESS_WAKING = 805306368;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface SystemUiStateFlags {
    }

    private static int getBackGestureDisabledMask(boolean z4) {
        int i4 = !z4 ? 66 : 64;
        return !ALLOW_BACK_GESTURE_IN_SHADE ? i4 | 4 : i4;
    }

    public static final float getQuickStepTouchSlopPx(Context context) {
        return ViewConfiguration.get(context).getScaledTouchSlop() * 3.0f;
    }

    public static String getSystemUiStateString(int i4) {
        StringJoiner stringJoiner = new StringJoiner("|");
        if ((i4 & 1) != 0) {
            stringJoiner.add("screen_pinned");
        }
        if ((i4 & 128) != 0) {
            stringJoiner.add("overview_disabled");
        }
        if ((i4 & 256) != 0) {
            stringJoiner.add("home_disabled");
        }
        if ((i4 & 1024) != 0) {
            stringJoiner.add("search_disabled");
        }
        if ((i4 & 2) != 0) {
            stringJoiner.add("navbar_hidden");
        }
        if ((i4 & 4) != 0) {
            stringJoiner.add("notif_expanded");
        }
        if ((i4 & 2048) != 0) {
            stringJoiner.add("qs_visible");
        }
        if ((i4 & 64) != 0) {
            stringJoiner.add("keygrd_visible");
        }
        if ((i4 & 512) != 0) {
            stringJoiner.add("keygrd_occluded");
        }
        if ((i4 & 8) != 0) {
            stringJoiner.add("bouncer_visible");
        }
        if ((32768 & i4) != 0) {
            stringJoiner.add("dialog_showing");
        }
        if ((i4 & 16) != 0) {
            stringJoiner.add("a11y_click");
        }
        if ((i4 & 32) != 0) {
            stringJoiner.add("a11y_long_click");
        }
        if ((i4 & 4096) != 0) {
            stringJoiner.add("tracing");
        }
        if ((i4 & 8192) != 0) {
            stringJoiner.add("asst_gesture_constrain");
        }
        if ((i4 & 16384) != 0) {
            stringJoiner.add("bubbles_expanded");
        }
        if ((65536 & i4) != 0) {
            stringJoiner.add("one_handed_active");
        }
        if ((131072 & i4) != 0) {
            stringJoiner.add("allow_gesture");
        }
        if ((262144 & i4) != 0) {
            stringJoiner.add("ime_visible");
        }
        if ((524288 & i4) != 0) {
            stringJoiner.add("magnification_overlap");
        }
        if ((1048576 & i4) != 0) {
            stringJoiner.add("ime_switcher_showing");
        }
        if ((2097152 & i4) != 0) {
            stringJoiner.add("device_dozing");
        }
        if ((4194304 & i4) != 0) {
            stringJoiner.add("back_disabled");
        }
        if ((8388608 & i4) != 0) {
            stringJoiner.add("bubbles_mange_menu_expanded");
        }
        if ((16777216 & i4) != 0) {
            stringJoiner.add("immersive_mode");
        }
        if ((33554432 & i4) != 0) {
            stringJoiner.add("vis_win_showing");
        }
        if ((67108864 & i4) != 0) {
            stringJoiner.add("freeform_active_in_desktop_mode");
        }
        if ((134217728 & i4) != 0) {
            stringJoiner.add("device_dreaming");
        }
        if ((536870912 & i4) != 0) {
            stringJoiner.add("wakefulness_transition");
        }
        if ((268435456 & i4) != 0) {
            stringJoiner.add("awake");
        }
        if ((1073741824 & i4) != 0) {
            stringJoiner.add("notif_visible");
        }
        if ((i4 & Integer.MIN_VALUE) != 0) {
            stringJoiner.add("keygrd_going_away");
        }
        return stringJoiner.toString();
    }

    public static float getWindowCornerRadius(Context context) {
        return ScreenDecorationsUtils.getWindowCornerRadius(context);
    }

    public static boolean isAssistantGestureDisabled(int i4) {
        if ((131072 & i4) != 0) {
            i4 &= -3;
        }
        if ((i4 & 3083) != 0) {
            return true;
        }
        return (i4 & 4) != 0 && (i4 & 64) == 0;
    }

    public static boolean isBackGestureDisabled(int i4, boolean z4) {
        if ((i4 & 8) == 0 && (32768 & i4) == 0 && (33554432 & i4) == 0) {
            if ((131072 & i4) != 0) {
                i4 &= -3;
            }
            return (i4 & getBackGestureDisabledMask(z4)) != 0;
        }
        return false;
    }

    public static boolean isGesturalMode(int i4) {
        return i4 == 2;
    }

    public static boolean isLegacyMode(int i4) {
        return i4 == 0;
    }

    public static boolean isSwipeUpMode(int i4) {
        return i4 == 1;
    }

    public static boolean supportsRoundedCornersOnWindows(Resources resources) {
        return ScreenDecorationsUtils.supportsRoundedCornersOnWindows(resources);
    }
}
