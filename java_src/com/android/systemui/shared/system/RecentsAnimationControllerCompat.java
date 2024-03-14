package com.android.systemui.shared.system;

import android.os.RemoteException;
import android.util.Log;
import android.view.IRecentsAnimationController;
import android.view.SurfaceControl;
import android.window.PictureInPictureSurfaceTransaction;
import android.window.TaskSnapshot;
import com.android.systemui.shared.recents.model.ThumbnailData;
/* loaded from: classes.dex */
public class RecentsAnimationControllerCompat {
    private static final String TAG = "RecentsAnimationControllerCompat";
    private IRecentsAnimationController mAnimationController;

    public RecentsAnimationControllerCompat() {
    }

    public RecentsAnimationControllerCompat(IRecentsAnimationController iRecentsAnimationController) {
        this.mAnimationController = iRecentsAnimationController;
    }

    public void animateNavigationBarToApp(long j4) {
        try {
            this.mAnimationController.animateNavigationBarToApp(j4);
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed to animate the navigation bar to app", e4);
        }
    }

    public void cleanupScreenshot() {
        try {
            this.mAnimationController.cleanupScreenshot();
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed to clean up screenshot of recents animation", e4);
        }
    }

    public void detachNavigationBarFromApp(boolean z4) {
        try {
            this.mAnimationController.detachNavigationBarFromApp(z4);
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed to detach the navigation bar from app", e4);
        }
    }

    public void finish(boolean z4, boolean z5) {
        try {
            this.mAnimationController.finish(z4, z5);
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed to finish recents animation", e4);
        }
    }

    public boolean removeTask(int i4) {
        try {
            return this.mAnimationController.removeTask(i4);
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed to remove remote animation target", e4);
            return false;
        }
    }

    public ThumbnailData screenshotTask(int i4) {
        try {
            TaskSnapshot screenshotTask = this.mAnimationController.screenshotTask(i4);
            if (screenshotTask != null) {
                return new ThumbnailData(screenshotTask);
            }
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed to screenshot task", e4);
        }
        return new ThumbnailData();
    }

    public void setAnimationTargetsBehindSystemBars(boolean z4) {
        try {
            this.mAnimationController.setAnimationTargetsBehindSystemBars(z4);
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed to set whether animation targets are behind system bars", e4);
        }
    }

    public void setDeferCancelUntilNextTransition(boolean z4, boolean z5) {
        try {
            this.mAnimationController.setDeferCancelUntilNextTransition(z4, z5);
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed to set deferred cancel with screenshot", e4);
        }
    }

    public void setFinishTaskTransaction(int i4, PictureInPictureSurfaceTransaction pictureInPictureSurfaceTransaction, SurfaceControl surfaceControl) {
        try {
            this.mAnimationController.setFinishTaskTransaction(i4, pictureInPictureSurfaceTransaction, surfaceControl);
        } catch (RemoteException e4) {
            Log.d(TAG, "Failed to set finish task bounds", e4);
        }
    }

    public void setInputConsumerEnabled(boolean z4) {
        try {
            this.mAnimationController.setInputConsumerEnabled(z4);
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed to set input consumer enabled state", e4);
        }
    }

    public void setWillFinishToHome(boolean z4) {
        try {
            this.mAnimationController.setWillFinishToHome(z4);
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed to set overview reached state", e4);
        }
    }
}
