package com.android.quickstep.views;

import android.animation.Animator;
import com.android.launcher3.DeviceProfile;
import com.android.quickstep.RemoteTargetGluer;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class G implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5922a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f5923b;

    public /* synthetic */ G(int i4, Object obj) {
        this.f5922a = i4;
        this.f5923b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5922a) {
            case 0:
                Boolean bool = (Boolean) obj;
                ((Animator) this.f5923b).start();
                return;
            case 1:
                RecentsView.lambda$createTaskDismissAnimation$22((TaskView) this.f5923b, (RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            default:
                RecentsView.lambda$setInsets$8((DeviceProfile) this.f5923b, (RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
        }
    }
}
