package com.android.quickstep;

import android.os.RemoteException;
import android.util.Log;
@FunctionalInterface
/* loaded from: classes.dex */
public interface RemoteRunnable {
    static void executeSafely(RemoteRunnable remoteRunnable) {
        try {
            remoteRunnable.run();
        } catch (RemoteException e4) {
            Log.e("RemoteRunnable", "Error calling remote method", e4);
        }
    }

    void run();
}
