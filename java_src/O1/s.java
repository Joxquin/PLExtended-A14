package O1;

import android.app.WallpaperColors;
import android.content.ContentValues;
import android.util.Log;
import android.view.ViewGroup;
import com.google.android.apps.nexuslauncher.customize.WallpaperCarouselView;
import d2.C0799a;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final /* synthetic */ class s implements Supplier {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f1483a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1484b;

    public /* synthetic */ s(ViewGroup viewGroup, int i4) {
        this.f1483a = i4;
        this.f1484b = viewGroup;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f1483a) {
            case 0:
                WallpaperCarouselView wallpaperCarouselView = (WallpaperCarouselView) this.f1484b;
                w wVar = wallpaperCarouselView.f7343k;
                boolean z4 = false;
                if (wVar != null) {
                    n nVar = wallpaperCarouselView.f7339g;
                    m mVar = wVar.f1494i;
                    nVar.getClass();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("id", mVar.f1468d);
                    int update = nVar.f1475a.getContentResolver().update(n.f1472b.buildUpon().appendPath("set_recent_wallpaper").build(), contentValues, null);
                    if (update == 0) {
                        Log.e("WallpaperApiWrapper", "Error setting wallpaper: " + mVar.f1468d);
                    }
                    if (update > 0) {
                        z4 = true;
                    }
                }
                return Boolean.valueOf(z4);
            default:
                w wVar2 = (w) this.f1484b;
                v vVar = w.f1488o;
                return new C0799a(wVar2.getContext()).b(WallpaperColors.fromBitmap(wVar2.f1496k));
        }
    }
}
