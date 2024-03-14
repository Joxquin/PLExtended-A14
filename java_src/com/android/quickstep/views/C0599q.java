package com.android.quickstep.views;

import com.android.quickstep.RemoteTargetGluer;
import java.util.function.Consumer;
/* renamed from: com.android.quickstep.views.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0599q implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5983a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ RecentsView f5984b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ TaskView f5985c;

    public /* synthetic */ C0599q(RecentsView recentsView, TaskView taskView, int i4) {
        this.f5983a = i4;
        this.f5984b = recentsView;
        this.f5985c = taskView;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5983a) {
            case 0:
                this.f5984b.lambda$addDismissedTaskAnimations$14(this.f5985c, (RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            default:
                this.f5984b.lambda$createTaskLaunchAnimation$38(this.f5985c, (Boolean) obj);
                return;
        }
    }
}
