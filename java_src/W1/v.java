package W1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.FrameLayout;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.qsb.AssistUtilsGoogle;
import com.google.android.apps.nexuslauncher.qsb.QsbTransitionManager;
import com.google.android.apps.nexuslauncher.qsb.SearchDelegateView;
/* loaded from: classes.dex */
public final class v extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ NexusLauncherActivity f1923a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SearchDelegateView f1924b;

    public v(SearchDelegateView searchDelegateView, NexusLauncherActivity nexusLauncherActivity) {
        this.f1924b = searchDelegateView;
        this.f1923a = nexusLauncherActivity;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Context context2;
        if (getResultCode() == 0) {
            context2 = ((FrameLayout) this.f1924b).mContext;
            new AssistUtilsGoogle(context2).d("android.search.action.GLOBAL_SEARCH");
            return;
        }
        QsbTransitionManager qsbTransitionManager = this.f1923a.f6473d.f6471b;
        if (qsbTransitionManager.f7528d.hasWindowFocus()) {
            qsbTransitionManager.f7531g = true;
        } else {
            qsbTransitionManager.a();
        }
    }
}
