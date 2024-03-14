package k;

import androidx.appcompat.widget.ActionBarOverlayLayout;
/* renamed from: k.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1135f implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10897d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f10898e;

    public /* synthetic */ RunnableC1135f(ActionBarOverlayLayout actionBarOverlayLayout, int i4) {
        this.f10897d = i4;
        this.f10898e = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10897d) {
            case 0:
                this.f10898e.s();
                ActionBarOverlayLayout actionBarOverlayLayout = this.f10898e;
                actionBarOverlayLayout.f2564z = actionBarOverlayLayout.f2545g.animate().translationY(0.0f).setListener(this.f10898e.f2538A);
                return;
            default:
                this.f10898e.s();
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.f10898e;
                actionBarOverlayLayout2.f2564z = actionBarOverlayLayout2.f2545g.animate().translationY(-this.f10898e.f2545g.getHeight()).setListener(this.f10898e.f2538A);
                return;
        }
    }
}
