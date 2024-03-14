package com.android.launcher3.util;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes.dex */
public final class EventLogArray {
    public static final Companion Companion = new Companion();
    private final EventEntry[] logs = new EventEntry[20];
    private final String name;
    private int nextIndex;

    /* loaded from: classes.dex */
    public final class Companion {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class EventEntry {
        private int duplicateCount;
        private String event;
        private float extras;
        private long time;
        private int type;

        public final int getDuplicateCount() {
            return this.duplicateCount;
        }

        public final String getEvent() {
            return this.event;
        }

        public final float getExtras() {
            return this.extras;
        }

        public final long getTime() {
            return this.time;
        }

        public final int getType() {
            return this.type;
        }

        public final void setDuplicateCount(int i4) {
            this.duplicateCount = i4;
        }

        public final void update(String str, int i4) {
            this.type = i4;
            this.event = str;
            this.extras = 0.0f;
            this.time = System.currentTimeMillis();
            this.duplicateCount = 0;
        }
    }

    public EventLogArray(String str) {
        this.name = str;
    }

    public final void addLog(String str) {
        addLog(str, 0);
    }

    public final void dump(String prefix, PrintWriter writer) {
        kotlin.jvm.internal.h.e(prefix, "prefix");
        kotlin.jvm.internal.h.e(writer, "writer");
        writer.println(prefix + this.name + " event history:");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("  HH:mm:ss.SSSZ  ", Locale.US);
        Date date = new Date();
        EventEntry[] eventEntryArr = this.logs;
        int length = eventEntryArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            EventEntry eventEntry = eventEntryArr[(((this.nextIndex + eventEntryArr.length) - i4) - 1) % eventEntryArr.length];
            if (eventEntry != null) {
                date.setTime(eventEntry.getTime());
                StringBuilder sb = new StringBuilder(prefix);
                sb.append(simpleDateFormat.format(date));
                sb.append(eventEntry.getEvent());
                int type = eventEntry.getType();
                if (type == 1) {
                    sb.append(": ");
                    sb.append(eventEntry.getExtras());
                } else if (type == 2) {
                    sb.append(": ");
                    sb.append((int) eventEntry.getExtras());
                } else if (type == 3) {
                    sb.append(": true");
                } else if (type == 4) {
                    sb.append(": false");
                }
                if (eventEntry.getDuplicateCount() > 0) {
                    sb.append(" & ");
                    sb.append(eventEntry.getDuplicateCount());
                    sb.append(" similar events");
                }
                writer.println(sb);
            }
        }
    }

    public final void addLog() {
        addLog("prepareForUnlock", 1);
    }

    public final void addLog(String str, boolean z4) {
        addLog(str, z4 ? 3 : 4);
    }

    private final void addLog(String str, int i4) {
        int i5 = this.nextIndex;
        EventEntry[] eventEntryArr = this.logs;
        int length = ((eventEntryArr.length + i5) - 1) % eventEntryArr.length;
        int length2 = ((i5 + eventEntryArr.length) - 2) % eventEntryArr.length;
        EventEntry eventEntry = eventEntryArr[length];
        boolean z4 = false;
        if (eventEntry != null && eventEntry.getType() == i4 && kotlin.jvm.internal.h.a(eventEntry.getEvent(), str)) {
            EventEntry eventEntry2 = eventEntryArr[length2];
            if (eventEntry2 != null && eventEntry2.getType() == i4 && kotlin.jvm.internal.h.a(eventEntry2.getEvent(), str)) {
                z4 = true;
            }
            if (z4) {
                EventEntry eventEntry3 = eventEntryArr[length];
                kotlin.jvm.internal.h.b(eventEntry3);
                eventEntry3.update(str, i4);
                EventEntry eventEntry4 = eventEntryArr[length2];
                kotlin.jvm.internal.h.b(eventEntry4);
                eventEntry4.setDuplicateCount(eventEntry4.getDuplicateCount() + 1);
                return;
            }
        }
        int i6 = this.nextIndex;
        if (eventEntryArr[i6] == null) {
            eventEntryArr[i6] = new EventEntry();
        }
        EventEntry eventEntry5 = eventEntryArr[i6];
        kotlin.jvm.internal.h.b(eventEntry5);
        eventEntry5.update(str, i4);
        this.nextIndex = (this.nextIndex + 1) % eventEntryArr.length;
    }
}
