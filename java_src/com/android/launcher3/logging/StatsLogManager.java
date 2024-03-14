package com.android.launcher3.logging;

import android.content.Context;
import android.view.View;
import androidx.slice.SliceItem;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$FromState;
import com.android.launcher3.logger.LauncherAtom$Slice;
import com.android.launcher3.logger.LauncherAtom$ToState;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.views.ActivityContext;
import com.android.quickstep.util.SplitAnimationTimings;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.SysUiStatsLog;
/* loaded from: classes.dex */
public class StatsLogManager implements ResourceBasedOverride {
    public static final int LAUNCHER_STATE_ALLAPPS = 4;
    public static final int LAUNCHER_STATE_BACKGROUND = 1;
    public static final int LAUNCHER_STATE_HOME = 2;
    public static final int LAUNCHER_STATE_OVERVIEW = 3;
    public static final int LAUNCHER_STATE_UNCHANGED = 5;
    public static final int LAUNCHER_STATE_UNSPECIFIED = 0;
    protected ActivityContext mActivityContext = null;
    protected Context mContext = null;
    private InstanceId mInstanceId;
    private KeyboardStateManager mKeyboardStateManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.logging.StatsLogManager$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements StatsLogger {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.logging.StatsLogManager$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements StatsLatencyLogger {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.logging.StatsLogManager$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 implements StatsImpressionLogger {
    }

    /* loaded from: classes.dex */
    public interface EventEnum {
        int getId();
    }

    /* loaded from: classes.dex */
    public enum LauncherEvent implements EventEnum {
        IGNORE(-1),
        LAUNCHER_APP_LAUNCH_TAP(338),
        LAUNCHER_TASK_LAUNCH_TAP(339),
        LAUNCHER_NOTIFICATION_LAUNCH_TAP(516),
        LAUNCHER_TASK_LAUNCH_SWIPE_DOWN(340),
        LAUNCHER_TASK_DISMISS_SWIPE_UP(341),
        LAUNCHER_ITEM_DRAG_STARTED(383),
        LAUNCHER_ITEM_DROP_COMPLETED(385),
        LAUNCHER_ITEM_DROP_COMPLETED_ON_FOLDER_ICON(697),
        LAUNCHER_ITEM_DROP_FOLDER_CREATED(386),
        LAUNCHER_FOLDER_AUTO_LABELED(591),
        LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_PRIMARY(SysUiStatsLog.DEVICE_LOG_ACCESS_EVENT_REPORTED),
        LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_SUGGESTIONS(593),
        LAUNCHER_FOLDER_LABEL_UPDATED(460),
        LAUNCHER_WORKSPACE_LONGPRESS(461),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(462),
        LAUNCHER_SETTINGS_BUTTON_TAP_OR_LONGPRESS(463),
        LAUNCHER_WIDGETSTRAY_BUTTON_TAP_OR_LONGPRESS(464),
        LAUNCHER_WIDGETSTRAY_APP_EXPANDED(818),
        LAUNCHER_WIDGETSTRAY_SEARCHED(819),
        LAUNCHER_ITEM_DROPPED_ON_REMOVE(465),
        LAUNCHER_ITEM_DROPPED_ON_CANCEL(SysUiStatsLog.MEDIAOUTPUT_OP_INTERACTION_REPORT),
        LAUNCHER_ITEM_DROPPED_ON_DONT_SUGGEST(467),
        LAUNCHER_ITEM_DROPPED_ON_UNINSTALL(468),
        LAUNCHER_ITEM_UNINSTALL_COMPLETED(469),
        LAUNCHER_ITEM_UNINSTALL_CANCELLED(470),
        LAUNCHER_TASK_ICON_TAP_OR_LONGPRESS(SplitAnimationTimings.PHONE_ENTER_DURATION),
        LAUNCHER_SYSTEM_SHORTCUT_WIDGETS_TAP(514),
        LAUNCHER_SYSTEM_SHORTCUT_APP_INFO_TAP(515),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(518),
        LAUNCHER_SYSTEM_SHORTCUT_FREE_FORM_TAP(519),
        LAUNCHER_SYSTEM_SHORTCUT_PAUSE_TAP(521),
        LAUNCHER_SYSTEM_SHORTCUT_PIN_TAP(522),
        LAUNCHER_ALL_APPS_EDU_SHOWN(523),
        LAUNCHER_FOLDER_OPEN(551),
        LAUNCHER_HOTSEAT_EDU_SEEN(479),
        LAUNCHER_HOTSEAT_EDU_ACCEPT(480),
        LAUNCHER_HOTSEAT_EDU_DENY(481),
        LAUNCHER_HOTSEAT_EDU_ONLY_TIP(482),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(552),
        LAUNCHER_HOTSEAT_RANKED(553),
        LAUNCHER_ONSTOP(562),
        LAUNCHER_ONRESUME(563),
        LAUNCHER_SWIPELEFT(564),
        LAUNCHER_SWIPERIGHT(565),
        LAUNCHER_UNKNOWN_SWIPEUP(566),
        LAUNCHER_UNKNOWN_SWIPEDOWN(567),
        LAUNCHER_ALLAPPS_OPEN_UP(568),
        LAUNCHER_ALLAPPS_CLOSE_DOWN(569),
        LAUNCHER_ALLAPPS_CLOSE_TAP_OUTSIDE(941),
        LAUNCHER_OVERVIEW_GESTURE(570),
        LAUNCHER_QUICKSWITCH_LEFT(571),
        LAUNCHER_QUICKSWITCH_RIGHT(572),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(573),
        LAUNCHER_HOME_GESTURE(574),
        LAUNCHER_WORKSPACE_SNAPSHOT(579),
        LAUNCHER_OVERVIEW_ACTIONS_SCREENSHOT(580),
        LAUNCHER_OVERVIEW_ACTIONS_SELECT(581),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(582),
        LAUNCHER_OVERVIEW_ACTIONS_SPLIT(895),
        LAUNCHER_SELECT_MODE_CLOSE(583),
        LAUNCHER_SELECT_MODE_ITEM(584),
        LAUNCHER_NOTIFICATION_DOT_ENABLED(SysUiStatsLog.LOCKSCREEN_SHORTCUT_SELECTED),
        LAUNCHER_NOTIFICATION_DOT_DISABLED(SysUiStatsLog.LOCKSCREEN_SHORTCUT_TRIGGERED),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(613),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(614),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(615),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(616),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(619),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(620),
        LAUNCHER_HOME_SCREEN_SUGGESTIONS_ENABLED(621),
        LAUNCHER_HOME_SCREEN_SUGGESTIONS_DISABLED(622),
        LAUNCHER_NAVIGATION_MODE_3_BUTTON(623),
        LAUNCHER_NAVIGATION_MODE_2_BUTTON(624),
        LAUNCHER_NAVIGATION_MODE_GESTURE_BUTTON(625),
        LAUNCHER_SELECT_MODE_IMAGE(627),
        LAUNCHER_ADD_EXTERNAL_ITEM_START(641),
        LAUNCHER_ADD_EXTERNAL_ITEM_CANCELLED(642),
        LAUNCHER_ADD_EXTERNAL_ITEM_BACK(643),
        LAUNCHER_ADD_EXTERNAL_ITEM_PLACED_AUTOMATICALLY(644),
        LAUNCHER_ADD_EXTERNAL_ITEM_DRAGGED(645),
        LAUNCHER_FOLDER_CONVERTED_TO_ICON(646),
        LAUNCHER_HOTSEAT_PREDICTION_PINNED(647),
        LAUNCHER_UNDO(648),
        LAUNCHER_TASK_CLEAR_ALL(649),
        LAUNCHER_TASK_PREVIEW_LONGPRESS(650),
        LAUNCHER_SWIPE_DOWN_WORKSPACE_NOTISHADE_OPEN(651),
        LAUNCHER_NOTIFICATION_DISMISSED(652),
        LAUNCHER_GRID_SIZE_6(930),
        LAUNCHER_GRID_SIZE_5(662),
        LAUNCHER_GRID_SIZE_4(663),
        LAUNCHER_GRID_SIZE_3(664),
        LAUNCHER_GRID_SIZE_2(665),
        LAUNCHER_ALLAPPS_ENTRY(692),
        LAUNCHER_ALLAPPS_EXIT(693),
        LAUNCHER_ALLAPPS_KEYBOARD_CLOSED(694),
        LAUNCHER_ALLAPPS_SWIPE_TO_PERSONAL_TAB(695),
        LAUNCHER_ALLAPPS_SWIPE_TO_WORK_TAB(696),
        LAUNCHER_SLICE_DEFAULT_ACTION(700),
        LAUNCHER_SLICE_TOGGLE_ON(701),
        LAUNCHER_SLICE_TOGGLE_OFF(702),
        LAUNCHER_SLICE_BUTTON_ACTION(703),
        LAUNCHER_SLICE_SLIDER_ACTION(704),
        LAUNCHER_SLICE_CONTENT_ACTION(705),
        LAUNCHER_SLICE_SEE_MORE_ACTION(706),
        LAUNCHER_SLICE_SELECTION_ACTION(707),
        LAUNCHER_ALLAPPS_FOCUSED_ITEM_SELECTED_WITH_IME(718),
        LAUNCHER_ALLAPPS_ITEM_LONG_PRESSED(719),
        LAUNCHER_ALLAPPS_ENTRY_WITH_DEVICE_SEARCH(720),
        LAUNCHER_ALLAPPS_TAP_ON_PERSONAL_TAB(721),
        LAUNCHER_ALLAPPS_TAP_ON_WORK_TAB(722),
        LAUNCHER_ALLAPPS_VERTICAL_SWIPE_BEGIN(724),
        LAUNCHER_ALLAPPS_VERTICAL_SWIPE_END(725),
        LAUNCHER_OVERVIEW_SHARING_SHOW_URL_INDICATOR(764),
        LAUNCHER_OVERVIEW_SHARING_SHOW_IMAGE_INDICATOR(765),
        LAUNCHER_OVERVIEW_SHARING_URL_INDICATOR_TAP(766),
        LAUNCHER_OVERVIEW_SHARING_IMAGE_INDICATOR_TAP(767),
        LAUNCHER_OVERVIEW_SHARING_IMAGE_LONG_PRESS(768),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(769),
        LAUNCHER_OVERVIEW_SHARING_IMAGE_DRAG(770),
        LAUNCHER_OVERVIEW_SHARING_DROP_URL_TO_TARGET(771),
        LAUNCHER_OVERVIEW_SHARING_DROP_IMAGE_TO_TARGET(772),
        LAUNCHER_OVERVIEW_SHARING_DROP_URL_TO_MORE(773),
        LAUNCHER_OVERVIEW_SHARING_DROP_IMAGE_TO_MORE(774),
        LAUNCHER_OVERVIEW_SHARING_TAP_TARGET_TO_SHARE_URL(775),
        LAUNCHER_OVERVIEW_SHARING_TAP_TARGET_TO_SHARE_IMAGE(776),
        LAUNCHER_OVERVIEW_SHARING_TAP_MORE_TO_SHARE_URL(777),
        LAUNCHER_OVERVIEW_SHARING_TAP_MORE_TO_SHARE_IMAGE(778),
        LAUNCHER_WIDGET_RESIZE_STARTED(820),
        LAUNCHER_WIDGET_RESIZE_COMPLETED(824),
        LAUNCHER_WIDGET_RECONFIGURED(821),
        LAUNCHER_THEMED_ICON_ENABLED(836),
        LAUNCHER_THEMED_ICON_DISABLED(837),
        LAUNCHER_TURN_ON_WORK_APPS_TAP(838),
        LAUNCHER_TURN_OFF_WORK_APPS_TAP(839),
        LAUNCHER_ITEM_DROP_FAILED_INSUFFICIENT_SPACE(872),
        LAUNCHER_TASKBAR_LONGPRESS_HIDE(896),
        LAUNCHER_TASKBAR_LONGPRESS_SHOW(897),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(913),
        LAUNCHER_GESTURE_TUTORIAL_BACK_STEP_SHOWN(959),
        LAUNCHER_GESTURE_TUTORIAL_HOME_STEP_SHOWN(960),
        LAUNCHER_GESTURE_TUTORIAL_OVERVIEW_STEP_SHOWN(961),
        LAUNCHER_GESTURE_TUTORIAL_BACK_STEP_COMPLETED(962),
        LAUNCHER_GESTURE_TUTORIAL_HOME_STEP_COMPLETED(963),
        LAUNCHER_GESTURE_TUTORIAL_OVERVIEW_STEP_COMPLETED(964),
        LAUNCHER_GESTURE_TUTORIAL_SKIPPED(965),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(985),
        LAUNCHER_ALLAPPS_PERSONAL_SCROLLED_UP(1287),
        LAUNCHER_ALLAPPS_PERSONAL_SCROLLED_DOWN(1288),
        LAUNCHER_ALLAPPS_SCROLLED_UNKNOWN_DIRECTION(1231),
        LAUNCHER_TASKBAR_HOME_BUTTON_TAP(1003),
        LAUNCHER_TASKBAR_BACK_BUTTON_TAP(1004),
        LAUNCHER_TASKBAR_OVERVIEW_BUTTON_TAP(1005),
        LAUNCHER_TASKBAR_IME_SWITCHER_BUTTON_TAP(1006),
        LAUNCHER_TASKBAR_A11Y_BUTTON_TAP(1007),
        LAUNCHER_TASKBAR_HOME_BUTTON_LONGPRESS(1008),
        LAUNCHER_TASKBAR_BACK_BUTTON_LONGPRESS(1009),
        LAUNCHER_TASKBAR_OVERVIEW_BUTTON_LONGPRESS(1010),
        LAUNCHER_TASKBAR_A11Y_BUTTON_LONGPRESS(1011),
        LAUNCHER_DISMISS_PREDICTION_UNDO(1035),
        LAUNCHER_ALLAPPS_QUICK_SEARCH_WITH_IME(1047),
        LAUNCHER_TASKBAR_ALLAPPS_BUTTON_TAP(1057),
        /* JADX INFO: Fake field, exist only in values array */
        LAUNCHER_SYSTEM_SHORTCUT_APP_SHARE_TAP(1075),
        LAUNCHER_APP_ICON_MENU_SPLIT_RIGHT_BOTTOM(1199),
        LAUNCHER_APP_ICON_MENU_SPLIT_LEFT_TOP(1200),
        LAUNCHER_ALLAPPS_COUNT(1225),
        LAUNCHER_KEYBOARD_SHORTCUT_SPLIT_RIGHT_BOTTOM(1232),
        LAUNCHER_KEYBOARD_SHORTCUT_SPLIT_LEFT_TOP(1233),
        LAUNCHER_DESKTOP_MODE_SPLIT_RIGHT_BOTTOM(1412),
        LAUNCHER_DESKTOP_MODE_SPLIT_LEFT_TOP(1464),
        LAUNCHER_WORK_FAB_BUTTON_COLLAPSE(1276),
        LAUNCHER_WORK_FAB_BUTTON_EXTEND(1277),
        LAUNCHER_ALLAPPS_SEARCH_SCROLLED_DOWN(1285),
        LAUNCHER_ALLAPPS_SEARCH_SCROLLED_UP(1286),
        LAUNCHER_TRANSIENT_TASKBAR_HIDE(1330),
        LAUNCHER_TRANSIENT_TASKBAR_SHOW(1331),
        LAUNCHER_APP_PAIR_LAUNCH(1374),
        LAUNCHER_APP_PAIR_SAVE(1456),
        LAUNCHER_APP_LAUNCH_PENDING_INTENT(1394);
        
        private final int mId;

        LauncherEvent(int i4) {
            this.mId = i4;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.EventEnum
        public final int getId() {
            return this.mId;
        }
    }

    /* loaded from: classes.dex */
    public enum LauncherLatencyEvent implements EventEnum {
        LAUNCHER_LATENCY_STARTUP_TOTAL_DURATION(1362),
        LAUNCHER_LATENCY_STARTUP_ACTIVITY_ON_CREATE(1363),
        LAUNCHER_LATENCY_STARTUP_VIEW_INFLATION(1364),
        LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_SYNC(1366),
        LAUNCHER_LATENCY_STARTUP_WORKSPACE_LOADER_ASYNC(1367);
        
        private final int mId;

        LauncherLatencyEvent(int i4) {
            this.mId = i4;
        }

        @Override // com.android.launcher3.logging.StatsLogManager.EventEnum
        public final int getId() {
            return this.mId;
        }
    }

    /* loaded from: classes.dex */
    public interface StatsImpressionLogger {

        /* loaded from: classes.dex */
        public enum State {
            UNKNOWN(0),
            ALLAPPS(1),
            SEARCHBOX_WIDGET(2);
            
            private final int mLauncherState;

            State(int i4) {
                this.mLauncherState = i4;
            }

            public final int getLauncherState() {
                return this.mLauncherState;
            }
        }

        default void log(EventEnum eventEnum) {
        }

        default StatsImpressionLogger withAboveKeyboard(boolean z4) {
            return this;
        }

        default StatsImpressionLogger withInstanceId(InstanceId instanceId) {
            return this;
        }

        default StatsImpressionLogger withQueryLength(int i4) {
            return this;
        }

        default StatsImpressionLogger withResultSource(int i4) {
            return this;
        }

        default StatsImpressionLogger withResultType(int i4) {
            return this;
        }

        default StatsImpressionLogger withState(State state) {
            return this;
        }

        default StatsImpressionLogger withUid(int i4) {
            return this;
        }
    }

    /* loaded from: classes.dex */
    public interface StatsLatencyLogger {

        /* loaded from: classes.dex */
        public enum LatencyType {
            UNKNOWN(0),
            COLD(1),
            HOT(2),
            TIMEOUT(3),
            FAIL(4),
            COLD_USERWAITING(5),
            ATOMIC(6),
            CONTROLLED(7),
            CACHED(8),
            COLD_DEVICE_REBOOTING(9),
            WARM(10);
            
            private final int mId;

            LatencyType(int i4) {
                this.mId = i4;
            }

            public final int getId() {
                return this.mId;
            }
        }

        default void log(EventEnum eventEnum) {
        }

        default StatsLatencyLogger withCardinality(int i4) {
            return this;
        }

        default StatsLatencyLogger withInstanceId(InstanceId instanceId) {
            return this;
        }

        default StatsLatencyLogger withLatency(long j4) {
            return this;
        }

        default StatsLatencyLogger withPackageId(int i4) {
            return this;
        }

        default StatsLatencyLogger withQueryLength(int i4) {
            return this;
        }

        default StatsLatencyLogger withSubEventType(int i4) {
            return this;
        }

        default StatsLatencyLogger withType(LatencyType latencyType) {
            return this;
        }
    }

    /* loaded from: classes.dex */
    public interface StatsLogger {
        default void log(EventEnum eventEnum) {
        }

        default void sendToInteractionJankMonitor(EventEnum eventEnum, View view) {
        }

        default StatsLogger withCardinality(int i4) {
            return this;
        }

        default StatsLogger withContainerInfo(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo) {
            return this;
        }

        default StatsLogger withDstState(int i4) {
            return this;
        }

        default StatsLogger withEditText(String str) {
            return this;
        }

        default StatsLogger withFromState(LauncherAtom$FromState launcherAtom$FromState) {
            return this;
        }

        default StatsLogger withInputType(int i4) {
            return this;
        }

        default StatsLogger withInstanceId(InstanceId instanceId) {
            return this;
        }

        default StatsLogger withItemInfo(ItemInfo itemInfo) {
            return this;
        }

        default StatsLogger withRank(int i4) {
            return this;
        }

        default StatsLogger withSlice(LauncherAtom$Slice launcherAtom$Slice) {
            return this;
        }

        default StatsLogger withSliceItem(SliceItem sliceItem) {
            return this;
        }

        default StatsLogger withSrcState(int i4) {
            return this;
        }

        default StatsLogger withToState(LauncherAtom$ToState launcherAtom$ToState) {
            return this;
        }
    }

    public static EventEnum getLauncherAtomEvent(int i4, int i5, EventEnum eventEnum) {
        return (i4 == 2 && i5 == 2) ? LauncherEvent.LAUNCHER_HOME_GESTURE : (i4 == 3 || i5 != 3) ? (i4 == 4 || i5 != 4) ? (i4 != 4 || i5 == 4) ? eventEnum : LauncherEvent.LAUNCHER_ALLAPPS_CLOSE_DOWN : LauncherEvent.LAUNCHER_ALLAPPS_OPEN_UP : LauncherEvent.LAUNCHER_OVERVIEW_GESTURE;
    }

    public static StatsLogManager newInstance(Context context) {
        StatsLogManager statsLogManager = (StatsLogManager) ResourceBasedOverride.Overrides.getObject(R.string.stats_log_manager_class, context.getApplicationContext(), StatsLogManager.class);
        statsLogManager.mActivityContext = (ActivityContext) ActivityContext.lookupContextNoThrow(context);
        statsLogManager.mContext = context;
        return statsLogManager;
    }

    public StatsImpressionLogger createImpressionLogger() {
        return new AnonymousClass3();
    }

    public StatsLatencyLogger createLatencyLogger() {
        return new AnonymousClass2();
    }

    public StatsLogger createLogger() {
        return new AnonymousClass1();
    }

    public StatsImpressionLogger impressionLogger() {
        StatsImpressionLogger createImpressionLogger = createImpressionLogger();
        InstanceId instanceId = this.mInstanceId;
        if (instanceId != null) {
            createImpressionLogger.withInstanceId(instanceId);
        }
        return createImpressionLogger;
    }

    public KeyboardStateManager keyboardStateManager() {
        if (this.mKeyboardStateManager == null) {
            Context context = this.mContext;
            this.mKeyboardStateManager = new KeyboardStateManager(context != null ? context.getResources().getDimensionPixelSize(R.dimen.default_ime_height) : 0);
        }
        return this.mKeyboardStateManager;
    }

    public StatsLatencyLogger latencyLogger() {
        StatsLatencyLogger createLatencyLogger = createLatencyLogger();
        InstanceId instanceId = this.mInstanceId;
        if (instanceId != null) {
            createLatencyLogger.withInstanceId(instanceId);
        }
        return createLatencyLogger;
    }

    public StatsLogger logger() {
        StatsLogger createLogger = createLogger();
        InstanceId instanceId = this.mInstanceId;
        if (instanceId != null) {
            createLogger.withInstanceId(instanceId);
        }
        return createLogger;
    }

    public StatsLogManager withDefaultInstanceId(InstanceId instanceId) {
        this.mInstanceId = instanceId;
        return this;
    }
}
