package com.android.quickstep.views;

import android.content.LocusId;
import android.view.View;
import com.android.quickstep.views.RecentsView;
/* loaded from: classes.dex */
public final /* synthetic */ class J implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5929d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5930e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f5931f;

    public /* synthetic */ J(int i4, Object obj, Object obj2) {
        this.f5929d = i4;
        this.f5930e = obj;
        this.f5931f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5929d) {
            case 0:
                ((RecentsView.AnonymousClass21) this.f5930e).lambda$accept$0((Boolean) this.f5931f);
                return;
            case 1:
                ((RecentsView) this.f5930e).lambda$updateLocusId$45((LocusId) this.f5931f);
                return;
            case 2:
                ((RecentsView) this.f5930e).lambda$createTaskDismissAnimation$25((View) this.f5931f);
                return;
            case 3:
                ((RecentsView) this.f5930e).lambda$createSplitSelectInitAnimation$32((TaskThumbnailView) this.f5931f);
                return;
            default:
                ((RecentsView) this.f5930e).lambda$finishRecentsAnimation$41((Runnable) this.f5931f);
                return;
        }
    }
}
