package L1;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.android.launcher3.logging.StatsLogManager;
/* loaded from: classes.dex */
public final class C implements View.OnLongClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0067w f1057d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ X1.f f1058e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Rect f1059f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ V1.u f1060g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ X1.s f1061h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ RectF f1062i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ H f1063j;

    public C(H h4, C0067w c0067w, X1.f fVar, Rect rect, V1.u uVar, X1.s sVar, RectF rectF) {
        this.f1063j = h4;
        this.f1057d = c0067w;
        this.f1058e = fVar;
        this.f1059f = rect;
        this.f1060g = uVar;
        this.f1061h = sVar;
        this.f1062i = rectF;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        if (view.getParent() != null) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
        }
        if (this.f1057d.f1282p) {
            Bitmap i4 = this.f1058e.i(this.f1059f);
            H h4 = this.f1063j;
            H.a(h4, view, i4, this.f1057d, h4.f1083d, h4.f1084e);
            this.f1060g.f1860a.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_IMAGE_DRAG);
        } else {
            this.f1060g.f1860a.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_IMAGE_LONG_PRESS);
            X1.s sVar = this.f1061h;
            RectF rectF = this.f1062i;
            X1.u uVar = sVar.f2062a.f2064b;
            uVar.f2083u = true;
            uVar.endLiveTileMode(new X1.r(sVar, rectF, 1));
        }
        return true;
    }
}
