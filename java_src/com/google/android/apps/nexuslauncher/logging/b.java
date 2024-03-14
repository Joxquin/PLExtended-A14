package com.google.android.apps.nexuslauncher.logging;

import android.os.SystemClock;
import android.util.Log;
import android.view.WindowInsetsAnimationController;
import androidx.fragment.app.C0196d0;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.KeyboardStateManager;
import com.android.launcher3.logging.StatsLogManager;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f7473c;

    /* renamed from: a  reason: collision with root package name */
    public final a f7474a;

    /* renamed from: b  reason: collision with root package name */
    public final KeyboardStateManager f7475b;
    long mOnReadyStartTimeMillis;

    static {
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        f7473c = Log.isLoggable("ImeLatencyLogging", 2);
    }

    public b(a aVar, KeyboardStateManager keyboardStateManager) {
        this.f7474a = aVar;
        this.f7475b = keyboardStateManager;
    }

    public final void a(WindowInsetsAnimationController windowInsetsAnimationController, StatsLogManager.StatsLatencyLogger.LatencyType latencyType) {
        int i4 = windowInsetsAnimationController != null ? windowInsetsAnimationController.getCurrentInsets().bottom : 0;
        KeyboardStateManager keyboardStateManager = this.f7475b;
        a aVar = this.f7474a;
        if (i4 <= 0 || keyboardStateManager.getKeyboardState() != KeyboardStateManager.KeyboardState.HIDE) {
            if (i4 > 0 || keyboardStateManager.getKeyboardState() != KeyboardStateManager.KeyboardState.SHOW) {
                if (f7473c) {
                    StringBuilder a4 = C0196d0.a("Invalid onCancelled operation performed with imeHeight= ", i4, " KeyboardState= ");
                    a4.append(keyboardStateManager.getKeyboardState().name());
                    a4.append(" type= ");
                    a4.append(latencyType.name());
                    Log.e("ImeLatencyLogging", a4.toString());
                }
                aVar.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_IME_CANCELLED_INVALID_HEIGHT_DURATION, latencyType);
            } else if (this.mOnReadyStartTimeMillis > 0) {
                aVar.a(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_SHOW_IME_CANCELLED_INCREMENTAL_DURATION, SystemClock.elapsedRealtime() - this.mOnReadyStartTimeMillis, latencyType);
            } else {
                aVar.f7471b = keyboardStateManager.getLastUpdatedTime();
                aVar.f7472c = new InstanceIdSequence().newInstanceId();
                aVar.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_SHOW_IME_CANCELLED_DURATION, latencyType);
            }
        } else if (this.mOnReadyStartTimeMillis > 0) {
            aVar.a(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_HIDE_IME_CANCELLED_INCREMENTAL_DURATION, SystemClock.elapsedRealtime() - this.mOnReadyStartTimeMillis, latencyType);
        } else {
            aVar.f7471b = keyboardStateManager.getLastUpdatedTime();
            aVar.f7472c = new InstanceIdSequence().newInstanceId();
            aVar.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_HIDE_IME_CANCELLED_DURATION, latencyType);
        }
        this.mOnReadyStartTimeMillis = 0L;
    }

    public final void b(WindowInsetsAnimationController windowInsetsAnimationController, StatsLogManager.StatsLatencyLogger.LatencyType latencyType) {
        int i4 = windowInsetsAnimationController.getCurrentInsets().bottom;
        a aVar = this.f7474a;
        KeyboardStateManager keyboardStateManager = this.f7475b;
        if (i4 > 0 && keyboardStateManager.getKeyboardState() == KeyboardStateManager.KeyboardState.SHOW) {
            aVar.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_SHOW_IME_ANIMATION_DURATION, latencyType);
        } else if (i4 > 0 || keyboardStateManager.getKeyboardState() != KeyboardStateManager.KeyboardState.HIDE) {
            if (f7473c) {
                StringBuilder a4 = C0196d0.a("Invalid onFinished operation performed with imeHeight= ", i4, " KeyboardState= ");
                a4.append(keyboardStateManager.getKeyboardState().name());
                a4.append(" type= ");
                a4.append(latencyType.name());
                Log.e("ImeLatencyLogging", a4.toString());
            }
            aVar.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_IME_FINISHED_INVALID_HEIGHT_DURATION, latencyType);
            this.mOnReadyStartTimeMillis = 0L;
            return;
        } else {
            aVar.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_HIDE_IME_ANIMATION_DURATION, latencyType);
        }
        keyboardStateManager.setImeHeight(i4);
        this.mOnReadyStartTimeMillis = 0L;
    }

    public final void c(WindowInsetsAnimationController windowInsetsAnimationController, StatsLogManager.StatsLatencyLogger.LatencyType latencyType) {
        KeyboardStateManager keyboardStateManager = this.f7475b;
        long lastUpdatedTime = keyboardStateManager.getLastUpdatedTime();
        a aVar = this.f7474a;
        aVar.f7471b = lastUpdatedTime;
        aVar.f7472c = new InstanceIdSequence().newInstanceId();
        this.mOnReadyStartTimeMillis = SystemClock.elapsedRealtime();
        int i4 = windowInsetsAnimationController.getCurrentInsets().bottom;
        if (i4 > 0 && keyboardStateManager.getKeyboardState() == KeyboardStateManager.KeyboardState.HIDE) {
            aVar.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_HIDE_IME_READY_DURATION, latencyType);
        } else if (i4 > 0 || keyboardStateManager.getKeyboardState() != KeyboardStateManager.KeyboardState.SHOW) {
            if (f7473c) {
                StringBuilder a4 = C0196d0.a("Invalid onReady operation performed with imeHeight= ", i4, " KeyboardState= ");
                a4.append(keyboardStateManager.getKeyboardState().name());
                a4.append(" type= ");
                a4.append(latencyType.name());
                Log.e("ImeLatencyLogging", a4.toString());
            }
            aVar.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_IME_READY_INVALID_HEIGHT_DURATION, latencyType);
            return;
        } else {
            aVar.b(NexusLauncherLatencyEvent.LAUNCHER_LATENCY_SHOW_IME_READY_DURATION, latencyType);
        }
        keyboardStateManager.setImeHeight(i4);
    }
}
