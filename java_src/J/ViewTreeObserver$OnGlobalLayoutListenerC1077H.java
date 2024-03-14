package j;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: j.H  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserver$OnGlobalLayoutListenerC1077H implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View$OnKeyListenerC1079J f10468d;

    public ViewTreeObserver$OnGlobalLayoutListenerC1077H(View$OnKeyListenerC1079J view$OnKeyListenerC1079J) {
        this.f10468d = view$OnKeyListenerC1079J;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (this.f10468d.b()) {
            View$OnKeyListenerC1079J view$OnKeyListenerC1079J = this.f10468d;
            if (view$OnKeyListenerC1079J.f10477l.f10728B) {
                return;
            }
            View view = view$OnKeyListenerC1079J.f10482q;
            if (view == null || !view.isShown()) {
                this.f10468d.dismiss();
            } else {
                this.f10468d.f10477l.show();
            }
        }
    }
}
