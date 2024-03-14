package com.android.systemui.shared.system;

import android.util.Log;
import java.lang.Thread;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class UncaughtExceptionPreHandlerManager {
    private final List handlers = new CopyOnWriteArrayList();
    private final GlobalUncaughtExceptionHandler globalUncaughtExceptionPreHandler = new GlobalUncaughtExceptionHandler();

    /* loaded from: classes.dex */
    public final class GlobalUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {
        public GlobalUncaughtExceptionHandler() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            UncaughtExceptionPreHandlerManager.this.handleUncaughtException(thread, th);
        }
    }

    private final void addHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        if (this.handlers.contains(uncaughtExceptionHandler)) {
            return;
        }
        this.handlers.add(uncaughtExceptionHandler);
    }

    private final void checkGlobalHandlerSetup() {
        Thread.UncaughtExceptionHandler uncaughtExceptionPreHandler = Thread.getUncaughtExceptionPreHandler();
        if (h.a(uncaughtExceptionPreHandler, this.globalUncaughtExceptionPreHandler)) {
            return;
        }
        if (uncaughtExceptionPreHandler instanceof GlobalUncaughtExceptionHandler) {
            throw new IllegalStateException("Two UncaughtExceptionPreHandlerManagers created");
        }
        if (uncaughtExceptionPreHandler != null) {
            addHandler(uncaughtExceptionPreHandler);
        }
        Thread.setUncaughtExceptionPreHandler(this.globalUncaughtExceptionPreHandler);
    }

    public final void handleUncaughtException(Thread thread, Throwable th) {
        for (Thread.UncaughtExceptionHandler uncaughtExceptionHandler : this.handlers) {
            try {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            } catch (Exception e4) {
                Log.wtf("Uncaught exception pre-handler error", e4);
            }
        }
    }

    public final void registerHandler(Thread.UncaughtExceptionHandler handler) {
        h.e(handler, "handler");
        checkGlobalHandlerSetup();
        addHandler(handler);
    }
}
