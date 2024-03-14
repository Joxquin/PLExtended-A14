package com.android.launcher3.model;

import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Pair;
import com.android.launcher3.AppFilter;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.compat.AlphabeticIndexCompat;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.WidgetsModel;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.WidgetManagerHelper;
import com.android.launcher3.widget.WidgetSections;
import com.android.launcher3.widget.model.WidgetsListContentEntry;
import com.android.launcher3.widget.model.WidgetsListHeaderEntry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import q.C1354e;
import q.C1355f;
/* loaded from: classes.dex */
public final class WidgetsModel {
    private final Map mWidgetsList = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class PackageItemInfoCache {
        private final C1355f mMap = new C1355f();

        public final PackageItemInfo getOrCreate(PackageUserKey packageUserKey) {
            C1355f c1355f = this.mMap;
            PackageItemInfo packageItemInfo = (PackageItemInfo) c1355f.get(packageUserKey);
            if (packageItemInfo == null) {
                PackageItemInfo packageItemInfo2 = new PackageItemInfo(packageUserKey.mWidgetCategory, packageUserKey.mUser, packageUserKey.mPackageName);
                packageItemInfo2.user = packageUserKey.mUser;
                c1355f.put(packageUserKey, packageItemInfo2);
                return packageItemInfo2;
            }
            return packageItemInfo;
        }

        public final Collection values() {
            return this.mMap.values();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class WidgetValidityCheck implements Predicate {
        private final AppFilter mAppFilter;

        public WidgetValidityCheck(LauncherAppState launcherAppState) {
            launcherAppState.getClass();
            this.mAppFilter = new AppFilter(launcherAppState.getContext());
        }

        @Override // java.util.function.Predicate
        public final boolean test(Object obj) {
            WidgetItem widgetItem = (WidgetItem) obj;
            LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = widgetItem.widgetInfo;
            if (launcherAppWidgetProviderInfo != null) {
                if (((Utilities.ATLEAST_P ? ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).widgetFeatures : 0) & 2) != 0 || !launcherAppWidgetProviderInfo.isMinSizeFulfilled()) {
                    return false;
                }
            }
            return this.mAppFilter.shouldShowApp(widgetItem.componentName);
        }
    }

    public static PackageItemInfo newPendingItemInfo(Context context, ComponentName componentName, UserHandle userHandle) {
        ArrayMap arrayMap = (ArrayMap) WidgetSections.getWidgetsToCategory(context);
        if (arrayMap.containsKey(componentName)) {
            Iterator it = ((IntSet) arrayMap.get(componentName)).iterator();
            int i4 = -1;
            while (it.hasNext() && i4 == -1) {
                i4 = ((Integer) it.next()).intValue();
            }
            return new PackageItemInfo(i4, userHandle, componentName.getPackageName());
        }
        return new PackageItemInfo(-1, userHandle, componentName.getPackageName());
    }

    private synchronized void setWidgetsAndShortcuts(ArrayList arrayList, final LauncherAppState launcherAppState, PackageUserKey packageUserKey) {
        final PackageItemInfoCache packageItemInfoCache = new PackageItemInfoCache();
        if (packageUserKey == null) {
            ((HashMap) this.mWidgetsList).clear();
        } else {
            ((HashMap) this.mWidgetsList).remove(packageItemInfoCache.getOrCreate(packageUserKey));
        }
        ((HashMap) this.mWidgetsList).putAll((Map) arrayList.stream().filter(new WidgetValidityCheck(launcherAppState)).flatMap(new Function() { // from class: com.android.launcher3.model.p1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                final List asList;
                WidgetsModel widgetsModel = WidgetsModel.this;
                LauncherAppState launcherAppState2 = launcherAppState;
                final WidgetsModel.PackageItemInfoCache packageItemInfoCache2 = packageItemInfoCache;
                final WidgetItem widgetItem = (WidgetItem) obj;
                widgetsModel.getClass();
                IntSet intSet = (IntSet) ((ArrayMap) WidgetSections.getWidgetsToCategory(launcherAppState2.getContext())).get(widgetItem.componentName);
                if (intSet == null || intSet.isEmpty()) {
                    asList = Arrays.asList(new PackageUserKey(widgetItem.componentName.getPackageName(), widgetItem.user));
                } else {
                    asList = new ArrayList();
                    intSet.forEach(new Consumer() { // from class: com.android.launcher3.model.s1
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj2) {
                            List list = asList;
                            WidgetItem widgetItem2 = widgetItem;
                            Integer num = (Integer) obj2;
                            if (num.intValue() == -1) {
                                list.add(new PackageUserKey(widgetItem2.componentName.getPackageName(), widgetItem2.user));
                            } else {
                                list.add(new PackageUserKey(num.intValue(), widgetItem2.user));
                            }
                        }
                    });
                }
                return asList.stream().map(new Function() { // from class: com.android.launcher3.model.r1
                    @Override // java.util.function.Function
                    public final Object apply(Object obj2) {
                        WidgetsModel.PackageItemInfoCache packageItemInfoCache3 = WidgetsModel.PackageItemInfoCache.this;
                        return new Pair(packageItemInfoCache3.getOrCreate((PackageUserKey) obj2), widgetItem);
                    }
                });
            }
        }).collect(Collectors.groupingBy(new Function() { // from class: com.android.launcher3.model.q1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        return (PackageItemInfo) ((Pair) obj).first;
                    default:
                        return (WidgetItem) ((Pair) obj).second;
                }
            }
        }, Collectors.mapping(new Function() { // from class: com.android.launcher3.model.q1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                        return (PackageItemInfo) ((Pair) obj).first;
                    default:
                        return (WidgetItem) ((Pair) obj).second;
                }
            }
        }, Collectors.toList()))));
        IconCache iconCache = launcherAppState.getIconCache();
        Iterator it = ((C1354e) packageItemInfoCache.values()).iterator();
        while (it.hasNext()) {
            iconCache.getTitleAndIconForApp((PackageItemInfo) it.next(), true);
        }
    }

    public final synchronized Map getAllWidgetsWithoutShortcuts() {
        final HashMap hashMap;
        hashMap = new HashMap();
        ((HashMap) this.mWidgetsList).forEach(new BiConsumer() { // from class: com.android.launcher3.model.t1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Map map = hashMap;
                PackageItemInfo packageItemInfo = (PackageItemInfo) obj;
                List list = (List) ((List) obj2).stream().filter(new u1()).collect(Collectors.toList());
                if (list.size() > 0) {
                    map.put(new PackageUserKey(packageItemInfo.packageName, packageItemInfo.user), list);
                }
            }
        });
        return hashMap;
    }

    public final WidgetItem getWidgetProviderInfoByProviderName(ComponentName componentName, UserHandle userHandle) {
        List<WidgetItem> list = (List) ((HashMap) this.mWidgetsList).get(new PackageItemInfo(-1, userHandle, componentName.getPackageName()));
        if (list == null) {
            return null;
        }
        for (WidgetItem widgetItem : list) {
            if (widgetItem.componentName.equals(componentName)) {
                return widgetItem;
            }
        }
        return null;
    }

    public final synchronized ArrayList getWidgetsListForPicker(Context context) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        AlphabeticIndexCompat alphabeticIndexCompat = new AlphabeticIndexCompat(context.getResources().getConfiguration().getLocales());
        for (Map.Entry entry : ((HashMap) this.mWidgetsList).entrySet()) {
            PackageItemInfo packageItemInfo = (PackageItemInfo) entry.getKey();
            List list = (List) entry.getValue();
            CharSequence charSequence = packageItemInfo.title;
            String computeSectionName = charSequence == null ? "" : alphabeticIndexCompat.computeSectionName(charSequence);
            arrayList.add(WidgetsListHeaderEntry.create(packageItemInfo, computeSectionName, list));
            arrayList.add(new WidgetsListContentEntry(packageItemInfo, computeSectionName, list, 0));
        }
        return arrayList;
    }

    public final void onPackageIconsUpdated(Set set, UserHandle userHandle, LauncherAppState launcherAppState) {
        for (Map.Entry entry : ((HashMap) this.mWidgetsList).entrySet()) {
            if (set.contains(((PackageItemInfo) entry.getKey()).packageName)) {
                List list = (List) entry.getValue();
                int size = list.size();
                for (int i4 = 0; i4 < size; i4++) {
                    WidgetItem widgetItem = (WidgetItem) list.get(i4);
                    if (widgetItem.user.equals(userHandle)) {
                        ShortcutConfigActivityInfo shortcutConfigActivityInfo = widgetItem.activityInfo;
                        if (shortcutConfigActivityInfo != null) {
                            list.set(i4, new WidgetItem(shortcutConfigActivityInfo, launcherAppState.getIconCache(), launcherAppState.getContext().getPackageManager()));
                        } else {
                            list.set(i4, new WidgetItem(widgetItem.widgetInfo, launcherAppState.getInvariantDeviceProfile(), launcherAppState.getIconCache(), launcherAppState.getContext()));
                        }
                    }
                }
            }
        }
    }

    public final List update(LauncherAppState launcherAppState, PackageUserKey packageUserKey) {
        Context context = launcherAppState.getContext();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        try {
            InvariantDeviceProfile invariantDeviceProfile = launcherAppState.getInvariantDeviceProfile();
            PackageManager packageManager = launcherAppState.getContext().getPackageManager();
            for (AppWidgetProviderInfo appWidgetProviderInfo : new WidgetManagerHelper(context).getAllProviders(packageUserKey)) {
                LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(context, appWidgetProviderInfo);
                arrayList.add(new WidgetItem(fromProviderInfo, invariantDeviceProfile, launcherAppState.getIconCache(), launcherAppState.getContext()));
                arrayList2.add(fromProviderInfo);
            }
            Iterator it = ((ArrayList) ShortcutConfigActivityInfo.queryList(context, packageUserKey)).iterator();
            while (it.hasNext()) {
                ShortcutConfigActivityInfo shortcutConfigActivityInfo = (ShortcutConfigActivityInfo) it.next();
                arrayList.add(new WidgetItem(shortcutConfigActivityInfo, launcherAppState.getIconCache(), packageManager));
                arrayList2.add(shortcutConfigActivityInfo);
            }
            setWidgetsAndShortcuts(arrayList, launcherAppState, packageUserKey);
        } catch (Exception e4) {
            if (!Utilities.isBinderSizeError(e4)) {
                throw e4;
            }
        }
        return arrayList2;
    }
}
