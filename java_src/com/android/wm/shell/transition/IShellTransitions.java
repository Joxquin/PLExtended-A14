package com.android.wm.shell.transition;

import android.os.IBinder;
import android.os.IInterface;
import android.window.RemoteTransition;
import android.window.TransitionFilter;
/* loaded from: classes.dex */
public interface IShellTransitions extends IInterface {
    IBinder getShellApplyToken();

    void registerRemote(RemoteTransition remoteTransition, TransitionFilter transitionFilter);

    void unregisterRemote(RemoteTransition remoteTransition);
}
