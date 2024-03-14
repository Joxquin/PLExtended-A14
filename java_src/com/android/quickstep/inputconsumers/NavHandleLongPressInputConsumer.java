package com.android.quickstep.inputconsumers;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.quickstep.InputConsumer;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.InputMonitorCompat;
/* loaded from: classes.dex */
public class NavHandleLongPressInputConsumer extends DelegateInputConsumer {
    private final GestureDetector mLongPressDetector;
    private final NavHandleLongPressHandler mNavHandleLongPressHandler;
    private final float mNavHandleWidth;
    private final float mScreenWidth;

    public NavHandleLongPressInputConsumer(Context context, InputConsumer inputConsumer, InputMonitorCompat inputMonitorCompat) {
        super(inputConsumer, inputMonitorCompat);
        this.mNavHandleWidth = context.getResources().getDimensionPixelSize(R.dimen.navigation_home_handle_width);
        this.mScreenWidth = ((DisplayController) DisplayController.INSTANCE.get(context)).getInfo().currentSize.x;
        this.mNavHandleLongPressHandler = NavHandleLongPressHandler.newInstance(context);
        this.mLongPressDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.android.quickstep.inputconsumers.NavHandleLongPressInputConsumer.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                Runnable longPressRunnable;
                if (!NavHandleLongPressInputConsumer.this.isInArea(motionEvent.getRawX()) || (longPressRunnable = NavHandleLongPressInputConsumer.this.mNavHandleLongPressHandler.getLongPressRunnable()) == null) {
                    return;
                }
                NavHandleLongPressInputConsumer.this.setActive(motionEvent);
                Executors.MAIN_EXECUTOR.getHandler().postDelayed(longPressRunnable, 50L);
            }
        });
    }

    @Override // com.android.quickstep.inputconsumers.DelegateInputConsumer
    public String getDelegatorName() {
        return "NavHandleLongPressInputConsumer";
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return this.mDelegate.getType() | 32768;
    }

    public boolean isInArea(float f4) {
        return Math.abs((this.mScreenWidth / 2.0f) - f4) < this.mNavHandleWidth / 2.0f;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        this.mLongPressDetector.onTouchEvent(motionEvent);
        if (this.mState != 1) {
            this.mDelegate.onMotionEvent(motionEvent);
        }
    }
}
