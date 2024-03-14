package U1;

import android.app.Activity;
import android.content.Intent;
import android.os.SystemClock;
import android.view.MotionEvent;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.overlay.SwipeTransition;
import q1.InterfaceC1362b;
import q1.InterfaceC1363c;
import q1.InterfaceC1364d;
/* loaded from: classes.dex */
public final class c implements InterfaceC1364d, InterfaceC1362b, g {

    /* renamed from: d  reason: collision with root package name */
    public final NexusLauncherActivity f1738d;

    /* renamed from: e  reason: collision with root package name */
    public final k f1739e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f1740f;

    /* renamed from: g  reason: collision with root package name */
    public final float f1741g;

    /* renamed from: h  reason: collision with root package name */
    public InterfaceC1363c f1742h;

    /* renamed from: i  reason: collision with root package name */
    public SwipeTransition f1743i;

    /* renamed from: j  reason: collision with root package name */
    public a f1744j;

    public c(NexusLauncherActivity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
        this.f1738d = activity;
        MainThreadInitializedObject mainThreadInitializedObject = k.f1754k;
        k kVar = (k) k.f1754k.get(activity);
        this.f1739e = kVar;
        boolean isRtl = Utilities.isRtl(activity.getResources());
        this.f1740f = isRtl;
        this.f1741g = isRtl ? -1.0f : 1.0f;
        kVar.getClass();
        kVar.f1757f.add(this);
        a();
    }

    @Override // U1.g
    public final void a() {
        NexusLauncherActivity nexusLauncherActivity = this.f1738d;
        MainThreadInitializedObject mainThreadInitializedObject = k.f1754k;
        if (((k) k.f1754k.get(nexusLauncherActivity)).f1758g == null) {
            this = null;
        }
        nexusLauncherActivity.setLauncherOverlay(this);
    }

    public final void b(int i4) {
        a aVar;
        if (this.f1743i == null || (aVar = this.f1744j) == null) {
            return;
        }
        MotionEvent ev = MotionEvent.obtain(aVar.f1735b, SystemClock.uptimeMillis(), i4, aVar.f1736c * aVar.f1734a * this.f1741g, 0.0f, 0);
        SwipeTransition swipeTransition = this.f1743i;
        if (swipeTransition != null) {
            kotlin.jvm.internal.h.d(ev, "ev");
            swipeTransition.onMotionEvent(ev);
        }
        ev.recycle();
    }

    @Override // q1.InterfaceC1362b
    public final void c(float f4) {
        a aVar = this.f1744j;
        if (aVar != null) {
            aVar.f1736c = f4;
        }
        b(2);
    }

    @Override // q1.InterfaceC1362b
    public final void d(Workspace workspace) {
        this.f1742h = workspace;
    }

    @Override // q1.InterfaceC1362b
    public final void f() {
        Intent intent = this.f1739e.f1758g;
        if (intent == null) {
            return;
        }
        if (this.f1743i == null) {
            SwipeTransition swipeTransition = null;
            SwipeTransition c4 = this.f1739e.c(true, this.f1740f ? null : SwipeTransition.INVERSE_MATRIX);
            if (c4 != null) {
                c4.setDragStarted();
                c4.setCallbacks(this.f1738d.getWorkspace());
                c4.getEndCallbacks().add(new b(this));
                c4.startActivity(intent);
                swipeTransition = c4;
            }
            this.f1743i = swipeTransition;
        }
        this.f1744j = new a(this.f1738d.getWorkspace().getWidth());
        b(0);
    }

    @Override // q1.InterfaceC1362b
    public final void l() {
        b(1);
        this.f1744j = null;
    }

    @Override // q1.InterfaceC1364d, android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
        k kVar = this.f1739e;
        kVar.getClass();
        kVar.f1757f.remove(this);
    }
}
