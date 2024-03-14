package com.android.launcher3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class LauncherFiles {
    public static final List ALL_FILES;
    public static final List GRID_DB_FILES;
    public static final List OTHER_FILES;

    static {
        List unmodifiableList = Collections.unmodifiableList(Arrays.asList("launcher.db", "launcher_6_by_5.db", "launcher_4_by_5.db", "launcher_4_by_4.db", "launcher_3_by_3.db", "launcher_2_by_2.db"));
        GRID_DB_FILES = unmodifiableList;
        List unmodifiableList2 = Collections.unmodifiableList(Arrays.asList("backup.db", "com.android.launcher3.prefs.xml", "widgetpreviews.db", "com.android.launcher3.managedusers.prefs.xml", "com.android.launcher3.device.prefs.xml", "app_icons.db"));
        OTHER_FILES = unmodifiableList2;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(unmodifiableList);
        arrayList.addAll(unmodifiableList2);
        ALL_FILES = Collections.unmodifiableList(arrayList);
    }
}
