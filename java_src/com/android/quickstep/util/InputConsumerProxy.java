package com.android.quickstep.util;

import android.content.Context;
import android.util.Log;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.SimpleOrientationTouchTransformer;
import com.android.systemui.shared.system.InputConsumerController;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class InputConsumerProxy {
    private static final String TAG = "InputConsumerProxy";
    private Runnable mCallback;
    private Supplier mConsumerSupplier;
    private final Context mContext;
    private InputConsumer mInputConsumer;
    private final InputConsumerController mInputConsumerController;
    private final Supplier mRotationSupplier;
    private boolean mDestroyed = false;
    private boolean mTouchInProgress = false;
    private boolean mDestroyPending = false;

    public InputConsumerProxy(Context context, Supplier supplier, InputConsumerController inputConsumerController, Runnable runnable, Supplier supplier2) {
        this.mContext = context;
        this.mRotationSupplier = supplier;
        this.mInputConsumerController = inputConsumerController;
        this.mCallback = runnable;
        this.mConsumerSupplier = supplier2;
    }

    private void initInputConsumerIfNeeded() {
        if (this.mInputConsumer == null) {
            Runnable runnable = this.mCallback;
            if (runnable != null) {
                runnable.run();
            }
            this.mInputConsumer = (InputConsumer) this.mConsumerSupplier.get();
            this.mConsumerSupplier = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onInputConsumerEvent(InputEvent inputEvent) {
        boolean z4 = true;
        if (inputEvent instanceof MotionEvent) {
            MotionEvent motionEvent = (MotionEvent) inputEvent;
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 9 && actionMasked != 7 && actionMasked != 10) {
                z4 = false;
            }
            if (z4) {
                onInputConsumerHoverEvent(motionEvent);
            } else {
                onInputConsumerMotionEvent(motionEvent);
            }
        } else if (inputEvent instanceof KeyEvent) {
            initInputConsumerIfNeeded();
            this.mInputConsumer.onKeyEvent((KeyEvent) inputEvent);
            return true;
        }
        return false;
    }

    private void onInputConsumerHoverEvent(MotionEvent motionEvent) {
        initInputConsumerIfNeeded();
        if (this.mInputConsumer != null) {
            ((SimpleOrientationTouchTransformer) SimpleOrientationTouchTransformer.INSTANCE.get(this.mContext)).transform(motionEvent, ((Integer) this.mRotationSupplier.get()).intValue());
            this.mInputConsumer.onHoverEvent(motionEvent);
        }
    }

    private boolean onInputConsumerMotionEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z4 = this.mTouchInProgress;
        if (!z4 && action != 0) {
            Log.w(TAG, "Received non-down motion before down motion: " + action);
            return false;
        } else if (z4 && action == 0) {
            Log.w(TAG, "Received down motion while touch was already in progress");
            return false;
        } else {
            if (action == 0) {
                this.mTouchInProgress = true;
                initInputConsumerIfNeeded();
            } else if (action == 3 || action == 1) {
                this.mTouchInProgress = false;
                if (this.mDestroyPending) {
                    destroy();
                }
            }
            if (this.mInputConsumer != null) {
                ((SimpleOrientationTouchTransformer) SimpleOrientationTouchTransformer.INSTANCE.get(this.mContext)).transform(motionEvent, ((Integer) this.mRotationSupplier.get()).intValue());
                this.mInputConsumer.onMotionEvent(motionEvent);
            }
            return true;
        }
    }

    public void destroy() {
        if (this.mTouchInProgress) {
            this.mDestroyPending = true;
            return;
        }
        this.mDestroyPending = false;
        this.mDestroyed = true;
        this.mInputConsumerController.setInputListener(null);
    }

    public void enable() {
        if (this.mDestroyed) {
            return;
        }
        this.mInputConsumerController.setInputListener(new InputConsumerController.InputListener() { // from class: com.android.quickstep.util.w
            @Override // com.android.systemui.shared.system.InputConsumerController.InputListener
            public final boolean onInputEvent(InputEvent inputEvent) {
                boolean onInputConsumerEvent;
                onInputConsumerEvent = InputConsumerProxy.this.onInputConsumerEvent(inputEvent);
                return onInputConsumerEvent;
            }
        });
    }

    public void unregisterCallback() {
        this.mCallback = null;
    }
}
