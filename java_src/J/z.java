package j;

import android.widget.PopupWindow;
/* loaded from: classes.dex */
public final class z implements PopupWindow.OnDismissListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1070A f10633d;

    public z(C1070A c1070a) {
        this.f10633d = c1070a;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f10633d.c();
    }
}
