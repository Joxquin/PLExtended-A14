package com.android.launcher3.logging;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IOUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.CountDownLatch;
import t.j;
/* loaded from: classes.dex */
public final class FileLog {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f4698a = 0;
    private static final DateFormat DATE_FORMAT = DateFormat.getDateTimeInstance(3, 3);
    private static Handler sHandler = null;
    private static File sLogsDirectory = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class LogWriterCallback implements Handler.Callback {
        private String mCurrentFileName = null;
        private PrintWriter mCurrentWriter = null;

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (FileLog.sLogsDirectory != null) {
                int i4 = message.what;
                boolean z4 = false;
                z4 = false;
                z4 = false;
                if (i4 != 1) {
                    if (i4 == 2) {
                        IOUtils.closeSilently(this.mCurrentWriter);
                        this.mCurrentWriter = null;
                        return true;
                    } else if (i4 != 3) {
                        return true;
                    } else {
                        IOUtils.closeSilently(this.mCurrentWriter);
                        this.mCurrentWriter = null;
                        Pair pair = (Pair) message.obj;
                        if (pair.first != null) {
                            for (int i5 = 0; i5 < 4; i5++) {
                                FileLog.c((PrintWriter) pair.first, "log-" + i5);
                            }
                        }
                        ((CountDownLatch) pair.second).countDown();
                        return true;
                    }
                }
                Calendar calendar = Calendar.getInstance();
                String str = "log-" + (calendar.get(6) % 4);
                if (!str.equals(this.mCurrentFileName)) {
                    IOUtils.closeSilently(this.mCurrentWriter);
                    this.mCurrentWriter = null;
                }
                try {
                    if (this.mCurrentWriter == null) {
                        this.mCurrentFileName = str;
                        File file = new File(FileLog.sLogsDirectory, str);
                        if (file.exists()) {
                            Calendar calendar2 = Calendar.getInstance();
                            calendar2.setTimeInMillis(file.lastModified());
                            calendar2.add(10, 36);
                            if (calendar.before(calendar2) && file.length() < 8388608) {
                                z4 = true;
                            }
                        }
                        this.mCurrentWriter = new PrintWriter(new FileWriter(file, z4));
                    }
                    this.mCurrentWriter.println((String) message.obj);
                    this.mCurrentWriter.flush();
                    FileLog.sHandler.removeMessages(2);
                    FileLog.sHandler.sendEmptyMessageDelayed(2, 5000L);
                } catch (Exception e4) {
                    Log.e("FileLog", "Error writing logs to file", e4);
                    IOUtils.closeSilently(this.mCurrentWriter);
                    this.mCurrentWriter = null;
                }
            }
            return true;
        }
    }

    public static void c(PrintWriter printWriter, String str) {
        BufferedReader bufferedReader;
        File file = new File(sLogsDirectory, str);
        if (!file.exists()) {
            return;
        }
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader(file));
        } catch (Exception unused) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            printWriter.println();
            printWriter.println("--- logfile: " + str + " ---");
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    IOUtils.closeSilently(bufferedReader);
                    return;
                }
                printWriter.println(readLine);
            }
        } catch (Exception unused2) {
            bufferedReader2 = bufferedReader;
            IOUtils.closeSilently(bufferedReader2);
        } catch (Throwable th2) {
            th = th2;
            bufferedReader2 = bufferedReader;
            IOUtils.closeSilently(bufferedReader2);
            throw th;
        }
    }

    public static void d(String str, String str2) {
        Log.d(str, str2);
        print(str, str2, null);
    }

    public static void e(String str, String str2) {
        Log.e(str, str2);
        print(str, str2, null);
    }

    public static Handler getHandler() {
        synchronized (DATE_FORMAT) {
            if (sHandler == null) {
                sHandler = new Handler(Executors.createAndStartNewLooper(0, "file-logger"), new LogWriterCallback());
            }
        }
        return sHandler;
    }

    public static void print(String str, String str2, Exception exc) {
        String format = String.format("%s %s %s", DATE_FORMAT.format(new Date()), str, str2);
        if (exc != null) {
            StringBuilder a4 = j.a(format, "\n");
            a4.append(Log.getStackTraceString(exc));
            format = a4.toString();
        }
        Message.obtain(getHandler(), 1, format).sendToTarget();
    }

    public static void setDir(File file) {
        synchronized (DATE_FORMAT) {
            if (sHandler != null && !file.equals(sLogsDirectory)) {
                ((HandlerThread) sHandler.getLooper().getThread()).quit();
                sHandler = null;
            }
        }
        sLogsDirectory = file;
    }
}
