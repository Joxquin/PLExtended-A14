package A0;

import android.view.View;
/* loaded from: classes.dex */
public final class v implements View.OnAttachStateChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ w f60d;

    public v(w wVar) {
        this.f60d = wVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        w wVar = this.f60d;
        if (wVar.f68k) {
            wVar.f61d.getViewTreeObserver().removeOnDrawListener(wVar);
            wVar.f61d.getViewTreeObserver().addOnDrawListener(wVar);
        }
        this.f60d.f61d.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
