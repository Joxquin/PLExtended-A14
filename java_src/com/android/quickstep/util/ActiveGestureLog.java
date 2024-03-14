package com.android.quickstep.util;

import com.android.quickstep.util.ActiveGestureErrorDetector;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
public class ActiveGestureLog {
    public static final ActiveGestureLog INSTANCE = new ActiveGestureLog();
    public static final String INTENT_EXTRA_LOG_TRACE_ID = "INTENT_EXTRA_LOG_TRACE_ID";
    private static final int MAX_GESTURES_TRACKED = 10;
    private static final int TYPE_BOOL_FALSE = 4;
    private static final int TYPE_BOOL_TRUE = 3;
    private static final int TYPE_FLOAT = 1;
    private static final int TYPE_GESTURE_EVENT = 6;
    private static final int TYPE_INPUT_CONSUMER = 5;
    private static final int TYPE_INTEGER = 2;
    private static final int TYPE_ONE_OFF = 0;
    private int mCurrentLogId = 100;
    private final EventLog[] logs = new EventLog[10];
    private int nextIndex = 0;

    /* loaded from: classes.dex */
    public class CompoundString {
        public static final CompoundString NO_OP = new CompoundString();
        private final boolean mIsNoOp;
        private final List mSubstrings;

        private CompoundString() {
            this(null);
        }

        public CompoundString append(CompoundString compoundString) {
            if (this.mIsNoOp) {
                return this;
            }
            this.mSubstrings.addAll(compoundString.mSubstrings);
            return this;
        }

        public boolean equals(Object obj) {
            if (obj instanceof CompoundString) {
                CompoundString compoundString = (CompoundString) obj;
                return this.mIsNoOp == compoundString.mIsNoOp && Objects.equals(this.mSubstrings, compoundString.mSubstrings);
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(this.mIsNoOp), this.mSubstrings);
        }

        public String toString() {
            if (this.mIsNoOp) {
                return "ERROR: cannot use No-Op compound string";
            }
            StringBuilder sb = new StringBuilder();
            for (String str : this.mSubstrings) {
                sb.append(str);
            }
            return sb.toString();
        }

        public CompoundString(String str) {
            boolean z4 = str == null;
            this.mIsNoOp = z4;
            if (z4) {
                this.mSubstrings = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            this.mSubstrings = arrayList;
            arrayList.add(str);
        }

        public CompoundString append(String str) {
            if (this.mIsNoOp) {
                return this;
            }
            this.mSubstrings.add(str);
            return this;
        }
    }

    /* loaded from: classes.dex */
    public class EventEntry {
        private int duplicateCount;
        private String event;
        private float extras;
        private ActiveGestureErrorDetector.GestureEvent gestureEvent;
        private CompoundString mCompoundString;
        private long time;
        private int type;

        private EventEntry() {
        }

        public /* synthetic */ EventEntry(int i4) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void update(int i4, String str, float f4, CompoundString compoundString, ActiveGestureErrorDetector.GestureEvent gestureEvent) {
            this.type = i4;
            this.event = str;
            this.extras = f4;
            this.mCompoundString = compoundString;
            this.gestureEvent = gestureEvent;
            this.time = System.currentTimeMillis();
            this.duplicateCount = 0;
        }

        public ActiveGestureErrorDetector.GestureEvent getGestureEvent() {
            return this.gestureEvent;
        }
    }

    /* loaded from: classes.dex */
    public class EventLog {
        protected final List eventEntries;
        protected final int logId;

        public /* synthetic */ EventLog(int i4, int i5) {
            this(i4);
        }

        private EventLog(int i4) {
            this.eventEntries = new ArrayList();
            this.logId = i4;
        }
    }

    private ActiveGestureLog() {
    }

    private boolean isEntrySame(EventEntry eventEntry, int i4, String str, float f4, CompoundString compoundString, ActiveGestureErrorDetector.GestureEvent gestureEvent) {
        return eventEntry != null && eventEntry.type == i4 && eventEntry.event.equals(str) && Float.compare(eventEntry.extras, f4) == 0 && eventEntry.mCompoundString.equals(compoundString) && eventEntry.gestureEvent == gestureEvent;
    }

    public void addLog(String str) {
        addLog(str, (ActiveGestureErrorDetector.GestureEvent) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dump(java.lang.String r9, java.io.PrintWriter r10) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.util.ActiveGestureLog.dump(java.lang.String, java.io.PrintWriter):void");
    }

    public int getLogId() {
        return this.mCurrentLogId;
    }

    public int incrementLogId() {
        int i4 = this.mCurrentLogId;
        this.mCurrentLogId = i4 + 1;
        return i4;
    }

    public void trackEvent(ActiveGestureErrorDetector.GestureEvent gestureEvent) {
        addLog(6, "", 0.0f, CompoundString.NO_OP, gestureEvent);
    }

    public void addLog(String str, int i4) {
        addLog(str, i4, (ActiveGestureErrorDetector.GestureEvent) null);
    }

    public void addLog(String str, boolean z4) {
        addLog(str, z4, (ActiveGestureErrorDetector.GestureEvent) null);
    }

    public void addLog(CompoundString compoundString) {
        addLog(5, "", 0.0f, compoundString, null);
    }

    public void addLog(String str, ActiveGestureErrorDetector.GestureEvent gestureEvent) {
        addLog(0, str, 0.0f, CompoundString.NO_OP, gestureEvent);
    }

    public void addLog(String str, int i4, ActiveGestureErrorDetector.GestureEvent gestureEvent) {
        addLog(2, str, i4, CompoundString.NO_OP, gestureEvent);
    }

    public void addLog(String str, boolean z4, ActiveGestureErrorDetector.GestureEvent gestureEvent) {
        addLog(z4 ? 3 : 4, str, 0.0f, CompoundString.NO_OP, gestureEvent);
    }

    private void addLog(int i4, String str, float f4, CompoundString compoundString, ActiveGestureErrorDetector.GestureEvent gestureEvent) {
        EventLog[] eventLogArr = this.logs;
        EventLog eventLog = eventLogArr[((this.nextIndex + eventLogArr.length) - 1) % eventLogArr.length];
        if (eventLog != null && this.mCurrentLogId == eventLog.logId) {
            List list = eventLog.eventEntries;
            EventEntry eventEntry = list.size() > 0 ? (EventEntry) list.get(list.size() - 1) : null;
            if (isEntrySame(eventEntry, i4, str, f4, compoundString, gestureEvent)) {
                eventEntry.duplicateCount++;
                return;
            }
            EventEntry eventEntry2 = new EventEntry(0);
            eventEntry2.update(i4, str, f4, compoundString, gestureEvent);
            list.add(eventEntry2);
            return;
        }
        EventLog eventLog2 = new EventLog(this.mCurrentLogId, 0);
        EventEntry eventEntry3 = new EventEntry(0);
        eventEntry3.update(i4, str, f4, compoundString, gestureEvent);
        eventLog2.eventEntries.add(eventEntry3);
        EventLog[] eventLogArr2 = this.logs;
        int i5 = this.nextIndex;
        eventLogArr2[i5] = eventLog2;
        this.nextIndex = (i5 + 1) % eventLogArr2.length;
    }
}
