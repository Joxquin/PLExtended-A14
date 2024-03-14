package com.google.android.apps.nexuslauncher.allapps;

import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.f1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0645f1 extends IIntentSender.Stub {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0719y0 f7041d;

    public C0645f1(C0719y0 c0719y0) {
        this.f7041d = c0719y0;
    }

    public final void send(int i4, Intent intent, String str, IBinder iBinder, IIntentReceiver iIntentReceiver, String str2, Bundle bundle) {
        LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
        final C0719y0 c0719y0 = this.f7041d;
        looperExecutor.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.e1
            @Override // java.lang.Runnable
            public final void run() {
                C0719y0.this.f7270J = false;
            }
        });
    }
}
