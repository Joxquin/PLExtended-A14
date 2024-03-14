package J0;

import android.graphics.Path;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.model.data.ItemInfo;
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f626d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ DragView f627e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Path f628f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ ItemInfo f629g;

    public /* synthetic */ h(DragView dragView, Path path, ItemInfo itemInfo, int i4) {
        this.f626d = i4;
        this.f627e = dragView;
        this.f628f = path;
        this.f629g = itemInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f626d) {
            case 0:
                r0.mOnDragStartCallback.add(new h(this.f627e, this.f628f, this.f629g, 1));
                return;
            default:
                DragView.c(this.f627e, this.f628f, this.f629g);
                return;
        }
    }
}
