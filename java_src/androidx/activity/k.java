package androidx.activity;

import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
/* loaded from: classes.dex */
public final class k implements j, ViewTreeObserver.OnDrawListener, Runnable {

    /* renamed from: e  reason: collision with root package name */
    public Runnable f2435e;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ l f2437g;

    /* renamed from: d  reason: collision with root package name */
    public final long f2434d = SystemClock.uptimeMillis() + 10000;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2436f = false;

    public k(l lVar) {
        this.f2437g = lVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f2435e = runnable;
        View decorView = this.f2437g.getWindow().getDecorView();
        if (!this.f2436f) {
            decorView.postOnAnimation(new b(1, this));
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            decorView.invalidate();
        } else {
            decorView.postInvalidate();
        }
    }

    @Override // androidx.activity.j
    public final void h(View view) {
        if (this.f2436f) {
            return;
        }
        this.f2436f = true;
        view.getViewTreeObserver().addOnDrawListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        boolean z4;
        Runnable runnable = this.f2435e;
        if (runnable == null) {
            if (SystemClock.uptimeMillis() > this.f2434d) {
                this.f2436f = false;
                this.f2437g.getWindow().getDecorView().post(this);
                return;
            }
            return;
        }
        runnable.run();
        this.f2435e = null;
        o oVar = this.f2437g.mFullyDrawnReporter;
        synchronized (oVar.f2443b) {
            z4 = oVar.f2444c;
        }
        if (z4) {
            this.f2436f = false;
            this.f2437g.getWindow().getDecorView().post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2437g.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }
}
