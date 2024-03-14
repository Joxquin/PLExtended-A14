package com.android.launcher3.util;

import android.view.MotionEvent;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public interface TouchController {
    default void dump(String str, PrintWriter printWriter) {
    }

    boolean onControllerInterceptTouchEvent(MotionEvent motionEvent);

    boolean onControllerTouchEvent(MotionEvent motionEvent);
}
