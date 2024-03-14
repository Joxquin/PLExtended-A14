package v1;

import com.android.systemui.unfold.progress.RemoteUnfoldTransitionReceiver;
import java.util.Set;
import t1.InterfaceC1405d;
/* renamed from: v1.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1432b implements InterfaceC1405d {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ RemoteUnfoldTransitionReceiver f12631d;

    public C1432b(RemoteUnfoldTransitionReceiver remoteUnfoldTransitionReceiver) {
        this.f12631d = remoteUnfoldTransitionReceiver;
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionFinished() {
        Set<InterfaceC1405d> set;
        RemoteUnfoldTransitionReceiver remoteUnfoldTransitionReceiver = this.f12631d;
        remoteUnfoldTransitionReceiver.getClass();
        set = remoteUnfoldTransitionReceiver.listeners;
        for (InterfaceC1405d interfaceC1405d : set) {
            interfaceC1405d.onTransitionFinished();
        }
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionProgress(float f4) {
        Set<InterfaceC1405d> set;
        RemoteUnfoldTransitionReceiver remoteUnfoldTransitionReceiver = this.f12631d;
        remoteUnfoldTransitionReceiver.getClass();
        set = remoteUnfoldTransitionReceiver.listeners;
        for (InterfaceC1405d interfaceC1405d : set) {
            interfaceC1405d.onTransitionProgress(f4);
        }
    }

    @Override // t1.InterfaceC1405d
    public final void onTransitionStarted() {
        Set<InterfaceC1405d> set;
        RemoteUnfoldTransitionReceiver remoteUnfoldTransitionReceiver = this.f12631d;
        remoteUnfoldTransitionReceiver.getClass();
        set = remoteUnfoldTransitionReceiver.listeners;
        for (InterfaceC1405d interfaceC1405d : set) {
            interfaceC1405d.onTransitionStarted();
        }
    }
}
