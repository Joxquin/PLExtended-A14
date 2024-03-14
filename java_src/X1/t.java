package X1;

import android.animation.ObjectAnimator;
import android.view.View;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.Snackbar;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.overview.NexusOverviewActionsView;
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public V1.i f2063a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ u f2064b;

    public t(u uVar) {
        this.f2064b = uVar;
    }

    public final void a(boolean z4) {
        NexusOverviewActionsView nexusOverviewActionsView = (NexusOverviewActionsView) this.f2064b.getActionsView();
        nexusOverviewActionsView.f7493f.setVisibility(8);
        if (!z4) {
            if (nexusOverviewActionsView.f7491d.getVisibility() == 0) {
                return;
            }
            ObjectAnimator.ofFloat(nexusOverviewActionsView.getShareTargetAlpha(), MultiPropertyFactory.MULTI_PROPERTY_VALUE, 1.0f).setDuration(120L).start();
            nexusOverviewActionsView.f7492e.animate().scaleX(0.8f).scaleY(0.8f).setDuration(283L).setInterpolator(NexusOverviewActionsView.f7490h);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(nexusOverviewActionsView.f7492e, View.ALPHA, 0.0f);
            ofFloat.setDuration(120L);
            ofFloat.start();
            ofFloat.addListener(new V1.d(nexusOverviewActionsView));
        } else if (nexusOverviewActionsView.f7492e.getVisibility() == 0) {
        } else {
            nexusOverviewActionsView.f7492e.setVisibility(0);
            nexusOverviewActionsView.f7492e.setAlpha(0.0f);
            nexusOverviewActionsView.f7492e.setScaleX(0.8f);
            nexusOverviewActionsView.f7492e.setScaleY(0.8f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(nexusOverviewActionsView.f7492e, View.ALPHA, 1.0f);
            ofFloat2.setDuration(120L);
            ofFloat2.start();
            nexusOverviewActionsView.f7492e.animate().scaleX(1.0f).scaleY(1.0f).setDuration(283L).setInterpolator(NexusOverviewActionsView.f7490h);
            nexusOverviewActionsView.e();
        }
    }

    public final void b() {
        u uVar = this.f2064b;
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(uVar.f2066d);
        Snackbar.show(uVar.f2077o, activityContext.getStringCache() != null ? activityContext.getStringCache().disabledByAdminMessage : uVar.f2066d.getString(R.string.blocked_by_policy), -1, (Runnable) null, (Runnable) null);
    }
}
