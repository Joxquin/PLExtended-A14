package com.android.systemui.shared.system;

import android.util.StatsEvent;
import android.util.StatsLog;
/* loaded from: classes.dex */
public final class SysUiStatsLog {
    public static final int ACCESSIBILITY_FLOATING_MENU_UICHANGED__ORIENTATION__LANDSCAPE = 2;
    public static final int ACCESSIBILITY_FLOATING_MENU_UICHANGED__ORIENTATION__PORTRAIT = 1;
    public static final int ACCESSIBILITY_FLOATING_MENU_UICHANGED__ORIENTATION__UNKNOWN = 0;
    public static final int ACCESSIBILITY_FLOATING_MENU_UI_CHANGED = 393;
    public static final byte ANNOTATION_ID_DEFAULT_STATE = 6;
    public static final byte ANNOTATION_ID_EXCLUSIVE_STATE = 4;
    public static final byte ANNOTATION_ID_IS_UID = 1;
    public static final byte ANNOTATION_ID_PRIMARY_FIELD = 3;
    public static final byte ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID = 5;
    public static final byte ANNOTATION_ID_STATE_NESTED = 8;
    public static final byte ANNOTATION_ID_TRIGGER_STATE_RESET = 7;
    public static final byte ANNOTATION_ID_TRUNCATE_TIMESTAMP = 2;
    public static final int ASSIST_GESTURE_FEEDBACK_REPORTED = 175;
    public static final int ASSIST_GESTURE_FEEDBACK_REPORTED__FEEDBACK_TYPE__ASSIST_GESTURE_FEEDBACK_NOT_USED = 1;
    public static final int ASSIST_GESTURE_FEEDBACK_REPORTED__FEEDBACK_TYPE__ASSIST_GESTURE_FEEDBACK_UNKNOWN = 0;
    public static final int ASSIST_GESTURE_FEEDBACK_REPORTED__FEEDBACK_TYPE__ASSIST_GESTURE_FEEDBACK_USED = 2;
    public static final int ASSIST_GESTURE_PROGRESS_REPORTED = 176;
    public static final int ASSIST_GESTURE_STAGE_REPORTED = 174;
    public static final int ASSIST_GESTURE_STAGE_REPORTED__GESTURE_STAGE__ASSIST_GESTURE_STAGE_DETECTED = 3;
    public static final int ASSIST_GESTURE_STAGE_REPORTED__GESTURE_STAGE__ASSIST_GESTURE_STAGE_PRIMED = 2;
    public static final int ASSIST_GESTURE_STAGE_REPORTED__GESTURE_STAGE__ASSIST_GESTURE_STAGE_PROGRESS = 1;
    public static final int ASSIST_GESTURE_STAGE_REPORTED__GESTURE_STAGE__ASSIST_GESTURE_STAGE_UNKNOWN = 0;
    public static final int BACK_GESTURE_REPORTED_REPORTED = 224;
    public static final int BACK_GESTURE__INPUT_TYPE__TOUCH = 1;
    public static final int BACK_GESTURE__INPUT_TYPE__TRACKPAD = 2;
    public static final int BACK_GESTURE__INPUT_TYPE__UNKNOWN = 0;
    public static final int BACK_GESTURE__TYPE__COMPLETED = 1;
    public static final int BACK_GESTURE__TYPE__COMPLETED_REJECTED = 2;
    public static final int BACK_GESTURE__TYPE__DEFAULT_BACK_TYPE = 0;
    public static final int BACK_GESTURE__TYPE__INCOMPLETE = 4;
    public static final int BACK_GESTURE__TYPE__INCOMPLETE_EXCLUDED = 3;
    public static final int BACK_GESTURE__TYPE__INCOMPLETE_FAR_FROM_EDGE = 5;
    public static final int BACK_GESTURE__TYPE__INCOMPLETE_LONG_PRESS = 7;
    public static final int BACK_GESTURE__TYPE__INCOMPLETE_MULTI_TOUCH = 6;
    public static final int BACK_GESTURE__TYPE__INCOMPLETE_VERTICAL_MOVE = 8;
    public static final int BACK_GESTURE__X_LOCATION__DEFAULT_LOCATION = 0;
    public static final int BACK_GESTURE__X_LOCATION__LEFT = 1;
    public static final int BACK_GESTURE__X_LOCATION__RIGHT = 2;
    public static final int BIOMETRIC_TOUCH_REPORTED = 577;
    public static final int BIOMETRIC_TOUCH_REPORTED__TOUCH_TYPE__TOUCH_TYPE_CANCEL = 3;
    public static final int BIOMETRIC_TOUCH_REPORTED__TOUCH_TYPE__TOUCH_TYPE_DOWN = 1;
    public static final int BIOMETRIC_TOUCH_REPORTED__TOUCH_TYPE__TOUCH_TYPE_UNCHANGED = 0;
    public static final int BIOMETRIC_TOUCH_REPORTED__TOUCH_TYPE__TOUCH_TYPE_UP = 2;
    public static final int DEVICE_CONTROL_CHANGED = 349;
    public static final int DEVICE_LOG_ACCESS_EVENT_REPORTED = 592;
    public static final int DEVICE_LOG_ACCESS_EVENT_REPORTED__EVENT__ALLOWED = 1;
    public static final int DEVICE_LOG_ACCESS_EVENT_REPORTED__EVENT__DENIED = 2;
    public static final int DEVICE_LOG_ACCESS_EVENT_REPORTED__EVENT__UNKNOWN = 0;
    public static final int IME_TOUCH_REPORTED = 304;
    public static final int KEYGUARD_BOUNCER_PASSWORD_ENTERED = 64;
    public static final int KEYGUARD_BOUNCER_PASSWORD_ENTERED__RESULT__FAILURE = 1;
    public static final int KEYGUARD_BOUNCER_PASSWORD_ENTERED__RESULT__SUCCESS = 2;
    public static final int KEYGUARD_BOUNCER_PASSWORD_ENTERED__RESULT__UNKNOWN = 0;
    public static final int KEYGUARD_BOUNCER_PASSWORD_ENTERED__SIDE__DEFAULT = 0;
    public static final int KEYGUARD_BOUNCER_PASSWORD_ENTERED__SIDE__LEFT = 1;
    public static final int KEYGUARD_BOUNCER_PASSWORD_ENTERED__SIDE__RIGHT = 2;
    public static final int KEYGUARD_BOUNCER_STATE_CHANGED = 63;
    public static final int KEYGUARD_BOUNCER_STATE_CHANGED__STATE__HIDDEN = 1;
    public static final int KEYGUARD_BOUNCER_STATE_CHANGED__STATE__SHOWN = 2;
    public static final int KEYGUARD_BOUNCER_STATE_CHANGED__STATE__SHOWN_LEFT = 3;
    public static final int KEYGUARD_BOUNCER_STATE_CHANGED__STATE__SHOWN_RIGHT = 4;
    public static final int KEYGUARD_BOUNCER_STATE_CHANGED__STATE__SWITCH_LEFT = 5;
    public static final int KEYGUARD_BOUNCER_STATE_CHANGED__STATE__SWITCH_RIGHT = 6;
    public static final int KEYGUARD_BOUNCER_STATE_CHANGED__STATE__UNKNOWN = 0;
    public static final int KEYGUARD_STATE_CHANGED = 62;
    public static final int KEYGUARD_STATE_CHANGED__STATE__HIDDEN = 1;
    public static final int KEYGUARD_STATE_CHANGED__STATE__OCCLUDED = 3;
    public static final int KEYGUARD_STATE_CHANGED__STATE__SHOWN = 2;
    public static final int KEYGUARD_STATE_CHANGED__STATE__UNKNOWN = 0;
    public static final int LAUNCHER_EVENT = 19;
    public static final int LAUNCHER_IMPRESSION_EVENT = 547;
    public static final int LAUNCHER_IMPRESSION_EVENT_V2 = 716;
    public static final int LAUNCHER_LATENCY = 426;
    public static final int LAUNCHER_LAYOUT_SNAPSHOT = 10108;
    public static final int LAUNCHER_SNAPSHOT = 262;
    public static final int LAUNCHER_UICHANGED__ACTION__DEFAULT_ACTION = 0;
    public static final int LAUNCHER_UICHANGED__ACTION__DISMISS_TASK = 3;
    public static final int LAUNCHER_UICHANGED__ACTION__DRAGDROP = 5;
    public static final int LAUNCHER_UICHANGED__ACTION__LAUNCH_APP = 1;
    public static final int LAUNCHER_UICHANGED__ACTION__LAUNCH_TASK = 2;
    public static final int LAUNCHER_UICHANGED__ACTION__LONGPRESS = 4;
    public static final int LAUNCHER_UICHANGED__ACTION__SWIPE_DOWN = 7;
    public static final int LAUNCHER_UICHANGED__ACTION__SWIPE_LEFT = 8;
    public static final int LAUNCHER_UICHANGED__ACTION__SWIPE_RIGHT = 9;
    public static final int LAUNCHER_UICHANGED__ACTION__SWIPE_UP = 6;
    public static final int LAUNCHER_UICHANGED__DST_STATE__ALLAPPS = 4;
    public static final int LAUNCHER_UICHANGED__DST_STATE__BACKGROUND = 1;
    public static final int LAUNCHER_UICHANGED__DST_STATE__HOME = 2;
    public static final int LAUNCHER_UICHANGED__DST_STATE__LAUNCHER_STATE_UNSPECIFIED = 0;
    public static final int LAUNCHER_UICHANGED__DST_STATE__OVERVIEW = 3;
    public static final int LAUNCHER_UICHANGED__DST_STATE__UNCHANGED = 5;
    public static final int LAUNCHER_UICHANGED__INPUT_TYPE__TOUCH = 1;
    public static final int LAUNCHER_UICHANGED__INPUT_TYPE__TRACKPAD = 2;
    public static final int LAUNCHER_UICHANGED__INPUT_TYPE__UNKNOWN = 0;
    public static final int LAUNCHER_UICHANGED__SRC_STATE__ALLAPPS = 4;
    public static final int LAUNCHER_UICHANGED__SRC_STATE__BACKGROUND = 1;
    public static final int LAUNCHER_UICHANGED__SRC_STATE__HOME = 2;
    public static final int LAUNCHER_UICHANGED__SRC_STATE__LAUNCHER_STATE_UNSPECIFIED = 0;
    public static final int LAUNCHER_UICHANGED__SRC_STATE__OVERVIEW = 3;
    public static final int LAUNCHER_UICHANGED__SRC_STATE__UNCHANGED = 5;
    public static final int LOCKSCREEN_SHORTCUT_SELECTED = 611;
    public static final int LOCKSCREEN_SHORTCUT_TRIGGERED = 612;
    public static final int MEDIAOUTPUT_OP_INTERACTION_REPORT = 466;
    public static final int MEDIAOUTPUT_OP_SWITCH_REPORTED = 277;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__INTERACTION_TYPE__ADJUST_VOLUME = 1;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__INTERACTION_TYPE__EXPANSION = 0;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__INTERACTION_TYPE__MUTE = 3;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__INTERACTION_TYPE__STOP_CASTING = 2;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__INTERACTION_TYPE__UNMUTE = 4;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__AVR = 600;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__BLUETOOTH = 300;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__BLUETOOTH_A2DP = 302;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__BLUETOOTH_HEARING_AID = 301;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__BUILTIN_SPEAKER = 1;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__REMOTE_DYNAMIC_GROUP = 501;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__REMOTE_GROUP = 500;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__REMOTE_SINGLE = 400;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__REMOTE_SPEAKER = 402;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__REMOTE_TV = 401;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__UNKNOWN_TYPE = 0;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__USB_C_ACCESSORY = 203;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__USB_C_AUDIO = 200;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__USB_C_DEVICE = 201;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__USB_C_DOCK = 204;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__USB_C_HDMI = 205;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__USB_C_HEADSET = 202;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__WIRED_3POINT5_MM_AUDIO = 100;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__WIRED_3POINT5_MM_HEADPHONES = 102;
    public static final int MEDIA_OUTPUT_OP_INTERACTION_REPORTED__TARGET__WIRED_3POINT5_MM_HEADSET = 101;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__RESULT__ERROR = 0;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__RESULT__OK = 1;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__AVR = 600;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__BLUETOOTH = 300;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__BLUETOOTH_A2DP = 302;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__BLUETOOTH_HEARING_AID = 301;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__BUILTIN_SPEAKER = 1;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__REMOTE_DYNAMIC_GROUP = 501;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__REMOTE_GROUP = 500;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__REMOTE_SINGLE = 400;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__REMOTE_SPEAKER = 402;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__REMOTE_TV = 401;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__UNKNOWN_TYPE = 0;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__USB_C_ACCESSORY = 203;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__USB_C_AUDIO = 200;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__USB_C_DEVICE = 201;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__USB_C_DOCK = 204;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__USB_C_HDMI = 205;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__USB_C_HEADSET = 202;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__WIRED_3POINT5_MM_AUDIO = 100;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__WIRED_3POINT5_MM_HEADPHONES = 102;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SOURCE__WIRED_3POINT5_MM_HEADSET = 101;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SUBRESULT__INVALID_COMMAND = 5;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SUBRESULT__NETWORK_ERROR = 3;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SUBRESULT__NO_ERROR = 1;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SUBRESULT__REJECTED = 2;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SUBRESULT__ROUTE_NOT_AVAILABLE = 4;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__SUBRESULT__UNKNOWN_ERROR = 0;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__AVR = 600;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__BLUETOOTH = 300;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__BLUETOOTH_A2DP = 302;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__BLUETOOTH_HEARING_AID = 301;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__BUILTIN_SPEAKER = 1;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__REMOTE_DYNAMIC_GROUP = 501;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__REMOTE_GROUP = 500;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__REMOTE_SINGLE = 400;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__REMOTE_SPEAKER = 402;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__REMOTE_TV = 401;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__UNKNOWN_TYPE = 0;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__USB_C_ACCESSORY = 203;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__USB_C_AUDIO = 200;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__USB_C_DEVICE = 201;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__USB_C_DOCK = 204;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__USB_C_HDMI = 205;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__USB_C_HEADSET = 202;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__WIRED_3POINT5_MM_AUDIO = 100;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__WIRED_3POINT5_MM_HEADPHONES = 102;
    public static final int MEDIA_OUTPUT_OP_SWITCH_REPORTED__TARGET__WIRED_3POINT5_MM_HEADSET = 101;
    public static final int NOTIFICATION_MEMORY_USE = 10174;
    public static final int NOTIFICATION_PANEL_REPORTED = 245;
    public static final int RANKING_SELECTED = 260;
    public static final int SMARTSPACE_CARD_REPORTED = 352;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__AT_A_STORE_LOYALTY_CARD = 7;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__AT_A_STORE_SHOPPING_LIST = 6;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__CALENDAR = 2;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__COMMUTE = 1;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__CROSS_DEVICE_TIMER = 19;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__DOORBELL = 18;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__FITNESS_ACTIVITY = 12;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__FLIGHT = 3;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__HEADPHONE_MEDIA_RECOMMENDATIONS = 9;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__HEADPHONE_RESUME_MEDIA = 8;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__PACKAGE_DELIVERED = 16;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__STOPWATCH = 11;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__TIMER = 10;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__TIME_TO_LEAVE = 15;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__TIPS = 17;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__UNKNOWN_CARD = 0;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__UPCOMING_BEDTIME = 14;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__UPCOMING_REMINDER = 13;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__WEATHER = 4;
    public static final int SMART_SPACE_CARD_REPORTED__CARD_TYPE__WEATHER_ALERT = 5;
    public static final int SMART_SPACE_CARD_REPORTED__DISPLAY_SURFACE__AOD = 3;
    public static final int SMART_SPACE_CARD_REPORTED__DISPLAY_SURFACE__DEFAULT_SURFACE = 0;
    public static final int SMART_SPACE_CARD_REPORTED__DISPLAY_SURFACE__DREAM_OVERLAY = 5;
    public static final int SMART_SPACE_CARD_REPORTED__DISPLAY_SURFACE__HOMESCREEN = 1;
    public static final int SMART_SPACE_CARD_REPORTED__DISPLAY_SURFACE__LOCKSCREEN = 2;
    public static final int SMART_SPACE_CARD_REPORTED__DISPLAY_SURFACE__SHADE = 4;
    public static final int STYLE_UICHANGED__ACTION__APP_LAUNCHED = 22;
    public static final int STYLE_UICHANGED__ACTION__COLOR_PRESET_APPLIED = 26;
    public static final int STYLE_UICHANGED__ACTION__COLOR_WALLPAPER_HOME_APPLIED = 23;
    public static final int STYLE_UICHANGED__ACTION__COLOR_WALLPAPER_HOME_LOCK_APPLIED = 25;
    public static final int STYLE_UICHANGED__ACTION__COLOR_WALLPAPER_LOCK_APPLIED = 24;
    public static final int STYLE_UICHANGED__ACTION__DEFAULT_ACTION = 0;
    public static final int STYLE_UICHANGED__ACTION__LIVE_WALLPAPER_APPLIED = 16;
    public static final int STYLE_UICHANGED__ACTION__LIVE_WALLPAPER_CUSTOMIZE_SELECT = 18;
    public static final int STYLE_UICHANGED__ACTION__LIVE_WALLPAPER_DELETE_FAILED = 15;
    public static final int STYLE_UICHANGED__ACTION__LIVE_WALLPAPER_DELETE_SUCCESS = 14;
    public static final int STYLE_UICHANGED__ACTION__LIVE_WALLPAPER_DOWNLOAD_CANCELLED = 13;
    public static final int STYLE_UICHANGED__ACTION__LIVE_WALLPAPER_DOWNLOAD_FAILED = 12;
    public static final int STYLE_UICHANGED__ACTION__LIVE_WALLPAPER_DOWNLOAD_SUCCESS = 11;
    public static final int STYLE_UICHANGED__ACTION__LIVE_WALLPAPER_EFFECT_SHOW = 21;
    public static final int STYLE_UICHANGED__ACTION__LIVE_WALLPAPER_INFO_SELECT = 17;
    public static final int STYLE_UICHANGED__ACTION__LIVE_WALLPAPER_QUESTIONNAIRE_APPLIED = 20;
    public static final int STYLE_UICHANGED__ACTION__LIVE_WALLPAPER_QUESTIONNAIRE_SELECT = 19;
    public static final int STYLE_UICHANGED__ACTION__ONRESUME = 1;
    public static final int STYLE_UICHANGED__ACTION__ONSTOP = 2;
    public static final int STYLE_UICHANGED__ACTION__PICKER_APPLIED = 4;
    public static final int STYLE_UICHANGED__ACTION__PICKER_SELECT = 3;
    public static final int STYLE_UICHANGED__ACTION__SNAPSHOT = 28;
    public static final int STYLE_UICHANGED__ACTION__WALLPAPER_APPLIED = 7;
    public static final int STYLE_UICHANGED__ACTION__WALLPAPER_DOWNLOAD = 9;
    public static final int STYLE_UICHANGED__ACTION__WALLPAPER_EFFECT_APPLIED = 27;
    public static final int STYLE_UICHANGED__ACTION__WALLPAPER_EFFECT_FG_DOWNLOAD = 30;
    public static final int STYLE_UICHANGED__ACTION__WALLPAPER_EFFECT_PROBE = 29;
    public static final int STYLE_UICHANGED__ACTION__WALLPAPER_EXPLORE = 8;
    public static final int STYLE_UICHANGED__ACTION__WALLPAPER_OPEN_CATEGORY = 5;
    public static final int STYLE_UICHANGED__ACTION__WALLPAPER_REMOVE = 10;
    public static final int STYLE_UICHANGED__ACTION__WALLPAPER_SELECT = 6;
    public static final int STYLE_UICHANGED__DATE_PREFERENCE__DATE_MANUAL = 2;
    public static final int STYLE_UICHANGED__DATE_PREFERENCE__DATE_PREFERENCE_UNSPECIFIED = 0;
    public static final int STYLE_UICHANGED__DATE_PREFERENCE__DATE_UNAVAILABLE = 1;
    public static final int STYLE_UICHANGED__EFFECT_PREFERENCE__EFFECT_APPLIED_ABORTED = 4;
    public static final int STYLE_UICHANGED__EFFECT_PREFERENCE__EFFECT_APPLIED_OFF = 3;
    public static final int STYLE_UICHANGED__EFFECT_PREFERENCE__EFFECT_APPLIED_ON_FAILED = 2;
    public static final int STYLE_UICHANGED__EFFECT_PREFERENCE__EFFECT_APPLIED_ON_SUCCESS = 1;
    public static final int STYLE_UICHANGED__EFFECT_PREFERENCE__EFFECT_APPLIED_STARTED = 5;
    public static final int STYLE_UICHANGED__EFFECT_PREFERENCE__EFFECT_PREFERENCE_UNSPECIFIED = 0;
    public static final int STYLE_UICHANGED__LAUNCHED_PREFERENCE__LAUNCHED_CROP_AND_SET_ACTION = 6;
    public static final int STYLE_UICHANGED__LAUNCHED_PREFERENCE__LAUNCHED_DEEP_LINK = 7;
    public static final int STYLE_UICHANGED__LAUNCHED_PREFERENCE__LAUNCHED_LAUNCHER = 1;
    public static final int STYLE_UICHANGED__LAUNCHED_PREFERENCE__LAUNCHED_LAUNCH_ICON = 5;
    public static final int STYLE_UICHANGED__LAUNCHED_PREFERENCE__LAUNCHED_PREFERENCE_UNSPECIFIED = 0;
    public static final int STYLE_UICHANGED__LAUNCHED_PREFERENCE__LAUNCHED_SETTINGS = 2;
    public static final int STYLE_UICHANGED__LAUNCHED_PREFERENCE__LAUNCHED_SETTINGS_SEARCH = 8;
    public static final int STYLE_UICHANGED__LAUNCHED_PREFERENCE__LAUNCHED_SUW = 3;
    public static final int STYLE_UICHANGED__LAUNCHED_PREFERENCE__LAUNCHED_TIPS = 4;
    public static final int STYLE_UICHANGED__LOCATION_PREFERENCE__LOCATION_CURRENT = 2;
    public static final int STYLE_UICHANGED__LOCATION_PREFERENCE__LOCATION_MANUAL = 3;
    public static final int STYLE_UICHANGED__LOCATION_PREFERENCE__LOCATION_PREFERENCE_UNSPECIFIED = 0;
    public static final int STYLE_UICHANGED__LOCATION_PREFERENCE__LOCATION_UNAVAILABLE = 1;
    public static final int STYLE_UI_CHANGED = 179;
    public static final int TASK_MANAGER_EVENT_REPORTED = 450;
    public static final int TASK_MANAGER_EVENT_REPORTED__EVENT__STOPPED = 2;
    public static final int TASK_MANAGER_EVENT_REPORTED__EVENT__VIEWED = 1;
    public static final int UI_EVENT_REPORTED = 90;

