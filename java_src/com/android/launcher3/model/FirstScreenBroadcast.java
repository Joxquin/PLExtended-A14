package com.android.launcher3.model;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInstaller;
import android.os.Process;
import android.os.UserHandle;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.util.Executors;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class FirstScreenBroadcast {
    private final HashMap mSessionInfoForPackage;

    public FirstScreenBroadcast(HashMap hashMap) {
        this.mSessionInfoForPackage = hashMap;
    }

    public static void a(FirstScreenBroadcast firstScreenBroadcast, Context context, List list, String str, Set set) {
        List<ItemInfo> emptyList;
        firstScreenBroadcast.getClass();
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (itemInfo instanceof FolderInfo) {
                final ArrayList arrayList = ((FolderInfo) itemInfo).contents;
                try {
                    emptyList = (List) Executors.MAIN_EXECUTOR.submit(new Callable() { // from class: com.android.launcher3.model.P
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return new ArrayList(arrayList);
                        }
                    }).get();
                } catch (Exception unused) {
                    emptyList = Collections.emptyList();
                }
                for (ItemInfo itemInfo2 : emptyList) {
                    String packageName = getPackageName(itemInfo2);
                    if (packageName != null && set.contains(packageName)) {
                        hashSet.add(packageName);
                    }
                }
            }
            String packageName2 = getPackageName(itemInfo);
            if (packageName2 != null && set.contains(packageName2)) {
                if (itemInfo instanceof LauncherAppWidgetInfo) {
                    hashSet4.add(packageName2);
                } else {
                    int i4 = itemInfo.container;
                    if (i4 == -101) {
                        hashSet3.add(packageName2);
                    } else if (i4 == -100) {
                        hashSet2.add(packageName2);
                    }
                }
            }
        }
        if (hashSet.isEmpty() && hashSet2.isEmpty() && hashSet3.isEmpty() && hashSet4.isEmpty()) {
            return;
        }
        context.sendBroadcast(new Intent("com.android.launcher3.action.FIRST_SCREEN_ACTIVE_INSTALLS").setPackage(str).putStringArrayListExtra("folderItem", new ArrayList<>(hashSet)).putStringArrayListExtra("workspaceItem", new ArrayList<>(hashSet2)).putStringArrayListExtra("hotseatItem", new ArrayList<>(hashSet3)).putStringArrayListExtra("widgetItem", new ArrayList<>(hashSet4)).putExtra("verificationToken", PendingIntent.getActivity(context, 0, new Intent(), 1140850688)));
    }

    private static String getPackageName(ItemInfo itemInfo) {
        if (!(itemInfo instanceof LauncherAppWidgetInfo)) {
            if (itemInfo.getTargetComponent() != null) {
                return itemInfo.getTargetComponent().getPackageName();
            }
            return null;
        }
        ComponentName componentName = ((LauncherAppWidgetInfo) itemInfo).providerName;
        if (componentName != null) {
            return componentName.getPackageName();
        }
        return null;
    }

    public final void sendBroadcasts(final Context context, final List list) {
        final UserHandle myUserHandle = Process.myUserHandle();
        ((Map) this.mSessionInfoForPackage.values().stream().filter(new Predicate() { // from class: com.android.launcher3.model.M
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return myUserHandle.equals(InstallSessionHelper.getUserHandle((PackageInstaller.SessionInfo) obj));
            }
        }).collect(Collectors.groupingBy(new Function() { // from class: com.android.launcher3.model.N
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        return ((PackageInstaller.SessionInfo) obj).getInstallerPackageName();
                    default:
                        return ((PackageInstaller.SessionInfo) obj).getAppPackageName();
                }
            }
        }, Collectors.mapping(new Function() { // from class: com.android.launcher3.model.N
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        return ((PackageInstaller.SessionInfo) obj).getInstallerPackageName();
                    default:
                        return ((PackageInstaller.SessionInfo) obj).getAppPackageName();
                }
            }
        }, Collectors.toSet())))).forEach(new BiConsumer() { // from class: com.android.launcher3.model.O
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                FirstScreenBroadcast.a(FirstScreenBroadcast.this, context, list, (String) obj, (Set) obj2);
            }
        });
    }
}
