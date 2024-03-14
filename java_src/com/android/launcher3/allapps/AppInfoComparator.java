package com.android.launcher3.allapps;

import android.content.Context;
import android.os.Process;
import android.os.UserHandle;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.LabelComparator;
import java.util.Comparator;
/* loaded from: classes.dex */
public class AppInfoComparator implements Comparator {
    private final UserCache mUserManager;
    private final UserHandle mMyUser = Process.myUserHandle();
    private final LabelComparator mLabelComparator = new LabelComparator();

    public AppInfoComparator(Context context) {
        this.mUserManager = (UserCache) UserCache.INSTANCE.get(context);
    }

    @Override // java.util.Comparator
    public int compare(AppInfo appInfo, AppInfo appInfo2) {
        LabelComparator labelComparator = this.mLabelComparator;
        CharSequence charSequence = appInfo.title;
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        CharSequence charSequence3 = appInfo2.title;
        int compare = labelComparator.compare(charSequence2, charSequence3 != null ? charSequence3.toString() : "");
        if (compare != 0) {
            return compare;
        }
        int compareTo = appInfo.componentName.compareTo(appInfo2.componentName);
        if (compareTo != 0) {
            return compareTo;
        }
        if (this.mMyUser.equals(appInfo.user)) {
            return -1;
        }
        return Long.valueOf(this.mUserManager.getSerialNumberForUser(appInfo.user)).compareTo(Long.valueOf(this.mUserManager.getSerialNumberForUser(appInfo2.user)));
    }
}
