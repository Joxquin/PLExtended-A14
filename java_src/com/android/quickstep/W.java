package com.android.quickstep;

import com.android.quickstep.OverviewCommandHelper;
/* loaded from: classes.dex */
public final /* synthetic */ class W implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5536d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ OverviewCommandHelper f5537e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ OverviewCommandHelper.CommandInfo f5538f;

    public /* synthetic */ W(OverviewCommandHelper overviewCommandHelper, OverviewCommandHelper.CommandInfo commandInfo, int i4) {
        this.f5536d = i4;
        this.f5537e = overviewCommandHelper;
        this.f5538f = commandInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5536d) {
            case 0:
                OverviewCommandHelper.e(this.f5537e, this.f5538f);
                return;
            default:
                OverviewCommandHelper.c(this.f5537e, this.f5538f);
                return;
        }
    }
}
