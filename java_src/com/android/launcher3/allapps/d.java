package com.android.launcher3.allapps;

import com.android.launcher3.allapps.ActivityAllAppsContainerView;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4546d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f4547e;

    public /* synthetic */ d(int i4, Object obj) {
        this.f4546d = i4;
        this.f4547e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4546d) {
            case 0:
                ((SearchUiManager) this.f4547e).resetSearch();
                return;
            default:
                ((ActivityAllAppsContainerView.AdapterHolder) ((ActivityAllAppsContainerView) this.f4547e).mAH.get(1)).applyPadding();
                return;
        }
    }
}
