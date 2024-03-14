package com.google.android.apps.nexuslauncher;

import com.android.launcher3.Launcher;
import com.google.android.apps.nexuslauncher.qsb.QsbTransitionManager;
/* loaded from: classes.dex */
public final class NexusLauncher {

    /* renamed from: a  reason: collision with root package name */
    public final Launcher f6470a;

    /* renamed from: b  reason: collision with root package name */
    public QsbTransitionManager f6471b;

    public NexusLauncher(Launcher launcher) {
        this.f6470a = launcher;
        launcher.setLauncherCallbacks(this);
    }
}
