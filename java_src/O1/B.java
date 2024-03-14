package O1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.apps.nexuslauncher.customize.WallpaperCarouselView;
/* loaded from: classes.dex */
public final class B extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ E f1425d;

    public B(E e4) {
        this.f1425d = e4;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        E e4 = this.f1425d;
        e4.f1435b.removeView(e4.f1438e);
        E e5 = this.f1425d;
        e5.f1438e = null;
        e5.f1439f = null;
        WallpaperCarouselView wallpaperCarouselView = e5.f1436c;
        w wVar = wallpaperCarouselView.f7343k;
        w wVar2 = wallpaperCarouselView.f7342j;
        if (wVar != wVar2) {
            wallpaperCarouselView.a();
            return;
        }
        wallpaperCarouselView.f7343k = null;
        w.a(wVar2, 2);
    }
}
