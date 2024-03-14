package J0;

import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.model.data.ItemInfo;
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ DragView f624d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ItemInfo f625e;

    public /* synthetic */ g(DragView dragView, ItemInfo itemInfo) {
        this.f624d = dragView;
        this.f625e = itemInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DragView.a(this.f624d, this.f625e);
    }
}
