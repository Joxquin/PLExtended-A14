package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.allapps.AllAppsGridAdapter;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0627b implements AllAppsGridAdapter.OnLayoutCompletedListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AllAppsGridAdapter f7006a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0635d f7007b;

    public C0627b(C0635d c0635d, AllAppsGridAdapter allAppsGridAdapter) {
        this.f7007b = c0635d;
        this.f7006a = allAppsGridAdapter;
    }

    @Override // com.android.launcher3.allapps.AllAppsGridAdapter.OnLayoutCompletedListener
    public final void onLayoutCompleted() {
        this.f7006a.removeOnLayoutCompletedListener(this);
        C0635d.a(this.f7007b);
    }
}
