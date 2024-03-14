package com.android.quickstep.views;

import com.android.quickstep.RemoteTargetGluer;
import java.util.function.Consumer;
/* renamed from: com.android.quickstep.views.y  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0606y implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6004a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ float f6005b;

    public /* synthetic */ C0606y(float f4, int i4) {
        this.f6004a = i4;
        this.f6005b = f4;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f6004a) {
            case 0:
                RecentsView.lambda$updatePageOffsets$30(this.f6005b, (RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            default:
                RecentsView.lambda$setTaskViewsResistanceTranslation$31(this.f6005b, (RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
        }
    }
}
