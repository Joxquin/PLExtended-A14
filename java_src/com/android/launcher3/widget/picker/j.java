package com.android.launcher3.widget.picker;

import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import java.util.List;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class j implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5394a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f5395b;

    public /* synthetic */ j(int i4, Object obj) {
        this.f5394a = i4;
        this.f5395b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5394a) {
            case 0:
                WidgetsListAdapter widgetsListAdapter = (WidgetsListAdapter) this.f5395b;
                widgetsListAdapter.getClass();
                widgetsListAdapter.onHeaderClicked(true, PackageUserKey.fromPackageItemInfo(((WidgetsListBaseEntry) obj).mPkgItem));
                return;
            default:
                ((List) this.f5395b).add((WidgetsListBaseEntry) obj);
                return;
        }
    }
}
