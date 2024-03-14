package W1;

import android.view.View;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.qsb.SearchDelegateView;
/* loaded from: classes.dex */
public final /* synthetic */ class s implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1920d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ SearchDelegateView f1921e;

    public /* synthetic */ s(SearchDelegateView searchDelegateView, int i4) {
        this.f1920d = i4;
        this.f1921e = searchDelegateView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f1920d) {
            case 0:
                SearchDelegateView searchDelegateView = this.f1921e;
                int i4 = SearchDelegateView.f7532q;
                searchDelegateView.i(view);
                return;
            default:
                SearchDelegateView searchDelegateView2 = this.f1921e;
                int i5 = SearchDelegateView.f7532q;
                NexusLauncherActivity g4 = searchDelegateView2.g();
                n.a(g4, NexusLauncherEvent.LAUNCHER_GOOGLE_SEARCHBOX_LENS_TAP);
                m.a(g4);
                return;
        }
    }
}
