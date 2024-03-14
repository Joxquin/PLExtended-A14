package L1;

import android.view.View;
import com.android.launcher3.logging.StatsLogManager;
/* loaded from: classes.dex */
public final class w0 implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ V1.u f1291d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ X1.s f1292e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f1293f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ A0 f1294g;

    public w0(A0 a02, V1.u uVar, X1.s sVar, String str) {
        this.f1294g = a02;
        this.f1291d = uVar;
        this.f1292e = sVar;
        this.f1293f = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f1291d.f1860a.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_URL_INDICATOR_TAP);
        X1.s sVar = this.f1292e;
        String str = this.f1293f;
        X1.u uVar = sVar.f2062a.f2064b;
        uVar.f2083u = true;
        uVar.endLiveTileMode(new X1.r(sVar, str, 0));
        this.f1294g.b(true);
        A0 a02 = this.f1294g;
        a02.f1039k = a02.f1034f.startActionMode(new z0(this.f1294g), 1);
    }
}
