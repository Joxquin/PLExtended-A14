package com.google.android.apps.nexuslauncher;

import android.app.PendingIntent;
import android.content.Intent;
import android.view.View;
/* loaded from: classes.dex */
public final class f implements n1.c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ NexusLauncherActivity f7348a;

    public f(NexusLauncherActivity nexusLauncherActivity) {
        this.f7348a = nexusLauncherActivity;
    }

    @Override // n1.c
    public final void a(View view, PendingIntent pendingIntent) {
        this.f7348a.sendPendingIntentWithAnimation(view, pendingIntent, null);
    }

    @Override // n1.c
    public final void b(View view, Intent intent) {
        this.f7348a.startActivitySafely(view, intent, null);
    }
}
