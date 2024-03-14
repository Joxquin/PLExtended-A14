package U1;

import android.content.Context;
import android.view.InputMonitor;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.quickstep.util.ActivityInitListener;
import com.android.systemui.shared.system.InputChannelCompat;
/* loaded from: classes.dex */
public final class h implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1750d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f1751e;

    public /* synthetic */ h(int i4, Object obj) {
        this.f1750d = i4;
        this.f1751e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1750d) {
            case 0:
                k kVar = (k) this.f1751e;
                SimpleBroadcastReceiver simpleBroadcastReceiver = kVar.f1756e;
                Context context = kVar.f1755d;
                simpleBroadcastReceiver.getClass();
                try {
                    context.unregisterReceiver(simpleBroadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                InputChannelCompat.InputEventReceiver inputEventReceiver = ((k) this.f1751e).f1760i;
                if (inputEventReceiver != null) {
                    inputEventReceiver.dispose();
                }
                InputMonitor inputMonitor = ((k) this.f1751e).f1759h;
                if (inputMonitor != null) {
                    inputMonitor.dispose();
                }
                k kVar2 = (k) this.f1751e;
                kVar2.f1759h = null;
                kVar2.f1760i = null;
                return;
            case 1:
                ((k) this.f1751e).f1761j = null;
                return;
            default:
                ((ActivityInitListener) this.f1751e).unregister();
                return;
        }
    }
}
