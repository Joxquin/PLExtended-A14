package O1;

import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.google.android.apps.nexuslauncher.customize.WallpaperCarouselView;
/* loaded from: classes.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1480d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f1481e;

    public /* synthetic */ q(int i4, Object obj) {
        this.f1480d = i4;
        this.f1481e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1480d) {
            case 0:
                ((HandlerRunnable) this.f1481e).cancel();
                return;
            case 1:
                ((HandlerRunnable) this.f1481e).cancel();
                return;
            default:
                WallpaperCarouselView wallpaperCarouselView = (WallpaperCarouselView) this.f1481e;
                int i4 = WallpaperCarouselView.f7335n;
                wallpaperCarouselView.getClass();
                LooperExecutor looperExecutor = Executors.UI_HELPER_EXECUTOR;
                looperExecutor.execute(new HandlerRunnable(looperExecutor.getHandler(), new s(wallpaperCarouselView, 0), Executors.MAIN_EXECUTOR, new t(wallpaperCarouselView, 0)));
                return;
        }
    }
}
