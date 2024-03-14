package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.allapps.AppInfoComparator;
import com.android.launcher3.model.data.AppInfo;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0639e extends AppInfoComparator {

    /* renamed from: a  reason: collision with root package name */
    public String f7031a;

    @Override // com.android.launcher3.allapps.AppInfoComparator, java.util.Comparator
    public final int compare(AppInfo appInfo, AppInfo appInfo2) {
        if (this.f7031a != null) {
            int compareTo = Integer.valueOf(appInfo.title.toString().toLowerCase().indexOf(this.f7031a)).compareTo(Integer.valueOf(appInfo2.title.toString().toLowerCase().indexOf(this.f7031a)));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return super.compare(appInfo, appInfo2);
    }
}
