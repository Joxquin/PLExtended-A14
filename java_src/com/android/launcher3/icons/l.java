package com.android.launcher3.icons;

import android.util.Log;
import com.android.launcher3.model.data.IconRequestInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class l implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4674a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ IconCache f4675b;

    public /* synthetic */ l(IconCache iconCache, int i4) {
        this.f4674a = i4;
        this.f4675b = iconCache;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f4674a) {
            case 0:
                IconCache iconCache = this.f4675b;
                ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) obj;
                iconCache.getClass();
                BitmapInfo bitmapInfo = itemInfoWithIcon.bitmap;
                return bitmapInfo != null && (bitmapInfo.isNullOrLowRes() || !iconCache.isDefaultIcon(itemInfoWithIcon.bitmap, itemInfoWithIcon.user));
            default:
                IconCache iconCache2 = this.f4675b;
                IconRequestInfo iconRequestInfo = (IconRequestInfo) obj;
                iconCache2.getClass();
                if (iconRequestInfo.itemInfo.getTargetComponent() == null) {
                    StringBuilder sb = new StringBuilder("Skipping Item info with null component name: ");
                    ItemInfoWithIcon itemInfoWithIcon2 = iconRequestInfo.itemInfo;
                    sb.append(itemInfoWithIcon2);
                    Log.i("Launcher.IconCache", sb.toString());
                    itemInfoWithIcon2.bitmap = iconCache2.getDefaultIcon(itemInfoWithIcon2.user);
                    return false;
                }
                return true;
        }
    }
}
