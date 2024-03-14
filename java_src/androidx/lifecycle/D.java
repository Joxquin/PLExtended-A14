package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes.dex */
public final class D implements Application.ActivityLifecycleCallbacks {
    public static final C Companion = new C();

    public static final void registerIn(Activity activity) {
        Companion.getClass();
        kotlin.jvm.internal.h.e(activity, "activity");
        activity.registerActivityLifecycleCallbacks(new D());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        kotlin.jvm.internal.h.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostCreated(Activity activity, Bundle bundle) {
        kotlin.jvm.internal.h.e(activity, "activity");
        int i4 = ReportFragment.f3590d;
        B.a(activity, Lifecycle$Event.ON_CREATE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
        int i4 = ReportFragment.f3590d;
        B.a(activity, Lifecycle$Event.ON_RESUME);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostStarted(Activity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
        int i4 = ReportFragment.f3590d;
        B.a(activity, Lifecycle$Event.ON_START);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreDestroyed(Activity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
        int i4 = ReportFragment.f3590d;
        B.a(activity, Lifecycle$Event.ON_DESTROY);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPrePaused(Activity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
        int i4 = ReportFragment.f3590d;
        B.a(activity, Lifecycle$Event.ON_PAUSE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreStopped(Activity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
        int i4 = ReportFragment.f3590d;
        B.a(activity, Lifecycle$Event.ON_STOP);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        kotlin.jvm.internal.h.e(activity, "activity");
        kotlin.jvm.internal.h.e(bundle, "bundle");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
    }
}
