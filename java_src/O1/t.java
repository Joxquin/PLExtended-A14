package O1;

import android.util.SparseIntArray;
import android.view.ViewGroup;
import com.google.android.apps.nexuslauncher.customize.WallpaperCarouselView;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class t implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1485a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1486b;

    public /* synthetic */ t(ViewGroup viewGroup, int i4) {
        this.f1485a = i4;
        this.f1486b = viewGroup;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f1485a) {
            case 0:
                WallpaperCarouselView wallpaperCarouselView = (WallpaperCarouselView) this.f1486b;
                if (((Boolean) obj).booleanValue()) {
                    wallpaperCarouselView.f7341i = wallpaperCarouselView.f7343k;
                    wallpaperCarouselView.f7345m.accept(Boolean.TRUE);
                    w wVar = wallpaperCarouselView.f7342j;
                    if (wVar == wallpaperCarouselView.f7343k) {
                        w.a(wVar, 2);
                        return;
                    }
                    return;
                } else if (wallpaperCarouselView.f7343k != wallpaperCarouselView.f7342j) {
                    wallpaperCarouselView.a();
                    return;
                } else {
                    wallpaperCarouselView.f7345m.accept(Boolean.FALSE);
                    w.a(wallpaperCarouselView.f7342j, 0);
                    w wVar2 = wallpaperCarouselView.f7341i;
                    wallpaperCarouselView.f7342j = wVar2;
                    w.a(wVar2, 2);
                    wallpaperCarouselView.f7343k = null;
                    return;
                }
            default:
                w wVar3 = (w) this.f1486b;
                SparseIntArray sparseIntArray = (SparseIntArray) obj;
                wVar3.f1498m = 2;
                int color = wVar3.getResources().getColor(17170491);
                wVar3.f1491f.setTint(wVar3.getResources().getColor(17170498));
                wVar3.f1489d.setColor(color);
                wVar3.f1495j.getIndeterminateDrawable().setTint(color);
                wVar3.setSelected(wVar3.f1497l == 2);
                wVar3.f1495j.setVisibility(wVar3.f1497l != 1 ? 8 : 0);
                return;
        }
    }
}
