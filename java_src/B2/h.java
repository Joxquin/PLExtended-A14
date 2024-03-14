package b2;

import android.graphics.Rect;
import com.android.launcher3.util.EventLogArray;
import com.android.quickstep.SystemUiProxy;
import com.android.systemui.shared.system.smartspace.SmartspaceState;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.unlock.LauncherUnlockAnimationController$MyController;
import com.google.android.systemui.smartspace.BcSmartspaceView;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final NexusLauncherActivity f4229a;

    /* renamed from: b  reason: collision with root package name */
    public final BcSmartspaceView f4230b;

    /* renamed from: c  reason: collision with root package name */
    public final SmartspaceState f4231c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f4232d;

    /* renamed from: e  reason: collision with root package name */
    public final Rect f4233e;

    /* renamed from: f  reason: collision with root package name */
    public final EventLogArray f4234f;

    /* renamed from: g  reason: collision with root package name */
    public long f4235g;

    /* renamed from: h  reason: collision with root package name */
    public long f4236h;

    public h(NexusLauncherActivity launcher, BcSmartspaceView bcSmartspaceView) {
        kotlin.jvm.internal.h.e(launcher, "launcher");
        this.f4229a = launcher;
        this.f4230b = bcSmartspaceView;
        LauncherUnlockAnimationController$MyController launcherUnlockAnimationController$MyController = new LauncherUnlockAnimationController$MyController(new WeakReference(this));
        this.f4231c = new SmartspaceState();
        this.f4233e = new Rect();
        this.f4234f = new EventLogArray("LauncherUnlock");
        this.f4236h = 500L;
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(launcher)).setLauncherUnlockAnimationController(launcherUnlockAnimationController$MyController);
    }

    public final void a() {
        SmartspaceState smartspaceState = this.f4231c;
        Rect boundsOnScreen = smartspaceState.getBoundsOnScreen();
        boundsOnScreen.setEmpty();
        BcSmartspaceView bcSmartspaceView = this.f4230b;
        bcSmartspaceView.getBoundsOnScreen(boundsOnScreen);
        smartspaceState.setSelectedPage(bcSmartspaceView.f8331h.f10679i);
        NexusLauncherActivity nexusLauncherActivity = this.f4229a;
        smartspaceState.setVisibleOnScreen((nexusLauncherActivity.getWorkspace().isOverlayShown() || nexusLauncherActivity.getWorkspace().getDestinationPage() != 0 || smartspaceState.getBoundsOnScreen().isEmpty()) ? false : true);
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(nexusLauncherActivity)).notifySysuiSmartspaceStateUpdated(smartspaceState);
    }
}
