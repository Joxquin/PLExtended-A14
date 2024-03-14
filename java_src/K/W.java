package k;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
/* loaded from: classes.dex */
public final class W implements PopupWindow.OnDismissListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f10837d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ X f10838e;

    public W(X x4, S s4) {
        this.f10838e = x4;
        this.f10837d = s4;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f10838e.f10844H.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f10837d);
        }
    }
}
