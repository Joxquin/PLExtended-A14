package U1;

import android.content.pm.LauncherActivityInfo;
import android.hardware.input.InputManager;
import android.os.Looper;
import android.view.Choreographer;
import android.view.InputMonitor;
import android.view.SurfaceControl;
import com.android.launcher3.model.data.AppInfo;
import com.android.systemui.shared.system.InputChannelCompat;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1746d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ k f1747e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f1748f;

    public /* synthetic */ e(k kVar, Object obj, int i4) {
        this.f1746d = i4;
        this.f1747e = kVar;
        this.f1748f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1746d) {
            case 0:
                k kVar = this.f1747e;
                InputMonitor monitorGestureInput = InputManager.getInstance().monitorGestureInput("minus-one", 0);
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                transaction.reparent(monitorGestureInput.getSurface(), null);
                transaction.apply(true);
                kVar.f1759h = monitorGestureInput;
                k kVar2 = this.f1747e;
                InputMonitor inputMonitor = kVar2.f1759h;
                kVar2.f1760i = new InputChannelCompat.InputEventReceiver(inputMonitor != null ? inputMonitor.getInputChannel() : null, Looper.getMainLooper(), (Choreographer) this.f1748f, new d(this.f1747e));
                k kVar3 = this.f1747e;
                kVar3.f1756e.registerPkgActions(kVar3.f1755d, "com.google.android.googlequicksearchbox", "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED");
                k.a(this.f1747e);
                return;
            default:
                k kVar4 = this.f1747e;
                LauncherActivityInfo launcherActivityInfo = (LauncherActivityInfo) this.f1748f;
                if (launcherActivityInfo != null) {
                    kVar4.getClass();
                    AppInfo[] appInfoArr = AppInfo.EMPTY_ARRAY;
                    r1 = AppInfo.makeLaunchIntent(launcherActivityInfo.getComponentName());
                }
                kVar4.f1758g = r1;
                Iterator it = kVar4.f1757f.iterator();
                while (it.hasNext()) {
                    ((g) it.next()).a();
                }
                return;
        }
    }
}
