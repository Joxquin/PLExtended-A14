package F1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.view.Choreographer;
import android.view.SurfaceControl;
import android.view.SyncRtSurfaceTransactionApplier;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.views.BaseDragLayer;
/* loaded from: classes.dex */
public final class c extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ f f365d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f366e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ d f367f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ View f368g;

    public c(f fVar, BaseDragLayer baseDragLayer, d dVar, View view) {
        this.f365d = fVar;
        this.f366e = baseDragLayer;
        this.f367f = dVar;
        this.f368g = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        final SurfaceControl surfaceControl;
        super.onAnimationEnd(animator);
        f fVar = this.f365d;
        if (fVar != null && (surfaceControl = fVar.f381f) != null && surfaceControl.isValid()) {
            A1.a aVar = fVar.f383h;
            SurfaceControl.Transaction transaction = (SurfaceControl.Transaction) aVar.f78a.acquire();
            if (transaction == null) {
                transaction = new SurfaceControl.Transaction();
            }
            if (fVar.f382g.isAttachedToWindow()) {
                transaction.setFrameTimelineVsync(Choreographer.getSfInstance().getVsyncId());
                fVar.f379d.scheduleApply(new SyncRtSurfaceTransactionApplier.SurfaceParams[]{new SyncRtSurfaceTransactionApplier.SurfaceParams.Builder(surfaceControl).withWindowCrop((Rect) null).withMergeTransaction(transaction).build()});
            } else {
                transaction.setWindowCrop(surfaceControl, null);
                transaction.apply();
            }
            if (!aVar.f78a.release(transaction)) {
                transaction.close();
            }
            Choreographer.getSfInstance().postCallback(4, new Runnable() { // from class: F1.e
                @Override // java.lang.Runnable
                public final void run() {
                    surfaceControl.release();
                }
            }, null);
        }
        this.f366e.removeView(this.f367f);
        this.f366e.removeView(this.f368g);
    }
}
