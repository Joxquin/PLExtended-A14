package com.android.quickstep;

import android.app.ActivityManager;
import android.content.Intent;
import android.view.MotionEvent;
import android.view.RemoteAnimationTarget;
import com.android.launcher3.MotionEventsUtils;
import com.android.quickstep.MultiStateCallback;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.TopTaskTracker;
import com.android.quickstep.util.ActiveGestureErrorDetector;
import com.android.quickstep.util.ActiveGestureLog;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public class GestureState implements RecentsAnimationCallbacks.RecentsAnimationListener {
    private static final String TAG = "GestureState";
    private final BaseActivityInterface mActivityInterface;
    private GestureEndTarget mEndTarget;
    private final int mGestureId;
    private boolean mHandlingAtomicEvent;
    private final Intent mHomeIntent;
    private RemoteAnimationTarget[] mLastAppearedTaskTargets;
    private int[] mLastStartedTaskId;
    final Predicate mLastStartedTaskIdPredicate;
    private final Intent mOverviewIntent;
    private Set mPreviouslyAppearedTaskIds;
    private HashMap mRecentsAnimationCanceledSnapshots;
    private RecentsAnimationController mRecentsAnimationController;
    private TopTaskTracker.CachedTaskInfo mRunningTask;
    private final MultiStateCallback mStateCallback;
    private long mSwipeUpStartTimeMs;
    private TrackpadGestureType mTrackpadGestureType;
    private static final List STATE_NAMES = new ArrayList();
    public static final GestureState DEFAULT_STATE = new GestureState();
    private static int FLAG_COUNT = 0;
    public static final int STATE_END_TARGET_SET = getNextStateFlag("STATE_END_TARGET_SET");
    public static final int STATE_END_TARGET_ANIMATION_FINISHED = getNextStateFlag("STATE_END_TARGET_ANIMATION_FINISHED");
    public static final int STATE_RECENTS_ANIMATION_INITIALIZED = getNextStateFlag("STATE_RECENTS_ANIMATION_INITIALIZED");
    public static final int STATE_RECENTS_ANIMATION_STARTED = getNextStateFlag("STATE_RECENTS_ANIMATION_STARTED");
    public static final int STATE_RECENTS_ANIMATION_CANCELED = getNextStateFlag("STATE_RECENTS_ANIMATION_CANCELED");
    public static final int STATE_RECENTS_ANIMATION_FINISHED = getNextStateFlag("STATE_RECENTS_ANIMATION_FINISHED");
    public static final int STATE_RECENTS_ANIMATION_ENDED = getNextStateFlag("STATE_RECENTS_ANIMATION_ENDED");
    public static final int STATE_RECENTS_SCROLLING_FINISHED = getNextStateFlag("STATE_RECENTS_SCROLLING_FINISHED");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.quickstep.GestureState$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget;

        static {
            int[] iArr = new int[GestureEndTarget.values().length];
            $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget = iArr;
            try {
                iArr[GestureEndTarget.HOME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureEndTarget.NEW_TASK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureEndTarget.ALL_APPS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureEndTarget.LAST_TASK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureEndTarget.RECENTS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum GestureEndTarget {
        HOME(true, 2, false),
        RECENTS(true, 3, true),
        NEW_TASK(false, 1, true),
        LAST_TASK(false, 1, true),
        ALL_APPS(true, 4, false);
        
        public final int containerType;
        public final boolean isLauncher;
        public final boolean recentsAttachedToAppWindow;

        GestureEndTarget(boolean z4, int i4, boolean z5) {
            this.isLauncher = z4;
            this.containerType = i4;
            this.recentsAttachedToAppWindow = z5;
        }
    }

    /* loaded from: classes.dex */
    public enum TrackpadGestureType {
        NONE,
        THREE_FINGER,
        FOUR_FINGER;

        public static TrackpadGestureType getTrackpadGestureType(MotionEvent motionEvent) {
            boolean z4 = true;
            if (MotionEventsUtils.isTrackpadMultiFingerSwipe(motionEvent) && motionEvent.getAxisValue(53) == 3.0f) {
                return THREE_FINGER;
            }
            if (!MotionEventsUtils.isTrackpadMultiFingerSwipe(motionEvent) || motionEvent.getAxisValue(53) != 4.0f) {
                z4 = false;
            }
            return z4 ? FOUR_FINGER : NONE;
        }
    }

    public GestureState(OverviewComponentObserver overviewComponentObserver, int i4) {
        this.mLastStartedTaskIdPredicate = new Predicate() { // from class: com.android.quickstep.GestureState.1
            @Override // java.util.function.Predicate
            public boolean test(RemoteAnimationTarget remoteAnimationTarget) {
                for (int i5 : GestureState.this.mLastStartedTaskId) {
                    if (remoteAnimationTarget.taskId == i5) {
                        return true;
                    }
                }
                return false;
            }
        };
        this.mTrackpadGestureType = TrackpadGestureType.NONE;
        this.mPreviouslyAppearedTaskIds = new HashSet();
        this.mLastStartedTaskId = new int[]{-1, -1};
        this.mHomeIntent = overviewComponentObserver.getHomeIntent();
        this.mOverviewIntent = overviewComponentObserver.getOverviewIntent();
        this.mActivityInterface = overviewComponentObserver.getActivityInterface();
        this.mStateCallback = new MultiStateCallback((String[]) STATE_NAMES.toArray(new String[0]), new MultiStateCallback.TrackedEventsMapper() { // from class: com.android.quickstep.I
            @Override // com.android.quickstep.MultiStateCallback.TrackedEventsMapper
            public final ActiveGestureErrorDetector.GestureEvent getTrackedEventForState(int i5) {
                ActiveGestureErrorDetector.GestureEvent trackedEventForState;
                ActiveGestureErrorDetector.GestureEvent trackedEventForState2;
                switch (r1) {
                    case 0:
                        trackedEventForState2 = GestureState.getTrackedEventForState(i5);
                        return trackedEventForState2;
                    default:
                        trackedEventForState = GestureState.getTrackedEventForState(i5);
                        return trackedEventForState;
                }
            }
        });
        this.mGestureId = i4;
    }

    private static int getNextStateFlag(String str) {
        int i4 = FLAG_COUNT;
        int i5 = 1 << i4;
        FLAG_COUNT = i4 + 1;
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ActiveGestureErrorDetector.GestureEvent getTrackedEventForState(int i4) {
        if (i4 == STATE_END_TARGET_ANIMATION_FINISHED) {
            return ActiveGestureErrorDetector.GestureEvent.STATE_END_TARGET_ANIMATION_FINISHED;
        }
        if (i4 == STATE_RECENTS_SCROLLING_FINISHED) {
            return ActiveGestureErrorDetector.GestureEvent.STATE_RECENTS_SCROLLING_FINISHED;
        }
        if (i4 == STATE_RECENTS_ANIMATION_CANCELED) {
            return ActiveGestureErrorDetector.GestureEvent.STATE_RECENTS_ANIMATION_CANCELED;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$getLastAppearedTaskIds$0(RemoteAnimationTarget remoteAnimationTarget) {
        if (remoteAnimationTarget != null) {
            return remoteAnimationTarget.taskId;
        }
        return -1;
    }

    public HashMap consumeRecentsAnimationCanceledSnapshot() {
        if (this.mRecentsAnimationCanceledSnapshots != null) {
            HashMap hashMap = new HashMap(this.mRecentsAnimationCanceledSnapshots);
            this.mRecentsAnimationCanceledSnapshots = null;
            return hashMap;
        }
        return null;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("GestureState:");
        printWriter.println("  gestureID=" + this.mGestureId);
        printWriter.println("  runningTask=" + this.mRunningTask);
        printWriter.println("  endTarget=" + this.mEndTarget);
        printWriter.println("  lastAppearedTaskTargetId=" + Arrays.toString(this.mLastAppearedTaskTargets));
        printWriter.println("  lastStartedTaskId=" + Arrays.toString(this.mLastStartedTaskId));
        printWriter.println("  isRecentsAnimationRunning=" + isRecentsAnimationRunning());
    }

    public BaseActivityInterface getActivityInterface() {
        return this.mActivityInterface;
    }

    public GestureEndTarget getEndTarget() {
        return this.mEndTarget;
    }

    public int getGestureId() {
        return this.mGestureId;
    }

    public Intent getHomeIntent() {
        return this.mHomeIntent;
    }

    public int[] getLastAppearedTaskIds() {
        RemoteAnimationTarget[] remoteAnimationTargetArr = this.mLastAppearedTaskTargets;
        return remoteAnimationTargetArr == null ? new int[]{-1, -1} : Arrays.stream(remoteAnimationTargetArr).mapToInt(new H()).toArray();
    }

    public int[] getLastStartedTaskIds() {
        return this.mLastStartedTaskId;
    }

    public Intent getOverviewIntent() {
        return this.mOverviewIntent;
    }

    public Set getPreviouslyAppearedTaskIds() {
        return this.mPreviouslyAppearedTaskIds;
    }

    public TopTaskTracker.CachedTaskInfo getRunningTask() {
        return this.mRunningTask;
    }

    public int[] getRunningTaskIds(boolean z4) {
        TopTaskTracker.CachedTaskInfo cachedTaskInfo = this.mRunningTask;
        if (cachedTaskInfo == null) {
            return new int[]{-1, -1};
        }
        int min = Math.min(cachedTaskInfo.mAllCachedTasks.size(), z4 ? 2 : 1);
        int[] iArr = new int[min];
        for (int i4 = 0; i4 < min; i4++) {
            iArr[i4] = ((ActivityManager.RunningTaskInfo) this.mRunningTask.mAllCachedTasks.get(i4)).taskId;
        }
        return iArr;
    }

    public long getSwipeUpStartTimeMs() {
        return this.mSwipeUpStartTimeMs;
    }

    public int getTopRunningTaskId() {
        return getRunningTaskIds(false)[0];
    }

    public boolean hasState(int i4) {
        return this.mStateCallback.hasStates(i4);
    }

    public boolean isFourFingerTrackpadGesture() {
        return this.mTrackpadGestureType == TrackpadGestureType.FOUR_FINGER;
    }

    public boolean isHandlingAtomicEvent() {
        return this.mHandlingAtomicEvent;
    }

    public boolean isRecentsAnimationRunning() {
        return this.mStateCallback.hasStates(STATE_RECENTS_ANIMATION_STARTED) && !this.mStateCallback.hasStates(STATE_RECENTS_ANIMATION_ENDED);
    }

    public boolean isRunningAnimationToLauncher() {
        GestureEndTarget gestureEndTarget;
        return isRecentsAnimationRunning() && (gestureEndTarget = this.mEndTarget) != null && gestureEndTarget.isLauncher;
    }

    public boolean isThreeFingerTrackpadGesture() {
        return this.mTrackpadGestureType == TrackpadGestureType.THREE_FINGER;
    }

    public boolean isTrackpadGesture() {
        return this.mTrackpadGestureType != TrackpadGestureType.NONE;
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationCanceled(HashMap hashMap) {
        this.mRecentsAnimationCanceledSnapshots = hashMap;
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_RECENTS_ANIMATION_CANCELED);
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_RECENTS_ANIMATION_ENDED);
        if (this.mRecentsAnimationCanceledSnapshots != null) {
            RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
            if (recentsAnimationController != null) {
                recentsAnimationController.cleanupScreenshot();
            }
            this.mRecentsAnimationCanceledSnapshots = null;
        }
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationFinished(RecentsAnimationController recentsAnimationController) {
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_RECENTS_ANIMATION_FINISHED);
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_RECENTS_ANIMATION_ENDED);
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
        this.mRecentsAnimationController = recentsAnimationController;
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_RECENTS_ANIMATION_STARTED);
    }

    public void runOnceAtState(int i4, Runnable runnable) {
        this.mStateCallback.runOnceAtState(i4, runnable);
    }

    public void setEndTarget(GestureEndTarget gestureEndTarget) {
        setEndTarget(gestureEndTarget, true);
    }

    public void setHandlingAtomicEvent(boolean z4) {
        this.mHandlingAtomicEvent = z4;
    }

    public void setState(int i4) {
        this.mStateCallback.lambda$setStateOnUiThread$1(i4);
    }

    public void setSwipeUpStartTimeMs(long j4) {
        this.mSwipeUpStartTimeMs = j4;
    }

    public void setTrackpadGestureType(TrackpadGestureType trackpadGestureType) {
        this.mTrackpadGestureType = trackpadGestureType;
    }

    public void updateLastAppearedTaskTargets(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        this.mLastAppearedTaskTargets = remoteAnimationTargetArr;
        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
            if (remoteAnimationTarget != null) {
                this.mPreviouslyAppearedTaskIds.add(Integer.valueOf(remoteAnimationTarget.taskId));
            }
        }
    }

    public void updateLastStartedTaskIds(int[] iArr) {
        this.mLastStartedTaskId = iArr;
    }

    public void updatePreviouslyAppearedTaskIds(Set set) {
        this.mPreviouslyAppearedTaskIds = set;
    }

    public void updateRunningTask(TopTaskTracker.CachedTaskInfo cachedTaskInfo) {
        this.mRunningTask = cachedTaskInfo;
    }

    public void setEndTarget(GestureEndTarget gestureEndTarget, boolean z4) {
        this.mEndTarget = gestureEndTarget;
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_END_TARGET_SET);
        ActiveGestureLog activeGestureLog = ActiveGestureLog.INSTANCE;
        activeGestureLog.addLog("setEndTarget " + this.mEndTarget, ActiveGestureErrorDetector.GestureEvent.SET_END_TARGET);
        int i4 = AnonymousClass2.$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[this.mEndTarget.ordinal()];
        if (i4 == 1) {
            activeGestureLog.trackEvent(ActiveGestureErrorDetector.GestureEvent.SET_END_TARGET_HOME);
        } else if (i4 == 2) {
            activeGestureLog.trackEvent(ActiveGestureErrorDetector.GestureEvent.SET_END_TARGET_NEW_TASK);
        } else if (i4 == 3) {
            activeGestureLog.trackEvent(ActiveGestureErrorDetector.GestureEvent.SET_END_TARGET_ALL_APPS);
        }
        if (z4) {
            this.mStateCallback.lambda$setStateOnUiThread$1(STATE_END_TARGET_ANIMATION_FINISHED);
        }
    }

    public GestureState(GestureState gestureState) {
        this.mLastStartedTaskIdPredicate = new Predicate() { // from class: com.android.quickstep.GestureState.1
            @Override // java.util.function.Predicate
            public boolean test(RemoteAnimationTarget remoteAnimationTarget) {
                for (int i5 : GestureState.this.mLastStartedTaskId) {
                    if (remoteAnimationTarget.taskId == i5) {
                        return true;
                    }
                }
                return false;
            }
        };
        this.mTrackpadGestureType = TrackpadGestureType.NONE;
        this.mPreviouslyAppearedTaskIds = new HashSet();
        this.mLastStartedTaskId = new int[]{-1, -1};
        this.mHomeIntent = gestureState.mHomeIntent;
        this.mOverviewIntent = gestureState.mOverviewIntent;
        this.mActivityInterface = gestureState.mActivityInterface;
        this.mStateCallback = gestureState.mStateCallback;
        this.mGestureId = gestureState.mGestureId;
        this.mRunningTask = gestureState.mRunningTask;
        this.mEndTarget = gestureState.mEndTarget;
        this.mLastAppearedTaskTargets = gestureState.mLastAppearedTaskTargets;
        this.mPreviouslyAppearedTaskIds = gestureState.mPreviouslyAppearedTaskIds;
        this.mLastStartedTaskId = gestureState.mLastStartedTaskId;
    }

    public GestureState() {
        this.mLastStartedTaskIdPredicate = new Predicate() { // from class: com.android.quickstep.GestureState.1
            @Override // java.util.function.Predicate
            public boolean test(RemoteAnimationTarget remoteAnimationTarget) {
                for (int i5 : GestureState.this.mLastStartedTaskId) {
                    if (remoteAnimationTarget.taskId == i5) {
                        return true;
                    }
                }
                return false;
            }
        };
        this.mTrackpadGestureType = TrackpadGestureType.NONE;
        this.mPreviouslyAppearedTaskIds = new HashSet();
        this.mLastStartedTaskId = new int[]{-1, -1};
        this.mHomeIntent = new Intent();
        this.mOverviewIntent = new Intent();
        this.mActivityInterface = null;
        this.mStateCallback = new MultiStateCallback((String[]) STATE_NAMES.toArray(new String[0]), new MultiStateCallback.TrackedEventsMapper() { // from class: com.android.quickstep.I
            @Override // com.android.quickstep.MultiStateCallback.TrackedEventsMapper
            public final ActiveGestureErrorDetector.GestureEvent getTrackedEventForState(int i5) {
                ActiveGestureErrorDetector.GestureEvent trackedEventForState;
                ActiveGestureErrorDetector.GestureEvent trackedEventForState2;
                switch (r1) {
                    case 0:
                        trackedEventForState2 = GestureState.getTrackedEventForState(i5);
                        return trackedEventForState2;
                    default:
                        trackedEventForState = GestureState.getTrackedEventForState(i5);
                        return trackedEventForState;
                }
            }
        });
        this.mGestureId = -1;
    }
}
