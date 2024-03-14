package com.google.android.apps.nexuslauncher.allapps;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import com.android.launcher3.util.Executors;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherLatencyEvent;
import f2.C0889d;
import f2.C0897h;
import f2.C0905l;
/* loaded from: classes.dex */
public final class Q0 extends O0 {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f6691f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Object f6692g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ T0 f6693h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Q0(T0 t02, String str, long j4, NexusLauncherLatencyEvent nexusLauncherLatencyEvent, Object obj, int i4) {
        super(t02, str, j4, nexusLauncherLatencyEvent, 0);
        this.f6691f = i4;
        this.f6693h = t02;
        this.f6692g = obj;
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.O0, R2.i
    public final void b(Object obj) {
        int i4 = this.f6691f;
        Object obj2 = this.f6692g;
        switch (i4) {
            case 0:
                C0905l c0905l = (C0905l) obj;
                super.b(c0905l);
                if (!c0905l.d()) {
                    Log.e("OneSearchSuggestProvider", "No URL in AGA response");
                    return;
                }
                Executors.MAIN_EXECUTOR.execute(new H0(this, (View) obj2, c0905l.c(), 2));
                return;
            case 1:
                C0897h c0897h = (C0897h) obj;
                super.b(c0897h);
                if (!c0897h.d()) {
                    Log.e("OneSearchSuggestProvider", "No URL in AGA response");
                    return;
                }
                Executors.MAIN_EXECUTOR.execute(new H0(this, (View) obj2, c0897h.c(), 3));
                return;
            default:
                C0889d c0889d = (C0889d) obj;
                super.b(c0889d);
                if (!c0889d.d()) {
                    Log.e("OneSearchSuggestProvider", "No URL in AGA response");
                    return;
                }
                Executors.MAIN_EXECUTOR.execute(new H0(this, new Intent("android.intent.action.VIEW", Uri.parse(c0889d.c())).setFlags(268435456), (String) obj2, 1));
                return;
        }
    }
}
