package com.android.launcher3.model;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class LoaderMemoryLogger {
    private final ArrayList mLogEntries = new ArrayList();

    /* loaded from: classes.dex */
    final class LogEntry {
        protected final String mLogString;
        protected final int mLogLevel = 3;
        protected final String mLogTag = "BgDataModel";
        protected final Exception mStackStrace = null;

        public LogEntry(String str) {
            this.mLogString = str;
        }
    }

    public final void addLog(String str) {
        this.mLogEntries.add(new LogEntry(str));
    }

    public final void clearLogs() {
        this.mLogEntries.clear();
    }

    public final void printLogs() {
        Iterator it = this.mLogEntries.iterator();
        while (it.hasNext()) {
            LogEntry logEntry = (LogEntry) it.next();
            String format = String.format("%s: %s", "LoaderMemoryLogger", logEntry.mLogTag);
            String str = logEntry.mLogString;
            Exception exc = logEntry.mStackStrace;
            if (exc != null) {
                str = String.format("%s\n%s", str, Log.getStackTraceString(exc));
            }
            Log.println(logEntry.mLogLevel, format, str);
        }
        clearLogs();
    }
}
