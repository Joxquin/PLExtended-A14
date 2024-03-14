package j;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: j.I  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnAttachStateChangeListenerC1078I implements View.OnAttachStateChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View$OnKeyListenerC1079J f10469d;

    public View$OnAttachStateChangeListenerC1078I(View$OnKeyListenerC1079J view$OnKeyListenerC1079J) {
        this.f10469d = view$OnKeyListenerC1079J;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f10469d.f10484s;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f10469d.f10484s = view.getViewTreeObserver();
            }
            View$OnKeyListenerC1079J view$OnKeyListenerC1079J = this.f10469d;
            view$OnKeyListenerC1079J.f10484s.removeGlobalOnLayoutListener(view$OnKeyListenerC1079J.f10478m);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
