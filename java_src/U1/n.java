package U1;

import com.google.android.apps.nexuslauncher.overlay.SwipeTransition;
/* loaded from: classes.dex */
public final class n implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ SwipeTransition f1768d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f1769e;

    public n(SwipeTransition swipeTransition, boolean z4) {
        this.f1768d = swipeTransition;
        this.f1769e = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SwipeTransition.access$onAnimationFinished(this.f1768d, this.f1769e);
    }
}
