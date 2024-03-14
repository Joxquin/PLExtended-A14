package com.android.quickstep;
/* renamed from: com.android.quickstep.j0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0521j0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5708d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RecentTasksList f5709e;

    public /* synthetic */ RunnableC0521j0(RecentTasksList recentTasksList, int i4) {
        this.f5708d = i4;
        this.f5709e = recentTasksList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5708d) {
            case 0:
                RecentTasksList.e(this.f5709e);
                return;
            default:
                this.f5709e.onRecentTasksChanged();
                return;
        }
    }
}
