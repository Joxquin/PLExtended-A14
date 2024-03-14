package com.android.launcher3.taskbar;

import android.graphics.Rect;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.util.TouchController;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class RecentsHitboxExtender implements TouchController {
    private boolean mAnimatingFromTaskbarToOverview;
    private DeviceProfile mDeviceProfile;
    private Handler mHandler;
    private float mLastIconAlignment;
    private Supplier mParentCoordSupplier;
    private View mRecentsButton;
    private boolean mRecentsButtonClicked;
    private final Rect mRecentsHitBox = new Rect();
    private final D mRecentsHitboxResetRunnable = new Runnable() { // from class: com.android.launcher3.taskbar.D
        @Override // java.lang.Runnable
        public final void run() {
            RecentsHitboxExtender.a(RecentsHitboxExtender.this);
        }
    };
    private View mRecentsParent;
    private TouchDelegate mRecentsTouchDelegate;

    public static void a(RecentsHitboxExtender recentsHitboxExtender) {
        recentsHitboxExtender.mAnimatingFromTaskbarToOverview = false;
        recentsHitboxExtender.mRecentsButton.setTouchDelegate(null);
        recentsHitboxExtender.mRecentsHitBox.setEmpty();
        recentsHitboxExtender.mRecentsButtonClicked = false;
    }

    public final boolean extendedHitboxEnabled() {
        return this.mAnimatingFromTaskbarToOverview;
    }

    public final void init(View view, View view2, DeviceProfile deviceProfile, B b4, Handler handler) {
        this.mRecentsButton = view;
        this.mRecentsParent = view2;
        this.mDeviceProfile = deviceProfile;
        this.mParentCoordSupplier = b4;
        this.mHandler = handler;
    }

    public final void onAnimationProgressToOverview(float f4) {
        int i4 = (f4 > 1.0f ? 1 : (f4 == 1.0f ? 0 : -1));
        Rect rect = this.mRecentsHitBox;
        if (i4 == 0 || f4 == 0.0f) {
            this.mLastIconAlignment = f4;
            if (this.mAnimatingFromTaskbarToOverview) {
                D d4 = this.mRecentsHitboxResetRunnable;
                if (i4 == 0) {
                    this.mHandler.postDelayed(d4, 500L);
                    return;
                }
                this.mHandler.removeCallbacks(d4);
                this.mAnimatingFromTaskbarToOverview = false;
                this.mRecentsButton.setTouchDelegate(null);
                rect.setEmpty();
                this.mRecentsButtonClicked = false;
            }
        }
        if (!this.mAnimatingFromTaskbarToOverview && f4 > 0.0f && this.mLastIconAlignment == 0.0f && this.mRecentsButtonClicked) {
            this.mAnimatingFromTaskbarToOverview = true;
            float[] fArr = (float[]) this.mParentCoordSupplier.get();
            int i5 = (int) fArr[0];
            int i6 = (int) fArr[1];
            rect.set(i5, i6, this.mRecentsButton.getWidth() + i5, this.mDeviceProfile.getTaskbarOffsetY() + this.mRecentsButton.getHeight() + i6);
            TouchDelegate touchDelegate = new TouchDelegate(rect, this.mRecentsButton);
            this.mRecentsTouchDelegate = touchDelegate;
            this.mRecentsParent.setTouchDelegate(touchDelegate);
        }
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        return this.mRecentsHitBox.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
        return this.mRecentsTouchDelegate.onTouchEvent(motionEvent);
    }

    public final void onRecentsButtonClicked() {
        this.mRecentsButtonClicked = true;
    }
}
