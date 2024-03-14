package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.logging.StatsLogManager;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import java.util.function.Consumer;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.j0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0660j0 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7098a;

    public /* synthetic */ C0660j0(int i4) {
        this.f7098a = i4;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f7098a) {
            case 0:
                ((ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0) obj).a();
                return;
            case 1:
                ((TileLifeCycle) obj).destroy();
                return;
            case 2:
                ((C0699t0) obj).f7204b.cancel();
                return;
            case 3:
                ((ViewTreeObserver$OnWindowVisibilityChangeListenerC0715x0) obj).a();
                return;
            case 4:
                ((TileLifeCycle) obj).destroy();
                return;
            default:
                ((StatsLogManager.StatsLogger) obj).log(NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCH_VALID_IMPRESSION_RENDERED);
                return;
        }
    }
}
