package com.android.quickstep;

import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
/* loaded from: classes.dex */
public interface InputConsumer {
    public static final String[] NAMES = {"TYPE_NO_OP", "TYPE_OVERVIEW", "TYPE_OTHER_ACTIVITY", "TYPE_ASSISTANT", "TYPE_DEVICE_LOCKED", "TYPE_ACCESSIBILITY", "TYPE_SCREEN_PINNED", "TYPE_OVERVIEW_WITHOUT_FOCUS", "TYPE_RESET_GESTURE", "TYPE_PROGRESS_DELEGATE", "TYPE_SYSUI_OVERLAY", "TYPE_ONE_HANDED", "TYPE_TASKBAR_STASH", "TYPE_STATUS_BAR", "TYPE_CURSOR_HOVER", "TYPE_NAV_HANDLE_LONG_PRESS"};
    public static final InputConsumer NO_OP = new L();
    public static final int TYPE_ACCESSIBILITY = 32;
    public static final int TYPE_ASSISTANT = 8;
    public static final int TYPE_CURSOR_HOVER = 16384;
    public static final int TYPE_DEVICE_LOCKED = 16;
    public static final int TYPE_NAV_HANDLE_LONG_PRESS = 32768;
    public static final int TYPE_NO_OP = 1;
    public static final int TYPE_ONE_HANDED = 2048;
    public static final int TYPE_OTHER_ACTIVITY = 4;
    public static final int TYPE_OVERVIEW = 2;
    public static final int TYPE_OVERVIEW_WITHOUT_FOCUS = 128;
    public static final int TYPE_PROGRESS_DELEGATE = 512;
    public static final int TYPE_RESET_GESTURE = 256;
    public static final int TYPE_SCREEN_PINNED = 64;
    public static final int TYPE_STATUS_BAR = 8192;
    public static final int TYPE_SYSUI_OVERLAY = 1024;
    public static final int TYPE_TASKBAR_STASH = 4096;

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ int lambda$static$0() {
        return 1;
    }

    default boolean allowInterceptByParent() {
        return true;
    }

    default InputConsumer getActiveConsumerInHierarchy() {
        return this;
    }

    default String getName() {
        StringBuilder sb = new StringBuilder();
        int i4 = 0;
        while (true) {
            String[] strArr = NAMES;
            if (i4 >= strArr.length) {
                return sb.toString();
            }
            if ((getType() & (1 << i4)) != 0) {
                if (sb.length() > 0) {
                    sb.append(":");
                }
                sb.append(strArr[i4]);
            }
            i4++;
        }
    }

    int getType();

    default boolean isConsumerDetachedFromGesture() {
        return false;
    }

    default void notifyOrientationSetup() {
    }

    default void onConsumerAboutToBeSwitched() {
    }

    default void onHoverEvent(MotionEvent motionEvent) {
    }

    default void onInputEvent(InputEvent inputEvent) {
        if (inputEvent instanceof MotionEvent) {
            onMotionEvent((MotionEvent) inputEvent);
        } else {
            onKeyEvent((KeyEvent) inputEvent);
        }
    }

    default void onKeyEvent(KeyEvent keyEvent) {
    }

    default void onMotionEvent(MotionEvent motionEvent) {
    }
}
