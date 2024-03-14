package V1;

import L1.C0067w;
import android.animation.ObjectAnimator;
import android.app.prediction.AppTarget;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ShortcutInfo;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.util.RunnableList;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.google.android.apps.nexuslauncher.overview.NexusOverviewActionsView;
/* loaded from: classes.dex */
public final class h implements i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ j f1821a;

    public h(j jVar) {
        this.f1821a = jVar;
    }

    @Override // V1.i
    public final void a() {
        j jVar = this.f1821a;
        if (!jVar.f1831j) {
            jVar.f1835n.b();
            return;
        }
        jVar.f1832k.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_ACTIONS_SELECT);
        if (!com.google.android.apps.nexuslauncher.c.f7313b.get()) {
            jVar.f1823b.endLiveTileMode(new g(1, this));
            return;
        }
        TaskThumbnailView thumbnailView = jVar.f1823b.getThumbnailView();
        RunnableList launchTaskAnimated = thumbnailView == null ? null : thumbnailView.getTaskView().launchTaskAnimated();
        if (launchTaskAnimated != null) {
            launchTaskAnimated.add(new g(0, this));
        }
    }

    @Override // V1.i
    public final void b(String str, boolean z4) {
        C0067w c0067w;
        j jVar = this.f1821a;
        NexusOverviewActionsView nexusOverviewActionsView = (NexusOverviewActionsView) jVar.f1835n.f2064b.getActionsView();
        nexusOverviewActionsView.f7493f.a();
        ObjectAnimator.ofFloat(nexusOverviewActionsView.getShareTargetAlpha(), MultiPropertyFactory.MULTI_PROPERTY_VALUE, 1.0f).setDuration(120L).start();
        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = jVar.f1835n.f2064b.f2070h;
        if (bVar != null && (c0067w = bVar.f6442A) != null) {
            c0067w.a();
        }
        jVar.f1826e.c();
        t tVar = jVar.f1827f;
        tVar.getClass();
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND").addFlags(268435456).addFlags(1).setType("text/plain").putExtra("android.intent.extra.TEXT", str);
        tVar.f1859a.startActivity(Intent.createChooser(intent, null).addFlags(268435456));
        jVar.f1832k.logger().log(z4 ? StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_DROP_URL_TO_MORE : StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_TAP_MORE_TO_SHARE_URL);
    }

    @Override // V1.i
    public final void c(RectF rectF) {
        l lVar = this.f1821a.f1826e;
        f fVar = new f(this, rectF, 0);
        IntentFilter intentFilter = new IntentFilter();
        try {
            intentFilter = new IntentFilter("android.intent.action.SEND", "image/png");
        } catch (IntentFilter.MalformedMimeTypeException e4) {
            Log.e("OverviewActionsController", "unable to create share action", e4);
        }
        lVar.a(fVar, intentFilter);
    }

    @Override // V1.i
    public final void d(String str) {
        l lVar = this.f1821a.f1826e;
        f fVar = new f(this, str, 1);
        IntentFilter intentFilter = new IntentFilter();
        try {
            intentFilter = new IntentFilter("android.intent.action.SEND", "text/plain");
        } catch (IntentFilter.MalformedMimeTypeException e4) {
            Log.e("OverviewActionsController", "unable to create share action", e4);
        }
        lVar.a(fVar, intentFilter);
    }

    @Override // V1.i
    public final void e(RectF rectF, boolean z4) {
        C0067w c0067w;
        j jVar = this.f1821a;
        NexusOverviewActionsView nexusOverviewActionsView = (NexusOverviewActionsView) jVar.f1835n.f2064b.getActionsView();
        nexusOverviewActionsView.f7493f.a();
        ObjectAnimator.ofFloat(nexusOverviewActionsView.getShareTargetAlpha(), MultiPropertyFactory.MULTI_PROPERTY_VALUE, 1.0f).setDuration(120L).start();
        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = jVar.f1835n.f2064b.f2070h;
        if (bVar != null && (c0067w = bVar.f6442A) != null) {
            c0067w.a();
        }
        jVar.f1826e.c();
        Rect rect = new Rect();
        rectF.round(rect);
        jVar.f1824c.startShareActivity(rect);
        jVar.f1832k.logger().log(z4 ? StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_DROP_IMAGE_TO_MORE : StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_TAP_MORE_TO_SHARE_IMAGE);
    }

    @Override // V1.i
    public final void f() {
        j jVar = this.f1821a;
        NexusOverviewActionsView nexusOverviewActionsView = (NexusOverviewActionsView) jVar.f1835n.f2064b.getActionsView();
        nexusOverviewActionsView.f7493f.a();
        ObjectAnimator.ofFloat(nexusOverviewActionsView.getShareTargetAlpha(), MultiPropertyFactory.MULTI_PROPERTY_VALUE, 1.0f).setDuration(120L).start();
        jVar.f1826e.c();
    }

    @Override // V1.i
    public final void g(String str, ShortcutInfo shortcutInfo, AppTarget appTarget, boolean z4) {
        j jVar = this.f1821a;
        t tVar = jVar.f1827f;
        tVar.getClass();
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND").setComponent(new ComponentName(appTarget.getPackageName(), appTarget.getClassName())).addFlags(268435456).addFlags(1).setType("text/plain").putExtra("android.intent.extra.TEXT", str).putExtra("android.intent.extra.shortcut.ID", shortcutInfo.getId());
        tVar.f1859a.startActivity(intent);
        jVar.f1826e.b(appTarget);
        jVar.f1832k.logger().log(z4 ? StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_DROP_URL_TO_TARGET : StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_TAP_TARGET_TO_SHARE_URL);
    }

    @Override // V1.i
    public final void h(RectF rectF, ShortcutInfo shortcutInfo, AppTarget appTarget, boolean z4) {
        j jVar = this.f1821a;
        jVar.f1824c.shareImage(rectF, shortcutInfo, appTarget);
        jVar.f1826e.b(appTarget);
        jVar.f1832k.logger().log(z4 ? StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_DROP_IMAGE_TO_TARGET : StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_TAP_TARGET_TO_SHARE_IMAGE);
    }

    @Override // V1.i
    public final void i() {
        j jVar = this.f1821a;
        jVar.f1832k.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_SELECT_MODE_CLOSE);
        jVar.f1834m = false;
        jVar.f1835n.a(false);
        X1.u uVar = jVar.f1823b;
        com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = uVar.f2070h;
        if (bVar != null) {
            bVar.a();
            C0067w c0067w = uVar.f2070h.f6442A;
            if (c0067w != null) {
                c0067w.f1268b.removeAllViews();
                c0067w.f1290x = null;
            }
        }
        uVar.f2082t = false;
        ((RecentsView) jVar.f1829h.f2047a).setModalStateEnabled(jVar.f1834m ? jVar.f1822a.id : -1, true);
        uVar.n();
    }

    @Override // com.android.quickstep.TaskOverlayFactory.OverlayUICallbacks
    public final void onScreenshot() {
        j jVar = this.f1821a;
        if (jVar.f1831j) {
            jVar.f1832k.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_ACTIONS_SCREENSHOT);
            jVar.f1823b.endLiveTileMode(new g(2, this));
            return;
        }
        Log.w("OverviewActionsController", "Screenshot blocked by policy.");
        jVar.f1835n.b();
    }

    @Override // com.android.quickstep.TaskOverlayFactory.OverlayUICallbacks
    public final void onSplit() {
        j jVar = this.f1821a;
        jVar.f1823b.endLiveTileMode(new g(4, jVar));
    }
}
