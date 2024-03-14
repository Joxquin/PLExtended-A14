package J0;

import android.view.View;
import com.android.launcher3.dragndrop.DragLayer;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f619d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ View f620e;

    public /* synthetic */ d(View view, int i4) {
        this.f619d = i4;
        this.f620e = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f619d) {
            case 0:
                DragLayer.b((DragLayer) this.f620e);
                return;
            case 1:
                ((DragLayer) this.f620e).clearAnimatedView();
                return;
            default:
                View view = this.f620e;
                int i4 = DragLayer.f4581d;
                view.setVisibility(0);
                return;
        }
    }
}
