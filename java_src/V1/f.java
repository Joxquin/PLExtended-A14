package V1;

import android.app.prediction.AppPredictor;
import android.graphics.RectF;
import com.google.android.apps.nexuslauncher.overview.NexusOverviewActionsView;
import java.util.List;
/* loaded from: classes.dex */
public final /* synthetic */ class f implements AppPredictor.Callback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1816a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ h f1817b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f1818c;

    public /* synthetic */ f(h hVar, Object obj, int i4) {
        this.f1816a = i4;
        this.f1817b = hVar;
        this.f1818c = obj;
    }

    public final void onTargetsAvailable(List list) {
        switch (this.f1816a) {
            case 0:
                h hVar = this.f1817b;
                RectF rectF = (RectF) this.f1818c;
                X1.t tVar = hVar.f1821a.f1835n;
                tVar.getClass();
                if (com.google.android.apps.nexuslauncher.c.f7332u.get()) {
                    return;
                }
                NexusOverviewActionsView nexusOverviewActionsView = (NexusOverviewActionsView) tVar.f2064b.getActionsView();
                nexusOverviewActionsView.f7493f.b(list, new e(nexusOverviewActionsView), true, rectF, null);
                nexusOverviewActionsView.e();
                return;
            default:
                h hVar2 = this.f1817b;
                String str = (String) this.f1818c;
                NexusOverviewActionsView nexusOverviewActionsView2 = (NexusOverviewActionsView) hVar2.f1821a.f1835n.f2064b.getActionsView();
                nexusOverviewActionsView2.f7493f.b(list, new e(nexusOverviewActionsView2), false, null, str);
                nexusOverviewActionsView2.e();
                return;
        }
    }
}
