package com.android.quickstep.util;

import android.util.ArraySet;
import com.android.quickstep.util.ActiveGestureLog;
import java.io.PrintWriter;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ActiveGestureErrorDetector {

    /* renamed from: com.android.quickstep.util.ActiveGestureErrorDetector$1  reason: invalid class name */
    /* loaded from: classes.dex */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent;

        static {
            int[] iArr = new int[GestureEvent.values().length];
            $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent = iArr;
            try {
                iArr[GestureEvent.MOTION_UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.ON_SETTLED_ON_END_TARGET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.FINISH_RECENTS_ANIMATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.CANCEL_RECENTS_ANIMATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.CLEANUP_SCREENSHOT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.SCROLLER_ANIMATION_ABORTED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.TASK_APPEARED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.EXPECTING_TASK_APPEARED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.LAUNCHER_DESTROYED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.STATE_GESTURE_COMPLETED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.STATE_GESTURE_CANCELLED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.STATE_SCREENSHOT_CAPTURED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.STATE_RECENTS_SCROLLING_FINISHED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.STATE_RECENTS_ANIMATION_CANCELED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.MOTION_DOWN.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.SET_END_TARGET.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.SET_END_TARGET_HOME.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.SET_END_TARGET_ALL_APPS.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.SET_END_TARGET_NEW_TASK.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.START_RECENTS_ANIMATION.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.SET_ON_PAGE_TRANSITION_END_CALLBACK.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.CANCEL_CURRENT_ANIMATION.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.STATE_GESTURE_STARTED.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.STATE_END_TARGET_ANIMATION_FINISHED.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.STATE_CAPTURE_SCREENSHOT.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.STATE_HANDLER_INVALIDATED.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[GestureEvent.STATE_LAUNCHER_DRAWN.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum GestureEvent {
        MOTION_DOWN,
        MOTION_UP,
        MOTION_MOVE,
        SET_END_TARGET,
        SET_END_TARGET_HOME,
        SET_END_TARGET_NEW_TASK,
        SET_END_TARGET_ALL_APPS,
        ON_SETTLED_ON_END_TARGET,
        START_RECENTS_ANIMATION,
        FINISH_RECENTS_ANIMATION,
        CANCEL_RECENTS_ANIMATION,
        SET_ON_PAGE_TRANSITION_END_CALLBACK,
        CANCEL_CURRENT_ANIMATION,
        CLEANUP_SCREENSHOT,
        SCROLLER_ANIMATION_ABORTED,
        TASK_APPEARED,
        EXPECTING_TASK_APPEARED,
        FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER,
        LAUNCHER_DESTROYED,
        STATE_GESTURE_STARTED,
        STATE_GESTURE_COMPLETED,
        STATE_GESTURE_CANCELLED,
        STATE_END_TARGET_ANIMATION_FINISHED,
        STATE_RECENTS_SCROLLING_FINISHED,
        STATE_CAPTURE_SCREENSHOT,
        STATE_SCREENSHOT_CAPTURED,
        STATE_HANDLER_INVALIDATED,
        STATE_RECENTS_ANIMATION_CANCELED,
        STATE_LAUNCHER_DRAWN(true, false);
        
        public final boolean mLogEvent;
        public final boolean mTrackEvent;

        GestureEvent() {
            this(false, true);
        }

        GestureEvent(boolean z4, boolean z5) {
            this.mLogEvent = z4;
            this.mTrackEvent = z5;
        }
    }

    private ActiveGestureErrorDetector() {
    }

    public static void analyseAndDump(String str, PrintWriter printWriter, ActiveGestureLog.EventLog eventLog) {
        boolean printErrorIfTrue;
        StringBuilder a4 = t.j.a(str, "Error messages for gesture ID: ");
        a4.append(eventLog.logId);
        printWriter.println(a4.toString());
        ArraySet arraySet = new ArraySet();
        Iterator it = eventLog.eventEntries.iterator();
        boolean z4 = false;
        boolean z5 = false;
        while (true) {
            boolean z6 = true;
            if (!it.hasNext()) {
                boolean printErrorIfTrue2 = printErrorIfTrue(!arraySet.contains(GestureEvent.MOTION_DOWN), str, "Motion down never detected.", printWriter) | z5 | printErrorIfTrue(!arraySet.contains(GestureEvent.MOTION_UP), str, "Motion up never detected.", printWriter);
                GestureEvent gestureEvent = GestureEvent.SET_END_TARGET;
                boolean printErrorIfTrue3 = printErrorIfTrue2 | printErrorIfTrue(arraySet.contains(gestureEvent) && !arraySet.contains(GestureEvent.ON_SETTLED_ON_END_TARGET), str, "setEndTarget was called, but onSettledOnEndTarget wasn't.", printWriter) | printErrorIfTrue(arraySet.contains(gestureEvent) && !arraySet.contains(GestureEvent.STATE_END_TARGET_ANIMATION_FINISHED), str, "setEndTarget was called, but STATE_END_TARGET_ANIMATION_FINISHED was never set.", printWriter) | printErrorIfTrue(arraySet.contains(gestureEvent) && !arraySet.contains(GestureEvent.STATE_RECENTS_SCROLLING_FINISHED), str, "setEndTarget was called, but STATE_RECENTS_SCROLLING_FINISHED was never set.", printWriter) | printErrorIfTrue(arraySet.contains(GestureEvent.STATE_END_TARGET_ANIMATION_FINISHED) && arraySet.contains(GestureEvent.STATE_RECENTS_SCROLLING_FINISHED) && !arraySet.contains(GestureEvent.ON_SETTLED_ON_END_TARGET), str, "STATE_END_TARGET_ANIMATION_FINISHED and STATE_RECENTS_SCROLLING_FINISHED were set, but onSettledOnEndTarget wasn't called.", printWriter) | printErrorIfTrue((!arraySet.contains(GestureEvent.START_RECENTS_ANIMATION) || arraySet.contains(GestureEvent.FINISH_RECENTS_ANIMATION) || arraySet.contains(GestureEvent.CANCEL_RECENTS_ANIMATION)) ? false : true, str, "startRecentsAnimation was called, but finishRecentsAnimation and cancelRecentsAnimation weren't.", printWriter) | printErrorIfTrue((!arraySet.contains(GestureEvent.STATE_GESTURE_STARTED) || arraySet.contains(GestureEvent.STATE_GESTURE_COMPLETED) || arraySet.contains(GestureEvent.STATE_GESTURE_CANCELLED)) ? false : true, str, "STATE_GESTURE_STARTED was set, but STATE_GESTURE_COMPLETED and STATE_GESTURE_CANCELLED weren't.", printWriter) | printErrorIfTrue(arraySet.contains(GestureEvent.STATE_CAPTURE_SCREENSHOT) && !arraySet.contains(GestureEvent.STATE_SCREENSHOT_CAPTURED), str, "STATE_CAPTURE_SCREENSHOT was set, but STATE_SCREENSHOT_CAPTURED wasn't.", printWriter) | printErrorIfTrue(arraySet.contains(GestureEvent.SET_ON_PAGE_TRANSITION_END_CALLBACK) && !arraySet.contains(GestureEvent.STATE_RECENTS_SCROLLING_FINISHED), str, "setOnPageTransitionEndCallback called, but STATE_RECENTS_SCROLLING_FINISHED wasn't set.", printWriter) | printErrorIfTrue((!arraySet.contains(GestureEvent.FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER) || arraySet.contains(GestureEvent.CANCEL_CURRENT_ANIMATION) || arraySet.contains(GestureEvent.STATE_HANDLER_INVALIDATED)) ? false : true, str, "AbsSwipeUpHandler.cancelCurrentAnimation wasn't called and STATE_HANDLER_INVALIDATED wasn't set.", printWriter) | printErrorIfTrue(arraySet.contains(GestureEvent.STATE_RECENTS_ANIMATION_CANCELED) && !arraySet.contains(GestureEvent.CLEANUP_SCREENSHOT), str, "STATE_RECENTS_ANIMATION_CANCELED was set but the task screenshot wasn't cleaned up.", printWriter);
                if (arraySet.contains(GestureEvent.EXPECTING_TASK_APPEARED) && !arraySet.contains(GestureEvent.TASK_APPEARED)) {
                    z4 = true;
                }
                if (!printErrorIfTrue3 && !printErrorIfTrue(z4, str, "onTaskAppeared was expected to be called but wasn't.", printWriter)) {
                    printWriter.println(str + "\tNo errors detected.");
                    return;
                }
                return;
            }
            GestureEvent gestureEvent2 = ((ActiveGestureLog.EventEntry) it.next()).getGestureEvent();
            if (gestureEvent2 != null) {
                arraySet.add(gestureEvent2);
                switch (AnonymousClass1.$SwitchMap$com$android$quickstep$util$ActiveGestureErrorDetector$GestureEvent[gestureEvent2.ordinal()]) {
                    case 1:
                        printErrorIfTrue = printErrorIfTrue(!arraySet.contains(GestureEvent.MOTION_DOWN), str, "Motion up detected before/without motion down.", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 2:
                        printErrorIfTrue = printErrorIfTrue(!arraySet.contains(GestureEvent.SET_END_TARGET), str, "onSettledOnEndTarget called before/without setEndTarget.", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 3:
                        printErrorIfTrue = printErrorIfTrue(!arraySet.contains(GestureEvent.START_RECENTS_ANIMATION), str, "finishRecentsAnimation called before/without startRecentsAnimation.", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 4:
                        printErrorIfTrue = printErrorIfTrue(!arraySet.contains(GestureEvent.START_RECENTS_ANIMATION), str, "cancelRecentsAnimation called before/without startRecentsAnimation.", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 5:
                        printErrorIfTrue = printErrorIfTrue(!arraySet.contains(GestureEvent.STATE_SCREENSHOT_CAPTURED), str, "recents activity screenshot was cleaned up before/without STATE_SCREENSHOT_CAPTURED being set.", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 6:
                        if (!arraySet.contains(GestureEvent.SET_END_TARGET_HOME) || arraySet.contains(GestureEvent.ON_SETTLED_ON_END_TARGET)) {
                            z6 = false;
                        }
                        printErrorIfTrue = printErrorIfTrue(z6, str, "recents view scroller animation aborted after setting end target HOME, but before settling on end target.", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 7:
                        z5 |= printErrorIfTrue(!arraySet.contains(GestureEvent.SET_END_TARGET_NEW_TASK), str, "onTasksAppeared called before/without setting end target to new task", printWriter);
                        printErrorIfTrue = printErrorIfTrue(!arraySet.contains(GestureEvent.EXPECTING_TASK_APPEARED), str, "onTasksAppeared was not expected to be called", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 8:
                        printErrorIfTrue = printErrorIfTrue(!arraySet.contains(GestureEvent.SET_END_TARGET_NEW_TASK), str, "expecting onTasksAppeared to be called before/without setting end target to new task", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 9:
                        printErrorIfTrue = printErrorIfTrue(true, str, "Launcher destroyed mid-gesture", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 10:
                        z5 |= printErrorIfTrue(!arraySet.contains(GestureEvent.MOTION_UP), str, "STATE_GESTURE_COMPLETED set before/without motion up.", printWriter);
                        printErrorIfTrue = printErrorIfTrue(!arraySet.contains(GestureEvent.STATE_GESTURE_STARTED), str, "STATE_GESTURE_COMPLETED set before/without STATE_GESTURE_STARTED.", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 11:
                        z5 |= printErrorIfTrue(!arraySet.contains(GestureEvent.MOTION_UP), str, "STATE_GESTURE_CANCELLED set before/without motion up.", printWriter);
                        printErrorIfTrue = printErrorIfTrue(!arraySet.contains(GestureEvent.STATE_GESTURE_STARTED), str, "STATE_GESTURE_CANCELLED set before/without STATE_GESTURE_STARTED.", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 12:
                        printErrorIfTrue = printErrorIfTrue(!arraySet.contains(GestureEvent.STATE_CAPTURE_SCREENSHOT), str, "STATE_SCREENSHOT_CAPTURED set before/without STATE_CAPTURE_SCREENSHOT.", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 13:
                        printErrorIfTrue = printErrorIfTrue(!arraySet.contains(GestureEvent.SET_ON_PAGE_TRANSITION_END_CALLBACK), str, "STATE_RECENTS_SCROLLING_FINISHED set before/without calling setOnPageTransitionEndCallback.", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                    case 14:
                        printErrorIfTrue = printErrorIfTrue(!arraySet.contains(GestureEvent.START_RECENTS_ANIMATION), str, "STATE_RECENTS_ANIMATION_CANCELED set before/without startRecentsAnimation.", printWriter);
                        z5 |= printErrorIfTrue;
                        break;
                }
            }
        }
    }

    private static boolean printErrorIfTrue(boolean z4, String str, String str2, PrintWriter printWriter) {
        if (z4) {
            printWriter.println(str + "\t- " + str2);
            return true;
        }
        return false;
    }
}
