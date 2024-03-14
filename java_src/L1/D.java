package L1;

import android.view.View;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.views.TaskThumbnailView;
/* loaded from: classes.dex */
public final class D implements View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0067w f1064d;

    public D(C0067w c0067w) {
        this.f1064d = c0067w;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        TaskThumbnailView taskThumbnailView;
        C0067w c0067w = this.f1064d;
        if (c0067w.f1280n) {
            c0067w.a();
            return;
        }
        taskThumbnailView = ((TaskOverlayFactory.TaskOverlay) c0067w.f1277k.f2062a.f2064b).mThumbnailView;
        ((View) taskThumbnailView.getParent()).performClick();
    }
}
