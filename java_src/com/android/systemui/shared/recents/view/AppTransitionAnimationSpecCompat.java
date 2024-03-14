package com.android.systemui.shared.recents.view;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.AppTransitionAnimationSpec;
/* loaded from: classes.dex */
public class AppTransitionAnimationSpecCompat {
    private Bitmap mBuffer;
    private Rect mRect;
    private int mTaskId;

    public AppTransitionAnimationSpecCompat(int i4, Bitmap bitmap, Rect rect) {
        this.mTaskId = i4;
        this.mBuffer = bitmap;
        this.mRect = rect;
    }

    public AppTransitionAnimationSpec toAppTransitionAnimationSpec() {
        int i4 = this.mTaskId;
        Bitmap bitmap = this.mBuffer;
        return new AppTransitionAnimationSpec(i4, bitmap != null ? bitmap.getHardwareBuffer() : null, this.mRect);
    }
}
