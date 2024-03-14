package com.android.systemui.shared.system;

import android.graphics.Matrix;
import android.os.Looper;
import android.view.BatchedInputEventReceiver;
import android.view.Choreographer;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.MotionEvent;
/* loaded from: classes.dex */
public class InputChannelCompat {

    /* loaded from: classes.dex */
    public interface InputEventListener {
        void onInputEvent(InputEvent inputEvent);
    }

    /* loaded from: classes.dex */
    public class InputEventReceiver {
        private final BatchedInputEventReceiver mReceiver;

        public InputEventReceiver(InputChannel inputChannel, Looper looper, Choreographer choreographer, final InputEventListener inputEventListener) {
            this.mReceiver = new BatchedInputEventReceiver(inputChannel, looper, choreographer) { // from class: com.android.systemui.shared.system.InputChannelCompat.InputEventReceiver.1
                public void onInputEvent(InputEvent inputEvent) {
                    inputEventListener.onInputEvent(inputEvent);
                    finishInputEvent(inputEvent, true);
                }
            };
        }

        public void dispose() {
            this.mReceiver.dispose();
        }

        public void setBatchingEnabled(boolean z4) {
            this.mReceiver.setBatchingEnabled(z4);
        }
    }

    public static Matrix createRotationMatrix(int i4, int i5, int i6) {
        return MotionEvent.createRotateMatrix(i4, i5, i6);
    }

    public static boolean mergeMotionEvent(MotionEvent motionEvent, MotionEvent motionEvent2) {
        return motionEvent2.addBatch(motionEvent);
    }
}
