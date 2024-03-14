package U1;

import com.google.android.apps.nexuslauncher.overlay.SwipeTransition;
/* loaded from: classes.dex */
public final class p implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ SwipeTransition f1773d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ l f1774e;

    public p(SwipeTransition swipeTransition, l lVar) {
        this.f1773d = swipeTransition;
        this.f1774e = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1773d.onTargetReceived(this.f1774e);
    }
}
