package com.android.launcher3.config;

import I0.a;
import I0.b;
import com.android.launcher3.uioverrides.flags.FlagsFactory;
import java.util.function.Predicate;
import java.util.function.ToIntFunction;
/* loaded from: classes.dex */
public final class FeatureFlags {
    public static final BooleanFlag ALL_APPS_GONE_VISIBILITY;
    public static final BooleanFlag ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS;
    public static final BooleanFlag CHANGE_MODEL_DELEGATE_LOADING_ORDER;
    public static final BooleanFlag COLLECT_SEARCH_HISTORY;
    public static final BooleanFlag CONTINUOUS_VIEW_TREE_CAPTURE;
    public static final BooleanFlag ENABLE_ALL_APPS_BUTTON_IN_HOTSEAT;
    public static final BooleanFlag ENABLE_ALL_APPS_FROM_OVERVIEW;
    public static final BooleanFlag ENABLE_ALL_APPS_RV_PREINFLATION;
    public static final BooleanFlag ENABLE_ALL_APPS_SEARCH_IN_TASKBAR;
    public static final BooleanFlag ENABLE_APP_ICON_FOR_INLINE_SHORTCUTS;
    public static final BooleanFlag ENABLE_APP_PAIRS;
    public static final BooleanFlag ENABLE_BACK_SWIPE_HOME_ANIMATION;
    public static final BooleanFlag ENABLE_BACK_SWIPE_LAUNCHER_ANIMATION;
    public static final BooleanFlag ENABLE_CACHED_WIDGET;
    public static final BooleanFlag ENABLE_CURSOR_HOVER_STATES;
    public static final BooleanFlag ENABLE_DEVICE_SEARCH;
    public static final BooleanFlag ENABLE_DEVICE_SEARCH_PERFORMANCE_LOGGING;
    public static final BooleanFlag ENABLE_DISMISS_PREDICTION_UNDO;
    public static final BooleanFlag ENABLE_DOWNLOAD_APP_UX_V2;
    public static final BooleanFlag ENABLE_DOWNLOAD_APP_UX_V3;
    public static final BooleanFlag ENABLE_DYNAMIC_TASKBAR_THRESHOLDS;
    public static final BooleanFlag ENABLE_ENFORCED_ROUNDED_CORNERS;
    public static final BooleanFlag ENABLE_EXPANDING_PAUSE_WORK_BUTTON;
    public static final BooleanFlag ENABLE_FLOATING_SEARCH_BAR;
    public static final BooleanFlag ENABLE_FORCED_MONO_ICON;
    public static final BooleanFlag ENABLE_GRID_ONLY_OVERVIEW;
    public static final BooleanFlag ENABLE_HIDE_HEADER;
    public static final BooleanFlag ENABLE_ICON_IN_TEXT_HEADER;
    public static final BooleanFlag ENABLE_ICON_LABEL_AUTO_SCALING;
    public static final BooleanFlag ENABLE_KEYBOARD_QUICK_SWITCH;
    public static final BooleanFlag ENABLE_KEYBOARD_TASKBAR_TOGGLE;
    public static final BooleanFlag ENABLE_LONG_PRESS_NAV_HANDLE;
    public static final BooleanFlag ENABLE_MATERIAL_U_POPUP;
    public static final BooleanFlag ENABLE_MULTI_DISPLAY_PARTIAL_DEPTH;
    public static final BooleanFlag ENABLE_MULTI_INSTANCE;
    public static final BooleanFlag ENABLE_NEW_GESTURE_NAV_TUTORIAL;
    public static final BooleanFlag ENABLE_NEW_MIGRATION_LOGIC;
    public static final BooleanFlag ENABLE_OVERLAY_CONNECTION_OPTIM;
    public static final BooleanFlag ENABLE_PEOPLE_TILE_PREVIEW;
    public static final BooleanFlag ENABLE_PREMIUM_HAPTICS_ALL_APPS;
    public static final BooleanFlag ENABLE_REGION_SAMPLING;
    public static final BooleanFlag ENABLE_RESPONSIVE_WORKSPACE;
    public static final BooleanFlag ENABLE_SCRIM_FOR_APP_LAUNCH;
    public static final BooleanFlag ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES;
    public static final BooleanFlag ENABLE_SEARCH_RESULT_LAUNCH_TRANSITION;
    public static final BooleanFlag ENABLE_SEARCH_UNINSTALLED_APPS;
    public static final BooleanFlag ENABLE_SHOW_KEYBOARD_OPTION_IN_ALL_APPS;
    public static final BooleanFlag ENABLE_SPLIT_FROM_DESKTOP_TO_WORKSPACE;
    public static final BooleanFlag ENABLE_SPLIT_FROM_FULLSCREEN_WITH_KEYBOARD_SHORTCUTS;
    public static final BooleanFlag ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE;
    public static final BooleanFlag ENABLE_TASKBAR_PINNING;
    public static final BooleanFlag ENABLE_TRACKPAD_GESTURE;
    public static final BooleanFlag ENABLE_TRANSIENT_TASKBAR;
    public static final BooleanFlag ENABLE_TWOLINE_ALLAPPS;
    public static final BooleanFlag ENABLE_TWOLINE_DEVICESEARCH;
    public static final BooleanFlag ENABLE_WIDGET_HOST_IN_BACKGROUND;
    public static final BooleanFlag ENABLE_WORKSPACE_LOADING_OPTIMIZATION;
    public static final BooleanFlag FOLDABLE_SINGLE_PAGE;
    public static final BooleanFlag FOLDER_NAME_MAJORITY_RANKING;
    public static final BooleanFlag IME_STICKY_SNACKBAR_EDU;
    public static final BooleanFlag INJECT_FALLBACK_APP_CORPUS_RESULTS;
    public static final BooleanFlag KEYGUARD_ANIMATION;
    public static final BooleanFlag LARGE_SCREEN_WIDGET_PICKER;
    public static final BooleanFlag MULTI_SELECT_EDIT_MODE;
    public static final BooleanFlag PREEMPTIVE_UNFOLD_ANIMATION_START;
    public static final BooleanFlag PROMISE_APPS_IN_ALL_APPS;
    public static final BooleanFlag SCROLL_TOP_TO_RESET;
    public static final BooleanFlag SECONDARY_DRAG_N_DROP_TO_PIN;
    public static final BooleanFlag SEPARATE_RECENTS_ACTIVITY;
    public static final BooleanFlag SHOW_DOT_PAGINATION;
    public static final BooleanFlag USE_LOCAL_ICON_OVERRIDES;
    public static final BooleanFlag USE_SEARCH_REQUEST_TIMEOUT_OVERRIDES;
    public static Predicate sBooleanReader = new a();
    public static ToIntFunction sIntReader = new b();

