package k;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
/* renamed from: k.t0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1163t0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10981d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AbstractView$OnTouchListenerC1165u0 f10982e;

    public /* synthetic */ RunnableC1163t0(AbstractView$OnTouchListenerC1165u0 abstractView$OnTouchListenerC1165u0, int i4) {
        this.f10981d = i4;
        this.f10982e = abstractView$OnTouchListenerC1165u0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10981d) {
            case 0:
                ViewParent parent = this.f10982e.f10989g.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                    return;
                }
                return;
            default:
                AbstractView$OnTouchListenerC1165u0 abstractView$OnTouchListenerC1165u0 = this.f10982e;
                abstractView$OnTouchListenerC1165u0.a();
                View view = abstractView$OnTouchListenerC1165u0.f10989g;
                if (view.isEnabled() && !view.isLongClickable() && abstractView$OnTouchListenerC1165u0.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(obtain);
                    obtain.recycle();
                    abstractView$OnTouchListenerC1165u0.f10992j = true;
                    return;
                }
                return;
        }
    }
}
