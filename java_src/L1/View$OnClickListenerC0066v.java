package L1;

import android.graphics.RectF;
import android.view.View;
import com.android.launcher3.logging.StatsLogManager;
/* renamed from: L1.v  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnClickListenerC0066v implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ RectF f1261d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0067w f1262e;

    public View$OnClickListenerC0066v(C0067w c0067w, RectF rectF) {
        this.f1262e = c0067w;
        this.f1261d = rectF;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        RectF rectF = new RectF(this.f1261d);
        this.f1262e.f1269c.e(rectF);
        X1.s sVar = this.f1262e.f1277k;
        X1.u uVar = sVar.f2062a.f2064b;
        uVar.f2083u = true;
        uVar.endLiveTileMode(new X1.r(sVar, rectF, 1));
        this.f1262e.f1276j.f1860a.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_IMAGE_INDICATOR_TAP);
    }
}
