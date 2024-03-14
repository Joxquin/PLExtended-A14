package com.android.quickstep.views;

import android.view.View;
import android.view.animation.Interpolator;
import com.android.quickstep.RemoteTargetGluer;
import java.util.ArrayList;
import java.util.function.Consumer;
/* renamed from: com.android.quickstep.views.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0604w implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5998a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ RecentsView f5999b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f6000c;

    public /* synthetic */ C0604w(RecentsView recentsView, Object obj, int i4) {
        this.f5998a = i4;
        this.f5999b = recentsView;
        this.f6000c = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5998a) {
            case 0:
                this.f5999b.lambda$applyLoadPlan$5((ArrayList) this.f6000c, (Boolean) obj);
                return;
            case 1:
                this.f5999b.lambda$createTaskDismissAnimation$24((View) this.f6000c, (RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            default:
                this.f5999b.lambda$createTaskLaunchAnimation$36((Interpolator) this.f6000c, (RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
        }
    }
}
