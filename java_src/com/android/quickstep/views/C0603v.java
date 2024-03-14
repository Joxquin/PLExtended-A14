package com.android.quickstep.views;

import android.view.MotionEvent;
import com.android.quickstep.RemoteTargetGluer;
import java.util.ArrayList;
import java.util.function.Consumer;
/* renamed from: com.android.quickstep.views.v  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0603v implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5996a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ RecentsView f5997b;

    public /* synthetic */ C0603v(RecentsView recentsView, int i4) {
        this.f5996a = i4;
        this.f5997b = recentsView;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5996a) {
            case 0:
                this.f5997b.onTaskLaunchAnimationEnd(((Boolean) obj).booleanValue());
                return;
            case 1:
                this.f5997b.lambda$dispatchScrollChanged$44((RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            case 2:
                this.f5997b.lambda$animateToFullscreen$20((Boolean) obj);
                return;
            case 3:
                this.f5997b.lambda$createInitialSplitSelectAnimation$18((Boolean) obj);
                return;
            case 4:
                this.f5997b.lambda$confirmSplitSelect$34((Boolean) obj);
                return;
            case 5:
                this.f5997b.applyLoadPlan((ArrayList) obj);
                return;
            case 6:
                this.f5997b.lambda$setRecentsAnimationTargets$40((RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            case 7:
                this.f5997b.lambda$confirmSplitSelect$33((Boolean) obj);
                return;
            case 8:
                this.f5997b.lambda$animateToFullscreen$19((Boolean) obj);
                return;
            case 9:
                this.f5997b.lambda$getEventDispatcher$42((MotionEvent) obj);
                return;
            case 10:
                this.f5997b.lambda$onAttachedToWindow$2((RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            case 11:
                this.f5997b.lambda$onLayout$29((RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            default:
                this.f5997b.lambda$createAllTasksDismissAnimation$28((Boolean) obj);
                return;
        }
    }
}
