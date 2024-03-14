package j;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: j.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnAttachStateChangeListenerC1087e implements View.OnAttachStateChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View$OnKeyListenerC1091i f10514d;

    public View$OnAttachStateChangeListenerC1087e(View$OnKeyListenerC1091i view$OnKeyListenerC1091i) {
        this.f10514d = view$OnKeyListenerC1091i;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ViewTreeObserver viewTreeObserver = this.f10514d.f10524B;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f10514d.f10524B = view.getViewTreeObserver();
            }
            View$OnKeyListenerC1091i view$OnKeyListenerC1091i = this.f10514d;
            view$OnKeyListenerC1091i.f10524B.removeGlobalOnLayoutListener(view$OnKeyListenerC1091i.f10535m);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
