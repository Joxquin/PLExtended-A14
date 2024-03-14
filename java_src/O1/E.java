package O1;

import android.animation.Animator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.google.android.apps.nexuslauncher.customize.WallpaperCarouselView;
/* loaded from: classes.dex */
public final class E {

    /* renamed from: h  reason: collision with root package name */
    public static final Interpolator f1433h = new PathInterpolator(0.0f, 0.0f, 0.7f, 1.0f);

    /* renamed from: a  reason: collision with root package name */
    public final l f1434a;

    /* renamed from: b  reason: collision with root package name */
    public final j f1435b;

    /* renamed from: c  reason: collision with root package name */
    public final WallpaperCarouselView f1436c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1437d;

    /* renamed from: e  reason: collision with root package name */
    public D f1438e;

    /* renamed from: f  reason: collision with root package name */
    public Animator f1439f;

    /* renamed from: g  reason: collision with root package name */
    public HandlerRunnable f1440g;

    public E(l lVar) {
        this.f1434a = lVar;
        this.f1435b = lVar.f1464m;
        WallpaperCarouselView wallpaperCarouselView = lVar.f1462k;
        this.f1436c = wallpaperCarouselView;
        wallpaperCarouselView.f7344l = new x(this);
    }
}
