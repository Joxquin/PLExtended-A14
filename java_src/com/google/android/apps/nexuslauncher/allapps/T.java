package com.google.android.apps.nexuslauncher.allapps;

import android.app.Activity;
import com.android.launcher3.util.ActivityLifecycleCallbacksAdapter;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
/* loaded from: classes.dex */
public final class T implements ActivityLifecycleCallbacksAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ U f6867d;

    public T(U u4) {
        this.f6867d = u4;
    }

    @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        ((NexusLauncherActivity) this.f6867d.f7271d).recreate();
    }
}
