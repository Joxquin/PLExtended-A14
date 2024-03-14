package com.android.wm.shell.back;

import android.os.IInterface;
import android.view.IRemoteAnimationRunner;
import android.window.IOnBackInvokedCallback;
import com.android.internal.view.AppearanceRegion;
/* loaded from: classes.dex */
public interface IBackAnimation extends IInterface {
    void clearBackToLauncherCallback();

    void customizeStatusBarAppearance(AppearanceRegion appearanceRegion);

    void setBackToLauncherCallback(IOnBackInvokedCallback iOnBackInvokedCallback, IRemoteAnimationRunner iRemoteAnimationRunner);
}
