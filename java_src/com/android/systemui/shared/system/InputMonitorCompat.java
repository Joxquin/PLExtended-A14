package com.android.systemui.shared.system;

import android.hardware.input.InputManagerGlobal;
import android.os.Looper;
import android.view.Choreographer;
import android.view.InputMonitor;
import com.android.systemui.shared.system.InputChannelCompat;
/* loaded from: classes.dex */
public class InputMonitorCompat {
    private final InputMonitor mInputMonitor;

    public InputMonitorCompat(String str, int i4) {
        this.mInputMonitor = InputManagerGlobal.getInstance().monitorGestureInput(str, i4);
    }

    public void dispose() {
        this.mInputMonitor.dispose();
    }

    public InputChannelCompat.InputEventReceiver getInputReceiver(Looper looper, Choreographer choreographer, InputChannelCompat.InputEventListener inputEventListener) {
        return new InputChannelCompat.InputEventReceiver(this.mInputMonitor.getInputChannel(), looper, choreographer, inputEventListener);
    }

    public void pilferPointers() {
        this.mInputMonitor.pilferPointers();
    }
}
