package com.android.quickstep.views;

import android.animation.ValueAnimator;
import com.android.quickstep.RemoteTargetGluer;
import java.util.function.Consumer;
/* renamed from: com.android.quickstep.views.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0595m implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5979a;

    public /* synthetic */ C0595m(int i4) {
        this.f5979a = i4;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5979a) {
            case 0:
                RecentsView.lambda$createTaskLaunchAnimation$37((ValueAnimator) obj);
                return;
            case 1:
                RecentsView.lambda$resetTaskVisuals$7((RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            case 2:
                RecentsView.lambda$redrawLiveTile$39((RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            case 3:
                RecentsView.lambda$onDetachedFromWindow$3((RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            default:
                RecentsView.lambda$reset$10((RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
        }
    }
}
