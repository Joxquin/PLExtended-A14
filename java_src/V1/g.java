package V1;

import L1.C0046a0;
import L1.C0060o;
import L1.C0067w;
import L1.f0;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.android.launcher3.util.Executors;
import com.android.quickstep.util.ImageActionUtils;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.recents.model.Task;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.FeedbackParcelables$OverviewFeedback$OverviewInteraction;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import com.google.android.apps.nexuslauncher.qsb.AssistUtilsGoogle;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1819d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f1820e;

    public /* synthetic */ g(int i4, Object obj) {
        this.f1819d = i4;
        this.f1820e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1819d) {
            case 0:
                h hVar = (h) this.f1820e;
                hVar.getClass();
                Executors.MAIN_EXECUTOR.getHandler().postDelayed(new g(3, hVar), 500L);
                return;
            case 1:
                j jVar = ((h) this.f1820e).f1821a;
                jVar.f1834m = true;
                ((RecentsView) jVar.f1829h.f2047a).setModalStateEnabled(jVar.f1822a.id, true);
                X1.u uVar = jVar.f1823b;
                com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = uVar.f2070h;
                if (bVar != null) {
                    if (bVar != null) {
                        bVar.a();
                        C0067w c0067w = uVar.f2070h.f6442A;
                        if (c0067w != null) {
                            c0067w.f1268b.removeAllViews();
                            c0067w.f1290x = null;
                        }
                    }
                    uVar.f2082t = false;
                    com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar2 = uVar.f2070h;
                    C0060o c0060o = bVar2.f6460r;
                    int i4 = c0060o.f1213g + 1;
                    c0060o.f1213g = i4;
                    J1.t c4 = bVar2.c(SuggestParcelables$InteractionType.SELECT_MODE, null);
                    String str = bVar2.f6459q.f1189a;
                    ArrayList arrayList = new ArrayList();
                    J1.m mVar = new J1.m();
                    arrayList.add(mVar);
                    mVar.f759b = SystemClock.elapsedRealtime();
                    J1.o oVar = new J1.o();
                    mVar.f758a = oVar;
                    oVar.f764a = FeedbackParcelables$OverviewFeedback$OverviewInteraction.OVERVIEW_SCREEN_STARTED;
                    oVar.f765b = 2;
                    J1.n nVar = new J1.n();
                    nVar.f762b = 0;
                    nVar.f763c = str;
                    int i5 = M1.c.f1362a;
                    nVar.f761a = arrayList;
                    C0046a0 c0046a0 = bVar2.f6450h;
                    String str2 = bVar2.f6451i;
                    K1.a aVar = bVar2.f6452j;
                    c0046a0.i(str2, aVar, nVar);
                    bVar2.a();
                    M1.b.f("Showing automatic suggestions");
                    c0046a0.k(false);
                    c0046a0.g(c4, aVar, new f0(bVar2, i4, 1));
                }
                jVar.f1835n.a(jVar.f1834m);
                return;
            case 2:
                j jVar2 = ((h) this.f1820e).f1821a;
                Bitmap bitmap = (Bitmap) jVar2.f1828g.get();
                Task.TaskKey taskKey = jVar2.f1822a;
                if (bitmap != null) {
                    ImageActionUtils.saveScreenshot(jVar2.f1825d.f1837a, bitmap, jVar2.f1835n.f2064b.getTaskSnapshotBounds(), jVar2.f1835n.f2064b.getTaskSnapshotInsets(), taskKey);
                    return;
                }
                Log.e("OverviewActionsController", "Got a null snapshot when trying  to save a screenshot of: " + taskKey);
                return;
            case 3:
                j jVar3 = ((h) this.f1820e).f1821a;
                AssistUtilsGoogle assistUtilsGoogle = jVar3.f1833l;
                if (assistUtilsGoogle.c() ? assistUtilsGoogle.b(4) : false) {
                    jVar3.f1832k.logger().log(NexusLauncherEvent.LAUNCHER_LAUNCH_ASSISTANT_SUCCESSFUL_OVERVIEW_ACTION);
                    return;
                }
                return;
            default:
                ((RecentsView) r10.f2077o.getOverviewPanel()).initiateSplitSelect(((X1.u) ((j) this.f1820e).f1830i.f2047a).mThumbnailView.getTaskView());
                return;
        }
    }
}
