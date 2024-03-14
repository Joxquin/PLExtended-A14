package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.content.pm.ShortcutInfo;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class B2 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        ShortcutInfo shortcutInfo = (ShortcutInfo) obj;
        return new SearchTarget.Builder(4, "people_tile", "people_tile" + shortcutInfo.getId()).setPackageName(shortcutInfo.getPackage()).setUserHandle(C2.f6516a).setShortcutInfo(shortcutInfo).build();
    }
}