    /* loaded from: classes.dex */
    public class BooleanFlag {
        private final boolean mCurrentValue;

        public BooleanFlag(boolean z4) {
            this.mCurrentValue = z4;
        }

        public final boolean get() {
            return FeatureFlags.sBooleanReader.test(this);
        }
    }

    /* loaded from: classes.dex */
    public enum FlagState {
        ENABLED,
        DISABLED,
        TEAMFOOD
    }

    /* loaded from: classes.dex */
    public final class IntFlag {
        private final int mCurrentValue;

        public IntFlag(int i4) {
            this.mCurrentValue = i4;
        }
    }

    static {
        FlagState flagState = FlagState.ENABLED;
        ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES = FlagsFactory.getReleaseFlag("ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES", flagState);
        ENABLE_SEARCH_RESULT_LAUNCH_TRANSITION = FlagsFactory.getReleaseFlag("ENABLE_SEARCH_RESULT_LAUNCH_TRANSITION", flagState);
        FlagState flagState2 = FlagState.DISABLED;
        ENABLE_MULTI_DISPLAY_PARTIAL_DEPTH = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_DISMISS_PREDICTION_UNDO = FlagsFactory.getDebugFlag(flagState2);
        CONTINUOUS_VIEW_TREE_CAPTURE = FlagsFactory.getDebugFlag(flagState);
        ENABLE_WORKSPACE_LOADING_OPTIMIZATION = FlagsFactory.getDebugFlag(flagState2);
        CHANGE_MODEL_DELEGATE_LOADING_ORDER = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_FLOATING_SEARCH_BAR = FlagsFactory.getReleaseFlag("ENABLE_FLOATING_SEARCH_BAR", flagState2);
        ENABLE_ALL_APPS_FROM_OVERVIEW = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_SHOW_KEYBOARD_OPTION_IN_ALL_APPS = FlagsFactory.getReleaseFlag("ENABLE_SHOW_KEYBOARD_OPTION_IN_ALL_APPS", flagState);
        ENABLE_TWOLINE_DEVICESEARCH = FlagsFactory.getDebugFlag(flagState);
        ENABLE_ICON_IN_TEXT_HEADER = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_PREMIUM_HAPTICS_ALL_APPS = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_ALL_APPS_SEARCH_IN_TASKBAR = FlagsFactory.getDebugFlag(flagState2);
        SECONDARY_DRAG_N_DROP_TO_PIN = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_FORCED_MONO_ICON = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_MATERIAL_U_POPUP = FlagsFactory.getDebugFlag(flagState);
        ENABLE_DOWNLOAD_APP_UX_V2 = FlagsFactory.getReleaseFlag("ENABLE_DOWNLOAD_APP_UX_V2", flagState);
        ENABLE_DOWNLOAD_APP_UX_V3 = FlagsFactory.getDebugFlag(flagState);
        SHOW_DOT_PAGINATION = FlagsFactory.getDebugFlag(flagState);
        LARGE_SCREEN_WIDGET_PICKER = FlagsFactory.getDebugFlag(flagState);
        MULTI_SELECT_EDIT_MODE = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_BACK_SWIPE_LAUNCHER_ANIMATION = FlagsFactory.getDebugFlag(flagState2);
        FOLDABLE_SINGLE_PAGE = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_MULTI_INSTANCE = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_DEVICE_SEARCH_PERFORMANCE_LOGGING = FlagsFactory.getReleaseFlag("ENABLE_DEVICE_SEARCH_PERFORMANCE_LOGGING", flagState2);
        ENABLE_TRANSIENT_TASKBAR = FlagsFactory.getDebugFlag(flagState);
        PROMISE_APPS_IN_ALL_APPS = FlagsFactory.getDebugFlag(flagState2);
        KEYGUARD_ANIMATION = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_DEVICE_SEARCH = FlagsFactory.getReleaseFlag("ENABLE_DEVICE_SEARCH", flagState);
        ENABLE_HIDE_HEADER = FlagsFactory.getReleaseFlag("ENABLE_HIDE_HEADER", flagState);
        ENABLE_EXPANDING_PAUSE_WORK_BUTTON = FlagsFactory.getDebugFlag(flagState2);
        COLLECT_SEARCH_HISTORY = FlagsFactory.getReleaseFlag("COLLECT_SEARCH_HISTORY", flagState2);
        ENABLE_TWOLINE_ALLAPPS = FlagsFactory.getDebugFlag(flagState2);
        IME_STICKY_SNACKBAR_EDU = FlagsFactory.getDebugFlag(flagState);
        ENABLE_PEOPLE_TILE_PREVIEW = FlagsFactory.getDebugFlag(flagState2);
        FOLDER_NAME_MAJORITY_RANKING = FlagsFactory.getDebugFlag(flagState);
        INJECT_FALLBACK_APP_CORPUS_RESULTS = FlagsFactory.getReleaseFlag("INJECT_FALLBACK_APP_CORPUS_RESULTS", flagState2);
        FlagState flagState3 = FlagState.TEAMFOOD;
        ENABLE_LONG_PRESS_NAV_HANDLE = FlagsFactory.getReleaseFlag("ENABLE_LONG_PRESS_NAV_HANDLE_MPR", flagState3);
        ENABLE_TASKBAR_PINNING = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_APP_PAIRS = FlagsFactory.getDebugFlag(flagState2);
        SCROLL_TOP_TO_RESET = FlagsFactory.getReleaseFlag("SCROLL_TOP_TO_RESET", flagState);
        ENABLE_SEARCH_UNINSTALLED_APPS = FlagsFactory.getReleaseFlag("ENABLE_SEARCH_UNINSTALLED_APPS", flagState);
        ENABLE_SCRIM_FOR_APP_LAUNCH = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_BACK_SWIPE_HOME_ANIMATION = FlagsFactory.getDebugFlag(flagState);
        ENABLE_DYNAMIC_TASKBAR_THRESHOLDS = FlagsFactory.getDebugFlag(flagState);
        ENABLE_APP_ICON_FOR_INLINE_SHORTCUTS = FlagsFactory.getDebugFlag(flagState2);
        PREEMPTIVE_UNFOLD_ANIMATION_START = FlagsFactory.getDebugFlag(flagState);
        ENABLE_GRID_ONLY_OVERVIEW = FlagsFactory.getDebugFlag(flagState3);
        ENABLE_CURSOR_HOVER_STATES = FlagsFactory.getDebugFlag(flagState3);
        ENABLE_NEW_MIGRATION_LOGIC = FlagsFactory.getDebugFlag(flagState);
        ENABLE_CACHED_WIDGET = FlagsFactory.getDebugFlag(flagState);
        ENABLE_NEW_GESTURE_NAV_TUTORIAL = FlagsFactory.getDebugFlag(flagState);
        ENABLE_WIDGET_HOST_IN_BACKGROUND = FlagsFactory.getDebugFlag(flagState);
        ENABLE_OVERLAY_CONNECTION_OPTIM = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_REGION_SAMPLING = FlagsFactory.getDebugFlag(flagState2);
        ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS = FlagsFactory.getDebugFlag(flagState2);
        SEPARATE_RECENTS_ACTIVITY = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_ENFORCED_ROUNDED_CORNERS = FlagsFactory.getReleaseFlag("ENABLE_ENFORCED_ROUNDED_CORNERS", flagState);
        ENABLE_ICON_LABEL_AUTO_SCALING = FlagsFactory.getDebugFlag(flagState);
        USE_LOCAL_ICON_OVERRIDES = FlagsFactory.getDebugFlag(flagState);
        ENABLE_SPLIT_FROM_FULLSCREEN_WITH_KEYBOARD_SHORTCUTS = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_SPLIT_FROM_DESKTOP_TO_WORKSPACE = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_TRACKPAD_GESTURE = FlagsFactory.getDebugFlag(flagState);
        ENABLE_ALL_APPS_BUTTON_IN_HOTSEAT = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_KEYBOARD_QUICK_SWITCH = FlagsFactory.getDebugFlag(flagState);
        ENABLE_KEYBOARD_TASKBAR_TOGGLE = FlagsFactory.getDebugFlag(flagState);
        USE_SEARCH_REQUEST_TIMEOUT_OVERRIDES = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_RESPONSIVE_WORKSPACE = FlagsFactory.getDebugFlag(flagState2);
        ENABLE_ALL_APPS_RV_PREINFLATION = FlagsFactory.getDebugFlag(flagState);
        ALL_APPS_GONE_VISIBILITY = FlagsFactory.getDebugFlag(flagState);
    }
}
