package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import com.android.launcher3.widget.model.WidgetsListContentEntry;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Predicate;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.n0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0676n0 implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7130a;

    public /* synthetic */ C0676n0(int i4) {
        this.f7130a = i4;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f7130a) {
            case 0:
                WidgetsListBaseEntry widgetsListBaseEntry = (WidgetsListBaseEntry) obj;
                return (widgetsListBaseEntry instanceof WidgetsListContentEntry) && widgetsListBaseEntry.mPkgItem.packageName.equals("com.android.systemui");
            case 1:
                return ((BaseAllAppsAdapter.AdapterItem) obj) instanceof C0653h1;
            case 2:
                return Objects.nonNull((SearchTarget) obj);
            default:
                return ((Boolean) Optional.ofNullable(((SearchTarget) obj).getExtras()).map(new Y(4)).orElse(Boolean.FALSE)).booleanValue();
        }
    }
}
