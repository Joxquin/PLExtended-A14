package com.android.quickstep;

import com.android.quickstep.OverviewCommandHelper;
/* loaded from: classes.dex */
public final /* synthetic */ class X implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5543d = 0;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ OverviewCommandHelper f5544e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ OverviewCommandHelper.CommandInfo f5545f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Object f5546g;

    public /* synthetic */ X(OverviewCommandHelper overviewCommandHelper, BaseActivityInterface baseActivityInterface, OverviewCommandHelper.CommandInfo commandInfo) {
        this.f5544e = overviewCommandHelper;
        this.f5546g = baseActivityInterface;
        this.f5545f = commandInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5543d) {
            case 0:
                this.f5544e.lambda$executeCommand$2((BaseActivityInterface) this.f5546g, this.f5545f);
                return;
            default:
                this.f5544e.lambda$executeCommand$3(this.f5545f, (AbsSwipeUpHandler) this.f5546g);
                return;
        }
    }

    public /* synthetic */ X(OverviewCommandHelper overviewCommandHelper, OverviewCommandHelper.CommandInfo commandInfo, AbsSwipeUpHandler absSwipeUpHandler) {
        this.f5544e = overviewCommandHelper;
        this.f5545f = commandInfo;
        this.f5546g = absSwipeUpHandler;
    }
}
