package com.android.launcher3.util;

import android.os.UserHandle;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import java.util.Set;
import java.util.function.Predicate;
/* renamed from: com.android.launcher3.util.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0481n implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5303a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f5304b;

    public /* synthetic */ C0481n(int i4, Object obj) {
        this.f5303a = i4;
        this.f5304b = obj;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f5303a) {
            case 0:
                ItemInfo itemInfo = (ItemInfo) obj;
                return itemInfo != null && itemInfo.user.equals((UserHandle) this.f5304b);
            case 1:
                ItemInfo itemInfo2 = (ItemInfo) obj;
                return itemInfo2 != null && itemInfo2.itemType == 6 && ((Set) this.f5304b).contains(ShortcutKey.fromItemInfo(itemInfo2));
            case 2:
                ItemInfo itemInfo3 = (ItemInfo) obj;
                return (itemInfo3 instanceof FolderInfo) && ((FolderInfo) itemInfo3).contents.stream().anyMatch((Predicate) this.f5304b);
            default:
                ItemInfo itemInfo4 = (ItemInfo) obj;
                return itemInfo4 != null && ((IntSet) this.f5304b).contains(itemInfo4.id);
        }
    }
}
