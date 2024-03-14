package X1;

import android.graphics.RectF;
import android.view.View;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.views.TaskThumbnailView;
/* loaded from: classes.dex */
public final /* synthetic */ class r implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2059d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ s f2060e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f2061f;

    public /* synthetic */ r(s sVar, Object obj, int i4) {
        this.f2059d = i4;
        this.f2060e = sVar;
        this.f2061f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TaskThumbnailView taskThumbnailView;
        TaskThumbnailView taskThumbnailView2;
        switch (this.f2059d) {
            case 0:
                s sVar = this.f2060e;
                String str = (String) this.f2061f;
                t tVar = sVar.f2062a;
                u uVar = tVar.f2064b;
                uVar.f2083u = false;
                if (uVar.f2088z > 0.0f) {
                    return;
                }
                taskThumbnailView2 = ((TaskOverlayFactory.TaskOverlay) uVar).mThumbnailView;
                ((View) taskThumbnailView2.getParent()).setTranslationZ(0.1f);
                u uVar2 = tVar.f2064b;
                uVar2.o(true);
                tVar.f2063a.d(str);
                uVar2.f2070h.f(null);
                return;
            default:
                s sVar2 = this.f2060e;
                RectF rectF = (RectF) this.f2061f;
                t tVar2 = sVar2.f2062a;
                u uVar3 = tVar2.f2064b;
                uVar3.f2083u = false;
                if (uVar3.f2088z > 0.0f) {
                    return;
                }
                taskThumbnailView = ((TaskOverlayFactory.TaskOverlay) uVar3).mThumbnailView;
                ((View) taskThumbnailView.getParent()).setTranslationZ(0.1f);
                u uVar4 = tVar2.f2064b;
                uVar4.o(true);
                tVar2.f2063a.c(rectF);
                uVar4.f2070h.f(rectF);
                return;
        }
    }
}
