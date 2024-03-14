package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
/* loaded from: classes.dex */
public class ReportFragment extends Fragment {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f3590d = 0;

    public static final void a(Activity activity) {
        kotlin.jvm.internal.h.e(activity, "activity");
        D.Companion.getClass();
        activity.registerActivityLifecycleCallbacks(new D());
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new ReportFragment(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
    }
}
