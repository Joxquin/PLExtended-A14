package U1;

import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.ResolveInfo;
import android.graphics.Matrix;
import android.os.Process;
import android.os.UserHandle;
import android.view.Choreographer;
import android.view.InputMonitor;
import android.view.SurfaceControl;
import android.window.TransitionInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.systemui.shared.system.InputChannelCompat;
import com.google.android.apps.nexuslauncher.overlay.SwipeTransition;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class k implements SafeCloseable {

    /* renamed from: k  reason: collision with root package name */
    public static final MainThreadInitializedObject f1754k = new MainThreadInitializedObject(f.f1749a);

    /* renamed from: d  reason: collision with root package name */
    public final Context f1755d;

    /* renamed from: e  reason: collision with root package name */
    public final SimpleBroadcastReceiver f1756e = new SimpleBroadcastReceiver(new j(this));

    /* renamed from: f  reason: collision with root package name */
    public final ArrayList f1757f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    public Intent f1758g;

    /* renamed from: h  reason: collision with root package name */
    public InputMonitor f1759h;

    /* renamed from: i  reason: collision with root package name */
    public InputChannelCompat.InputEventReceiver f1760i;

    /* renamed from: j  reason: collision with root package name */
    public SwipeTransition f1761j;

    public k(Context context) {
        this.f1755d = context;
        Executors.UI_HELPER_EXECUTOR.execute(new e(this, Choreographer.getInstance(), 0));
    }

    public static final void a(k kVar) {
        LauncherActivityInfo launcherActivityInfo;
        Object systemService = kVar.f1755d.getSystemService(LauncherApps.class);
        kotlin.jvm.internal.h.b(systemService);
        LauncherApps launcherApps = (LauncherApps) systemService;
        UserHandle myUserHandle = Process.myUserHandle();
        Intent intent = new Intent("com.android.launcher3.WINDOW_OVERLAY");
        intent.setPackage("com.google.android.googlequicksearchbox");
        intent.addCategory("android.intent.category.DEFAULT");
        ResolveInfo resolveActivity = kVar.f1755d.getPackageManager().resolveActivity(intent, 0);
        if (resolveActivity == null || (launcherActivityInfo = launcherApps.resolveActivity(new Intent().setComponent(resolveActivity.activityInfo.getComponentName()), myUserHandle)) == null) {
            List<LauncherActivityInfo> activityList = launcherApps.getActivityList("com.google.android.googlequicksearchbox", myUserHandle);
            if (activityList != null) {
                launcherActivityInfo = activityList.isEmpty() ? null : activityList.get(0);
            }
        }
        Executors.MAIN_EXECUTOR.execute(new e(kVar, launcherActivityInfo, 1));
    }

    public final void b(SurfaceControl.Transaction transaction, TransitionInfo.Change negOneChange) {
        kotlin.jvm.internal.h.e(negOneChange, "negOneChange");
        InputMonitor inputMonitor = this.f1759h;
        if (inputMonitor != null) {
            transaction.show(inputMonitor.getSurface());
            transaction.reparent(inputMonitor.getSurface(), negOneChange.getLeash());
        }
    }

    public final SwipeTransition c(boolean z4, Matrix matrix) {
        if (this.f1759h != null && this.f1761j == null) {
            Context context = this.f1755d;
            InputMonitor inputMonitor = this.f1759h;
            kotlin.jvm.internal.h.b(inputMonitor);
            SwipeTransition swipeTransition = new SwipeTransition(context, inputMonitor, z4, matrix);
            swipeTransition.getEndCallbacks().add(new h(1, this));
            this.f1761j = swipeTransition;
            return swipeTransition;
        }
        return null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        Executors.UI_HELPER_EXECUTOR.execute(new h(0, this));
    }
}
