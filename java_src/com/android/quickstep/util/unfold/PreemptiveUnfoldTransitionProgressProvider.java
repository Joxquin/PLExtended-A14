package com.android.quickstep.util.unfold;

import android.os.Handler;
import android.os.Trace;
import android.util.Log;
import java.util.ArrayList;
import kotlin.jvm.internal.h;
import t1.InterfaceC1405d;
import t1.InterfaceC1406e;
/* loaded from: classes.dex */
public final class PreemptiveUnfoldTransitionProgressProvider implements InterfaceC1406e, InterfaceC1405d {
    private final Handler handler;
    private boolean isPreemptivelyRunning;
    private boolean isSourceRunning;
    private final ArrayList listeners;
    private final InterfaceC1406e source;
    private final PreemptiveUnfoldTransitionProgressProvider$sourceListener$1 sourceListener;
    private final Runnable timeoutRunnable;

    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.quickstep.util.unfold.PreemptiveUnfoldTransitionProgressProvider$sourceListener$1] */
    public PreemptiveUnfoldTransitionProgressProvider(InterfaceC1406e source, Handler handler) {
        h.e(source, "source");
        h.e(handler, "handler");
        this.source = source;
        this.handler = handler;
        this.timeoutRunnable = new Runnable() { // from class: com.android.quickstep.util.unfold.PreemptiveUnfoldTransitionProgressProvider$timeoutRunnable$1
            @Override // java.lang.Runnable
            public final void run() {
                boolean isRunning;
                ArrayList<InterfaceC1405d> arrayList;
                isRunning = PreemptiveUnfoldTransitionProgressProvider.this.isRunning();
                if (isRunning) {
                    arrayList = PreemptiveUnfoldTransitionProgressProvider.this.listeners;
                    for (InterfaceC1405d interfaceC1405d : arrayList) {
                        interfaceC1405d.onTransitionFinished();
                    }
                    PreemptiveUnfoldTransitionProgressProvider.this.onPreemptiveStartFinished();
                    Log.wtf(PreemptiveUnfoldTransitionProgressProviderKt.TAG, "Timeout occurred when waiting for the source transition to start");
                }
            }
        };
        this.listeners = new ArrayList();
        this.sourceListener = new InterfaceC1405d() { // from class: com.android.quickstep.util.unfold.PreemptiveUnfoldTransitionProgressProvider$sourceListener$1
            @Override // t1.InterfaceC1405d
            public void onTransitionFinished() {
                boolean isRunning;
                Handler handler2;
                Runnable runnable;
                ArrayList<InterfaceC1405d> arrayList;
                isRunning = PreemptiveUnfoldTransitionProgressProvider.this.isRunning();
                if (isRunning) {
                    arrayList = PreemptiveUnfoldTransitionProgressProvider.this.listeners;
                    for (InterfaceC1405d interfaceC1405d : arrayList) {
                        interfaceC1405d.onTransitionFinished();
                    }
                }
                PreemptiveUnfoldTransitionProgressProvider.this.isSourceRunning = false;
                PreemptiveUnfoldTransitionProgressProvider.this.onPreemptiveStartFinished();
                handler2 = PreemptiveUnfoldTransitionProgressProvider.this.handler;
                runnable = PreemptiveUnfoldTransitionProgressProvider.this.timeoutRunnable;
                handler2.removeCallbacks(runnable);
            }

            @Override // t1.InterfaceC1405d
            public void onTransitionFinishing() {
                boolean isRunning;
                ArrayList<InterfaceC1405d> arrayList;
                isRunning = PreemptiveUnfoldTransitionProgressProvider.this.isRunning();
                if (isRunning) {
                    arrayList = PreemptiveUnfoldTransitionProgressProvider.this.listeners;
                    for (InterfaceC1405d interfaceC1405d : arrayList) {
                        interfaceC1405d.onTransitionFinishing();
                    }
                    PreemptiveUnfoldTransitionProgressProvider.this.isSourceRunning = true;
                }
            }

            @Override // t1.InterfaceC1405d
            public void onTransitionProgress(float f4) {
                boolean isRunning;
                ArrayList<InterfaceC1405d> arrayList;
                isRunning = PreemptiveUnfoldTransitionProgressProvider.this.isRunning();
                if (isRunning) {
                    arrayList = PreemptiveUnfoldTransitionProgressProvider.this.listeners;
                    for (InterfaceC1405d interfaceC1405d : arrayList) {
                        interfaceC1405d.onTransitionProgress(f4);
                    }
                    PreemptiveUnfoldTransitionProgressProvider.this.isSourceRunning = true;
                }
            }

            @Override // t1.InterfaceC1405d
            public void onTransitionStarted() {
                Handler handler2;
                Runnable runnable;
                boolean isRunning;
                ArrayList<InterfaceC1405d> arrayList;
                handler2 = PreemptiveUnfoldTransitionProgressProvider.this.handler;
                runnable = PreemptiveUnfoldTransitionProgressProvider.this.timeoutRunnable;
                handler2.removeCallbacks(runnable);
                isRunning = PreemptiveUnfoldTransitionProgressProvider.this.isRunning();
                if (!isRunning) {
                    arrayList = PreemptiveUnfoldTransitionProgressProvider.this.listeners;
                    for (InterfaceC1405d interfaceC1405d : arrayList) {
                        interfaceC1405d.onTransitionStarted();
                    }
                }
                PreemptiveUnfoldTransitionProgressProvider.this.onPreemptiveStartFinished();
                PreemptiveUnfoldTransitionProgressProvider.this.isSourceRunning = true;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isRunning() {
        return this.isPreemptivelyRunning || this.isSourceRunning;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPreemptiveStartFinished() {
        if (this.isPreemptivelyRunning) {
            Trace.endAsyncSection("PreemptiveUnfoldTransitionProgressProvider#startedPreemptively", 0);
            this.isPreemptivelyRunning = false;
        }
    }

    public static /* synthetic */ void preemptivelyStartTransition$default(PreemptiveUnfoldTransitionProgressProvider preemptiveUnfoldTransitionProgressProvider, Float f4, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            f4 = null;
        }
        preemptiveUnfoldTransitionProgressProvider.preemptivelyStartTransition(f4);
    }

    public final void cancelPreemptiveStart() {
        this.handler.removeCallbacks(this.timeoutRunnable);
        if (isRunning()) {
            for (InterfaceC1405d interfaceC1405d : this.listeners) {
                interfaceC1405d.onTransitionFinished();
            }
        }
        onPreemptiveStartFinished();
    }

    @Override // t1.InterfaceC1406e
    public void destroy() {
        this.handler.removeCallbacks(this.timeoutRunnable);
        this.source.removeCallback(this.sourceListener);
        this.source.destroy();
    }

    public final void init() {
        this.source.addCallback(this.sourceListener);
    }

    @Override // t1.InterfaceC1405d
    public /* bridge */ /* synthetic */ void onTransitionFinished() {
    }

    @Override // t1.InterfaceC1405d
    public /* bridge */ /* synthetic */ void onTransitionFinishing() {
    }

    @Override // t1.InterfaceC1405d
    public /* bridge */ /* synthetic */ void onTransitionProgress(float f4) {
    }

    @Override // t1.InterfaceC1405d
    public /* bridge */ /* synthetic */ void onTransitionStarted() {
    }

    public final void preemptivelyStartTransition() {
        preemptivelyStartTransition$default(this, null, 1, null);
    }

    @Override // x1.InterfaceC1459c
    public void addCallback(InterfaceC1405d listener) {
        h.e(listener, "listener");
        this.listeners.add(listener);
    }

    public final void preemptivelyStartTransition(Float f4) {
        if (!isRunning()) {
            Trace.beginAsyncSection("PreemptiveUnfoldTransitionProgressProvider#startedPreemptively", 0);
            for (InterfaceC1405d interfaceC1405d : this.listeners) {
                interfaceC1405d.onTransitionStarted();
            }
            if (f4 != null) {
                float floatValue = f4.floatValue();
                for (InterfaceC1405d interfaceC1405d2 : this.listeners) {
                    interfaceC1405d2.onTransitionProgress(floatValue);
                }
            }
            this.handler.removeCallbacks(this.timeoutRunnable);
            this.handler.postDelayed(this.timeoutRunnable, PreemptiveUnfoldTransitionProgressProviderKt.PREEMPTIVE_UNFOLD_TIMEOUT_MS);
        }
        this.isPreemptivelyRunning = true;
    }

    @Override // x1.InterfaceC1459c
    public void removeCallback(InterfaceC1405d listener) {
        h.e(listener, "listener");
        this.listeners.remove(listener);
    }
}
