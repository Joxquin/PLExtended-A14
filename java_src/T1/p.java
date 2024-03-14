package T1;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class p extends g {
    public p(Context context) {
        super(-114, context, "com.google.android.apps.wallpaper.recents");
    }

    @Override // T1.g
    public final Uri b() {
        return O1.n.f1474d;
    }

    @Override // T1.g
    public final List d() {
        Context context = this.f1703c;
        try {
            Cursor query = context.getContentResolver().query(O1.n.f1474d, O1.n.f1473c, null, null);
            if (query != null && query.getCount() >= 1) {
                ArrayList arrayList = new ArrayList(query.getCount());
                while (arrayList.size() < 4 && query.moveToNext()) {
                    String string = query.getString(3);
                    if (TextUtils.isEmpty(string)) {
                        string = context.getString(R.string.fallback_wallpaper_title);
                    }
                    arrayList.add(new O1.m(query.getString(0), query.getInt(1), query.getString(2), string, query.getCount(), query.getPosition()));
                }
                query.close();
                return arrayList;
            }
            List emptyList = Collections.emptyList();
            if (query != null) {
                query.close();
            }
            return emptyList;
        } catch (Exception e4) {
            Log.e("WallpaperDataLoader", "Error getting wallpaper previews", e4);
            return Collections.emptyList();
        }
    }

    @Override // T1.g
    public final void e(List list) {
        Set set = (Set) list.stream().map(new n()).filter(new o()).collect(Collectors.toSet());
        if (set.isEmpty()) {
            return;
        }
        set.forEach(new c(this, 1));
    }
}
