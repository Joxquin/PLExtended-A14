package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.LauncherState;
import com.android.launcher3.allapps.AllAppsTransitionListener;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class S implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6703a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ LauncherState f6704b;

    public /* synthetic */ S(LauncherState launcherState, int i4) {
        this.f6703a = i4;
        this.f6704b = launcherState;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f6703a) {
            case 0:
                ((AllAppsTransitionListener) obj).onAllAppsTransitionStart(this.f6704b == LauncherState.ALL_APPS);
                return;
            default:
                ((AllAppsTransitionListener) obj).onAllAppsTransitionEnd(this.f6704b == LauncherState.ALL_APPS);
                return;
        }
    }
}
