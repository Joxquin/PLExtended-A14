package com.android.launcher3.taskbar;

import android.view.ViewTreeObserver;
/* loaded from: classes.dex */
final class VoiceInteractionWindowController$nonTouchableInsetsComputer$1 implements ViewTreeObserver.OnComputeInternalInsetsListener {
    public static final VoiceInteractionWindowController$nonTouchableInsetsComputer$1 INSTANCE = new VoiceInteractionWindowController$nonTouchableInsetsComputer$1();

    public final void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
        internalInsetsInfo.touchableRegion.setEmpty();
        internalInsetsInfo.setTouchableInsets(3);
    }
}