    public static StatsEvent buildStatsEvent(int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeInt(i8);
        newBuilder.writeInt(i9);
        newBuilder.writeInt(i10);
        newBuilder.writeInt(i11);
        newBuilder.writeInt(i12);
        newBuilder.writeInt(i13);
        newBuilder.writeInt(i14);
        newBuilder.writeInt(i15);
        newBuilder.writeInt(i16);
        newBuilder.writeInt(i17);
        newBuilder.writeInt(i18);
        newBuilder.writeInt(i19);
        newBuilder.writeInt(i20);
        newBuilder.writeInt(i21);
        newBuilder.writeInt(i22);
        newBuilder.writeInt(i23);
        return newBuilder.build();
    }

    public static void write(int i4, int i5) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, byte[] bArr) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        if (bArr == null) {
            bArr = new byte[0];
        }
        newBuilder.writeByteArray(bArr);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, int i7, byte[] bArr, boolean z4, int i8, int i9, int i10, int i11, String str, String str2, int i12, int i13, int i14, int i15, int i16, int i17, int i18, boolean z5, int i19, int i20, int i21, String str3, int i22, int i23, int i24, byte[] bArr2, int i25) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeByteArray(bArr == null ? new byte[0] : bArr);
        newBuilder.writeBoolean(z4);
        newBuilder.writeInt(i8);
        newBuilder.writeInt(i9);
        newBuilder.writeInt(i10);
        newBuilder.writeInt(i11);
        if (19 == i4) {
            newBuilder.addBooleanAnnotation((byte) 1, true);
        }
        newBuilder.writeString(str);
        newBuilder.writeString(str2);
        newBuilder.writeInt(i12);
        newBuilder.writeInt(i13);
        newBuilder.writeInt(i14);
        newBuilder.writeInt(i15);
        newBuilder.writeInt(i16);
        newBuilder.writeInt(i17);
        newBuilder.writeInt(i18);
        newBuilder.writeBoolean(z5);
        newBuilder.writeInt(i19);
        newBuilder.writeInt(i20);
        newBuilder.writeInt(i21);
        newBuilder.writeString(str3);
        newBuilder.writeInt(i22);
        newBuilder.writeInt(i23);
        newBuilder.writeInt(i24);
        newBuilder.writeByteArray(bArr2 == null ? new byte[0] : bArr2);
        newBuilder.writeInt(i25);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static StatsEvent buildStatsEvent(int i4, int i5, int i6, int i7, int i8, String str, String str2, int i9, int i10, int i11, int i12, int i13, int i14, int i15, boolean z4, int i16, int i17, int i18, int i19, byte[] bArr, boolean z5) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeInt(i8);
        if (10108 == i4) {
            newBuilder.addBooleanAnnotation((byte) 1, true);
        }
        newBuilder.writeString(str);
        newBuilder.writeString(str2);
        newBuilder.writeInt(i9);
        newBuilder.writeInt(i10);
        newBuilder.writeInt(i11);
        newBuilder.writeInt(i12);
        newBuilder.writeInt(i13);
        newBuilder.writeInt(i14);
        newBuilder.writeInt(i15);
        newBuilder.writeBoolean(z4);
        newBuilder.writeInt(i16);
        newBuilder.writeInt(i17);
        newBuilder.writeInt(i18);
        newBuilder.writeInt(i19);
        newBuilder.writeByteArray(bArr == null ? new byte[0] : bArr);
        newBuilder.writeBoolean(z5);
        return newBuilder.build();
    }

    public static void write(int i4, int i5, int i6, int i7, int i8, boolean z4) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeInt(i8);
        if (349 == i4) {
            newBuilder.addBooleanAnnotation((byte) 1, true);
        }
        newBuilder.writeBoolean(z4);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, int i7, int i8, int i9, boolean z4, int i10, int i11) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeInt(i8);
        newBuilder.writeInt(i9);
        newBuilder.writeBoolean(z4);
        newBuilder.writeInt(i10);
        if (716 == i4) {
            newBuilder.addBooleanAnnotation((byte) 1, true);
        }
        newBuilder.writeInt(i11);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, byte[] bArr, byte[] bArr2) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeInt(i8);
        newBuilder.writeInt(i9);
        newBuilder.writeInt(i10);
        newBuilder.writeInt(i11);
        newBuilder.writeInt(i12);
        if (352 == i4) {
            newBuilder.addBooleanAnnotation((byte) 1, true);
        }
        newBuilder.writeInt(i13);
        newBuilder.writeInt(i14);
        newBuilder.writeInt(i15);
        if (bArr == null) {
            bArr = new byte[0];
        }
        newBuilder.writeByteArray(bArr);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        newBuilder.writeByteArray(bArr2);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, long j4, int i25) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeInt(i8);
        newBuilder.writeInt(i9);
        newBuilder.writeInt(i10);
        newBuilder.writeInt(i11);
        newBuilder.writeInt(i12);
        newBuilder.writeInt(i13);
        newBuilder.writeInt(i14);
        newBuilder.writeInt(i15);
        newBuilder.writeInt(i16);
        newBuilder.writeInt(i17);
        newBuilder.writeInt(i18);
        newBuilder.writeInt(i19);
        newBuilder.writeInt(i20);
        newBuilder.writeInt(i21);
        newBuilder.writeInt(i22);
        newBuilder.writeInt(i23);
        newBuilder.writeInt(i24);
        newBuilder.writeLong(j4);
        newBuilder.writeInt(i25);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, float f4, String str, int i14) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeInt(i8);
        newBuilder.writeInt(i9);
        newBuilder.writeInt(i10);
        newBuilder.writeInt(i11);
        newBuilder.writeInt(i12);
        newBuilder.writeInt(i13);
        newBuilder.writeFloat(f4);
        newBuilder.writeString(str);
        newBuilder.writeInt(i14);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, int i7, int i8, String str, int i9, int i10, int i11, int i12, boolean z4, boolean z5) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeInt(i8);
        newBuilder.writeString(str);
        newBuilder.writeInt(i9);
        newBuilder.writeInt(i10);
        newBuilder.writeInt(i11);
        newBuilder.writeInt(i12);
        newBuilder.writeBoolean(z4);
        newBuilder.writeBoolean(z5);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, int i7, int i8, String str, String str2, int i9, int i10, int i11, int i12, int i13, int i14, int i15, boolean z4, int i16, int i17, int i18, int i19, int i20, byte[] bArr) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeInt(i8);
        if (262 == i4) {
            newBuilder.addBooleanAnnotation((byte) 1, true);
        }
        newBuilder.writeString(str);
        newBuilder.writeString(str2);
        newBuilder.writeInt(i9);
        newBuilder.writeInt(i10);
        newBuilder.writeInt(i11);
        newBuilder.writeInt(i12);
        newBuilder.writeInt(i13);
        newBuilder.writeInt(i14);
        newBuilder.writeInt(i15);
        newBuilder.writeBoolean(z4);
        newBuilder.writeInt(i16);
        newBuilder.writeInt(i17);
        newBuilder.writeInt(i18);
        newBuilder.writeInt(i19);
        newBuilder.writeInt(i20);
        newBuilder.writeByteArray(bArr == null ? new byte[0] : bArr);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, int i7, int i8, int[] iArr, int[] iArr2, boolean[] zArr, int[] iArr3) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeInt(i8);
        if (iArr == null) {
            iArr = new int[0];
        }
        newBuilder.writeIntArray(iArr);
        if (iArr2 == null) {
            iArr2 = new int[0];
        }
        newBuilder.writeIntArray(iArr2);
        if (zArr == null) {
            zArr = new boolean[0];
        }
        newBuilder.writeBooleanArray(zArr);
        if (iArr3 == null) {
            iArr3 = new int[0];
        }
        newBuilder.writeIntArray(iArr3);
        if (547 == i4) {
            newBuilder.addBooleanAnnotation((byte) 1, true);
        }
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, int i7, long j4, int i8, int i9, int i10, int i11) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeLong(j4);
        newBuilder.writeInt(i8);
        newBuilder.writeInt(i9);
        newBuilder.writeInt(i10);
        newBuilder.writeInt(i11);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, int i7, float f4, float f5, float f6, float f7, float f8, long j4, long j5, boolean z4) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeFloat(f4);
        newBuilder.writeFloat(f5);
        newBuilder.writeFloat(f6);
        newBuilder.writeFloat(f7);
        newBuilder.writeFloat(f8);
        newBuilder.writeLong(j4);
        newBuilder.writeLong(j5);
        newBuilder.writeBoolean(z4);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, long j4) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        if (450 == i4) {
            newBuilder.addBooleanAnnotation((byte) 1, true);
        }
        if (592 == i4) {
            newBuilder.addBooleanAnnotation((byte) 1, true);
        }
        newBuilder.writeInt(i6);
        newBuilder.writeLong(j4);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, String str, boolean z4) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        newBuilder.writeString(str);
        newBuilder.writeBoolean(z4);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, int i6, String str, int i7) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeInt(i6);
        if (90 == i4) {
            newBuilder.addBooleanAnnotation((byte) 1, true);
        }
        newBuilder.writeString(str);
        newBuilder.writeInt(i7);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, int i5, String str, int i6, int i7, boolean z4) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeInt(i5);
        newBuilder.writeString(str);
        newBuilder.writeInt(i6);
        newBuilder.writeInt(i7);
        newBuilder.writeBoolean(z4);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, float f4, float f5, int i5) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeFloat(f4);
        newBuilder.writeFloat(f5);
        newBuilder.writeInt(i5);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }

    public static void write(int i4, String str, String str2) {
        StatsEvent.Builder newBuilder = StatsEvent.newBuilder();
        newBuilder.setAtomId(i4);
        newBuilder.writeString(str);
        newBuilder.writeString(str2);
        newBuilder.usePooledBuffer();
        StatsLog.write(newBuilder.build());
    }
}
