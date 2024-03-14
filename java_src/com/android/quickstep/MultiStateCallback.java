package com.android.quickstep;

import android.os.Looper;
import android.util.SparseArray;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.Executors;
import com.android.quickstep.util.ActiveGestureErrorDetector;
import com.android.quickstep.util.ActiveGestureLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.StringJoiner;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class MultiStateCallback {
    public static final boolean DEBUG_STATES = false;
    private static final String TAG = "MultiStateCallback";
    private final SparseArray mCallbacks;
    private int mState;
    private final SparseArray mStateChangeListeners;
    private final String[] mStateNames;
    private final TrackedEventsMapper mTrackedEventsMapper;

    /* loaded from: classes.dex */
    public interface TrackedEventsMapper {
        ActiveGestureErrorDetector.GestureEvent getTrackedEventForState(int i4);
    }

    public MultiStateCallback(String[] strArr) {
        this(strArr, new U());
    }

    private String convertToFlagNames(int i4) {
        StringJoiner stringJoiner = new StringJoiner(", ", "[", " (" + i4 + ")]");
        int i5 = 0;
        while (true) {
            String[] strArr = this.mStateNames;
            if (i5 >= strArr.length) {
                return stringJoiner.toString();
            }
            if (((1 << i5) & i4) != 0) {
                stringJoiner.add(strArr[i5]);
            }
            i5++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ActiveGestureErrorDetector.GestureEvent lambda$new$0(int i4) {
        return null;
    }

    private void notifyStateChangeListeners(int i4) {
        int size = this.mStateChangeListeners.size();
        for (int i5 = 0; i5 < size; i5++) {
            int keyAt = this.mStateChangeListeners.keyAt(i5);
            boolean z4 = (keyAt & i4) == keyAt;
            boolean z5 = (this.mState & keyAt) == keyAt;
            if (z4 != z5) {
                Iterator it = ((ArrayList) this.mStateChangeListeners.valueAt(i5)).iterator();
                while (it.hasNext()) {
                    ((Consumer) it.next()).accept(Boolean.valueOf(z5));
                }
            }
        }
    }

    private void trackGestureEvents(int i4) {
        ActiveGestureErrorDetector.GestureEvent trackedEventForState;
        for (int i5 = 0; (i4 >> i5) != 0; i5++) {
            int i6 = 1 << i5;
            if ((i4 & i6) != 0 && (trackedEventForState = this.mTrackedEventsMapper.getTrackedEventForState(i6)) != null) {
                boolean z4 = trackedEventForState.mLogEvent;
                if (z4 && trackedEventForState.mTrackEvent) {
                    ActiveGestureLog.INSTANCE.addLog(trackedEventForState.name(), trackedEventForState);
                } else if (z4) {
                    ActiveGestureLog.INSTANCE.addLog(trackedEventForState.name());
                } else if (trackedEventForState.mTrackEvent) {
                    ActiveGestureLog.INSTANCE.trackEvent(trackedEventForState);
                }
            }
        }
    }

    public void addChangeListener(int i4, Consumer consumer) {
        ArrayList arrayList;
        if (this.mStateChangeListeners.indexOfKey(i4) >= 0) {
            arrayList = (ArrayList) this.mStateChangeListeners.get(i4);
        } else {
            ArrayList arrayList2 = new ArrayList();
            this.mStateChangeListeners.put(i4, arrayList2);
            arrayList = arrayList2;
        }
        arrayList.add(consumer);
    }

    public void clearState(int i4) {
        int i5 = this.mState;
        this.mState = (~i4) & i5;
        notifyStateChangeListeners(i5);
    }

    public int getState() {
        return this.mState;
    }

    public boolean hasStates(int i4) {
        return (this.mState & i4) == i4;
    }

    public void runOnceAtState(int i4, Runnable runnable) {
        LinkedList linkedList;
        if ((this.mState & i4) == i4) {
            runnable.run();
            return;
        }
        if (this.mCallbacks.indexOfKey(i4) >= 0) {
            linkedList = (LinkedList) this.mCallbacks.get(i4);
        } else {
            LinkedList linkedList2 = new LinkedList();
            this.mCallbacks.put(i4, linkedList2);
            linkedList = linkedList2;
        }
        linkedList.add(runnable);
    }

    /* renamed from: setState */
    public void lambda$setStateOnUiThread$1(int i4) {
        trackGestureEvents(i4);
        int i5 = this.mState;
        this.mState = i4 | i5;
        int size = this.mCallbacks.size();
        for (int i6 = 0; i6 < size; i6++) {
            int keyAt = this.mCallbacks.keyAt(i6);
            if ((this.mState & keyAt) == keyAt) {
                LinkedList linkedList = (LinkedList) this.mCallbacks.valueAt(i6);
                while (!linkedList.isEmpty()) {
                    ((Runnable) linkedList.pollFirst()).run();
                }
            }
        }
        notifyStateChangeListeners(i5);
    }

    public void setStateOnUiThread(final int i4) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            lambda$setStateOnUiThread$1(i4);
        } else {
            Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.getHandler(), new Runnable() { // from class: com.android.quickstep.V
                @Override // java.lang.Runnable
                public final void run() {
                    MultiStateCallback.this.lambda$setStateOnUiThread$1(i4);
                }
            });
        }
    }

    public MultiStateCallback(String[] strArr, TrackedEventsMapper trackedEventsMapper) {
        this.mCallbacks = new SparseArray();
        this.mStateChangeListeners = new SparseArray();
        this.mState = 0;
        this.mStateNames = null;
        this.mTrackedEventsMapper = trackedEventsMapper;
    }
}
