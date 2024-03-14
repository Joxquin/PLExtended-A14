package com.android.wm.shell.pip;

import android.app.PictureInPictureParams;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.graphics.Rect;
import android.os.IInterface;
import android.view.SurfaceControl;
/* loaded from: classes.dex */
public interface IPip extends IInterface {
    void abortSwipePipToHome(int i4, ComponentName componentName);

    void setLauncherAppIconSize(int i4);

    void setLauncherKeepClearAreaHeight(boolean z4, int i4);

    void setPipAnimationListener(IPipAnimationListener iPipAnimationListener);

    void setPipAnimationTypeToAlpha();

    void setShelfHeight(boolean z4, int i4);

    Rect startSwipePipToHome(ComponentName componentName, ActivityInfo activityInfo, PictureInPictureParams pictureInPictureParams, int i4, Rect rect);

    void stopSwipePipToHome(int i4, ComponentName componentName, Rect rect, SurfaceControl surfaceControl);
}
