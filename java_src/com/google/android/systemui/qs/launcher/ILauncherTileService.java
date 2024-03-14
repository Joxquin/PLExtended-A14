package com.google.android.systemui.qs.launcher;

import android.os.IInterface;
/* loaded from: classes.dex */
public interface ILauncherTileService extends IInterface {
    void addTileListener(String str, ILauncherTileListener iLauncherTileListener);

    void clearTileListeners(String str);

    void handleClick(String str);

    void handleLongClick(String str);
}
