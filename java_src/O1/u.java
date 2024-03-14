package O1;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.apps.nexuslauncher.customize.WallpaperCarouselView;
/* loaded from: classes.dex */
public final class u extends ViewOutlineProvider {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ WallpaperCarouselView f1487a;

    public u(WallpaperCarouselView wallpaperCarouselView) {
        this.f1487a = wallpaperCarouselView;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.f1487a.f7338f);
    }
}
