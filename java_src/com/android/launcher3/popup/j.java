package com.android.launcher3.popup;

import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import com.android.launcher3.widget.model.WidgetsListContentEntry;
import java.util.HashMap;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class j implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4935a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4936b;

    public /* synthetic */ j(int i4, Object obj) {
        this.f4935a = i4;
        this.f4936b = obj;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f4935a) {
            case 0:
                WidgetsListBaseEntry widgetsListBaseEntry = (WidgetsListBaseEntry) obj;
                return (widgetsListBaseEntry instanceof WidgetsListContentEntry) && widgetsListBaseEntry.mPkgItem.packageName.equals(((PackageUserKey) this.f4936b).mPackageName);
            case 1:
                return ((PackageUserKey) this.f4936b).mUser.equals(((WidgetItem) obj).user);
            case 2:
                return ((PackageUserKey) this.f4936b).equals((PackageUserKey) obj);
            case 3:
                return ((PackageUserKey) this.f4936b).equals((PackageUserKey) obj);
            case 4:
                WidgetsListBaseEntry widgetsListBaseEntry2 = (WidgetsListBaseEntry) obj;
                return (widgetsListBaseEntry2 instanceof WidgetsListContentEntry) && PackageUserKey.fromPackageItemInfo(widgetsListBaseEntry2.mPkgItem).equals((PackageUserKey) this.f4936b);
            default:
                return ((HashMap) this.f4936b).containsKey((PackageUserKey) obj);
        }
    }
}
