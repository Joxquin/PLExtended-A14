package U1;

import com.google.android.apps.nexuslauncher.overlay.SwipeTransition;
/* loaded from: classes.dex */
public final class m implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1766d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ SwipeTransition f1767e;

    public /* synthetic */ m(SwipeTransition swipeTransition, int i4) {
        this.f1766d = i4;
        this.f1767e = swipeTransition;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1766d) {
            case 0:
                SwipeTransition.access$endHandler(this.f1767e);
                return;
            default:
                SwipeTransition.access$onTaskMovementChanged(this.f1767e);
                return;
        }
    }
}
