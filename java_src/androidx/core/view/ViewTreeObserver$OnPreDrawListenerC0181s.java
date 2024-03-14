package androidx.core.view;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: androidx.core.view.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserver$OnPreDrawListenerC0181s implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final View f3127d;

    /* renamed from: e  reason: collision with root package name */
    public ViewTreeObserver f3128e;

    /* renamed from: f  reason: collision with root package name */
    public final Runnable f3129f;

    public ViewTreeObserver$OnPreDrawListenerC0181s(View view, Runnable runnable) {
        this.f3127d = view;
        this.f3128e = view.getViewTreeObserver();
        this.f3129f = runnable;
    }

    public static void a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable == null) {
            throw new NullPointerException("runnable == null");
        }
        ViewTreeObserver$OnPreDrawListenerC0181s viewTreeObserver$OnPreDrawListenerC0181s = new ViewTreeObserver$OnPreDrawListenerC0181s(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(viewTreeObserver$OnPreDrawListenerC0181s);
        view.addOnAttachStateChangeListener(viewTreeObserver$OnPreDrawListenerC0181s);
    }

    public final void b() {
        if (this.f3128e.isAlive()) {
            this.f3128e.removeOnPreDrawListener(this);
        } else {
            this.f3127d.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f3127d.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        b();
        this.f3129f.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f3128e = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        b();
    }
}
