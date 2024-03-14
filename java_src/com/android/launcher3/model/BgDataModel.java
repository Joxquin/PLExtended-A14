package com.android.launcher3.model;

import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import android.util.ArraySet;
import android.util.Log;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.RunnableList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public final class BgDataModel {
    public final IntSparseArrayMap itemsIdMap = new IntSparseArrayMap();
    public final ArrayList workspaceItems = new ArrayList();
    public final ArrayList appWidgets = new ArrayList();
    public final IntSparseArrayMap folders = new IntSparseArrayMap();
    public final IntSparseArrayMap extraItems = new IntSparseArrayMap();
    public final HashMap deepShortcutMap = new HashMap();
    public final WidgetsModel widgetsModel = new WidgetsModel();
    public final StringCache stringCache = new StringCache();
    public int lastBindId = 0;
    public int lastLoadId = -1;

    /* loaded from: classes.dex */
    public interface Callbacks {
        default void bindAllApplications(AppInfo[] appInfoArr, int i4, Map map) {
        }

        default void bindAllWidgets(List list) {
        }

        default void bindAppsAdded(IntArray intArray, ArrayList arrayList, ArrayList arrayList2) {
        }

        default void bindDeepShortcutMap(HashMap hashMap) {
        }

        default void bindExtraContainerItems(FixedContainerItems fixedContainerItems) {
        }

        default void bindIncrementalDownloadProgressUpdated(AppInfo appInfo) {
        }

        default void bindItems(List list) {
        }

        default void bindItemsModified(List list) {
        }

        default void bindRestoreItemsChange(HashSet hashSet) {
        }

        default void bindScreens(IntArray intArray) {
        }

        default void bindStringCache(StringCache stringCache) {
        }

        default void bindWidgetsRestored(ArrayList arrayList) {
        }

        default void bindWorkspaceComponentsRemoved(Predicate predicate) {
        }

        default void bindWorkspaceItemsChanged(List list) {
        }

        default void clearPendingBinds() {
        }

        default void finishBindingItems(IntSet intSet) {
        }

        default IntSet getPagesToBindSynchronously(IntArray intArray) {
            return new IntSet();
        }

        default void onInitialBindComplete(IntSet intSet, RunnableList runnableList, int i4, boolean z4) {
            runnableList.executeAllAndDestroy();
        }

        default void preAddApps() {
        }

        default void startBinding() {
        }
    }

    /* loaded from: classes.dex */
    public final class FixedContainerItems {
        public final int containerId;
        public final List items;

        public FixedContainerItems(int i4, List list) {
            this.containerId = i4;
            this.items = Collections.unmodifiableList(list);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00a7 A[Catch: all -> 0x00b2, TryCatch #2 {, blocks: (B:6:0x0006, B:7:0x0018, B:41:0x00a7, B:43:0x00ab, B:19:0x0035, B:20:0x003e, B:21:0x004e, B:27:0x005b, B:29:0x0063, B:30:0x007a, B:34:0x008f, B:35:0x0090, B:39:0x00a0, B:31:0x007b, B:33:0x0085), top: B:49:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void addItem(android.content.Context r6, com.android.launcher3.model.data.ItemInfo r7, boolean r8, com.android.launcher3.model.LoaderMemoryLogger r9) {
        /*
            r5 = this;
            java.lang.String r0 = "attempted to add item: "
            monitor-enter(r5)
            r1 = 0
            if (r9 == 0) goto L18
            java.lang.String r2 = "Adding item to ID map: %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r4 = r7.toString()     // Catch: java.lang.Throwable -> Lb2
            r3[r1] = r4     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r2 = java.lang.String.format(r2, r3)     // Catch: java.lang.Throwable -> Lb2
            r9.addLog(r2)     // Catch: java.lang.Throwable -> Lb2
        L18:
            com.android.launcher3.util.IntSparseArrayMap r9 = r5.itemsIdMap     // Catch: java.lang.Throwable -> Lb2
            int r2 = r7.id     // Catch: java.lang.Throwable -> Lb2
            r9.put(r2, r7)     // Catch: java.lang.Throwable -> Lb2
            int r9 = r7.itemType     // Catch: java.lang.Throwable -> Lb2
            r2 = 6
            if (r9 == 0) goto L4e
            r3 = 2
            if (r9 == r3) goto L3e
            r3 = 10
            if (r9 == r3) goto L3e
            r3 = 4
            if (r9 == r3) goto L35
            r3 = 5
            if (r9 == r3) goto L35
            if (r9 == r2) goto L4e
            goto La5
        L35:
            java.util.ArrayList r9 = r5.appWidgets     // Catch: java.lang.Throwable -> Lb2
            r0 = r7
            com.android.launcher3.model.data.LauncherAppWidgetInfo r0 = (com.android.launcher3.model.data.LauncherAppWidgetInfo) r0     // Catch: java.lang.Throwable -> Lb2
            r9.add(r0)     // Catch: java.lang.Throwable -> Lb2
            goto La5
        L3e:
            com.android.launcher3.util.IntSparseArrayMap r9 = r5.folders     // Catch: java.lang.Throwable -> Lb2
            int r0 = r7.id     // Catch: java.lang.Throwable -> Lb2
            r1 = r7
            com.android.launcher3.model.data.FolderInfo r1 = (com.android.launcher3.model.data.FolderInfo) r1     // Catch: java.lang.Throwable -> Lb2
            r9.put(r0, r1)     // Catch: java.lang.Throwable -> Lb2
            java.util.ArrayList r9 = r5.workspaceItems     // Catch: java.lang.Throwable -> Lb2
            r9.add(r7)     // Catch: java.lang.Throwable -> Lb2
            goto La5
        L4e:
            int r9 = r7.container     // Catch: java.lang.Throwable -> Lb2
            r3 = -100
            if (r9 == r3) goto La0
            r3 = -101(0xffffffffffffff9b, float:NaN)
            if (r9 != r3) goto L59
            goto La0
        L59:
            if (r8 == 0) goto L7a
            com.android.launcher3.util.IntSparseArrayMap r1 = r5.folders     // Catch: java.lang.Throwable -> Lb2
            boolean r9 = r1.containsKey(r9)     // Catch: java.lang.Throwable -> Lb2
            if (r9 != 0) goto La5
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb2
            r9.<init>(r0)     // Catch: java.lang.Throwable -> Lb2
            r9.append(r7)     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r0 = " to a nonexistent app collection"
            r9.append(r0)     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r0 = "BgDataModel"
            android.util.Log.e(r0, r9)     // Catch: java.lang.Throwable -> Lb2
            goto La5
        L7a:
            monitor-enter(r5)     // Catch: java.lang.Throwable -> Lb2
            com.android.launcher3.util.IntSparseArrayMap r0 = r5.folders     // Catch: java.lang.Throwable -> L9d
            java.lang.Object r0 = r0.get(r9)     // Catch: java.lang.Throwable -> L9d
            com.android.launcher3.model.data.FolderInfo r0 = (com.android.launcher3.model.data.FolderInfo) r0     // Catch: java.lang.Throwable -> L9d
            if (r0 != 0) goto L8f
            com.android.launcher3.model.data.FolderInfo r0 = new com.android.launcher3.model.data.FolderInfo     // Catch: java.lang.Throwable -> L9d
            r0.<init>()     // Catch: java.lang.Throwable -> L9d
            com.android.launcher3.util.IntSparseArrayMap r3 = r5.folders     // Catch: java.lang.Throwable -> L9d
            r3.put(r9, r0)     // Catch: java.lang.Throwable -> L9d
        L8f:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> Lb2
            r9 = r7
            com.android.launcher3.model.data.WorkspaceItemInfo r9 = (com.android.launcher3.model.data.WorkspaceItemInfo) r9     // Catch: java.lang.Throwable -> Lb2
            java.util.ArrayList r3 = r0.contents     // Catch: java.lang.Throwable -> Lb2
            int r3 = r3.size()     // Catch: java.lang.Throwable -> Lb2
            r0.add(r3, r9, r1)     // Catch: java.lang.Throwable -> Lb2
            goto La5
        L9d:
            r6 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> Lb2
            throw r6     // Catch: java.lang.Throwable -> Lb2
        La0:
            java.util.ArrayList r9 = r5.workspaceItems     // Catch: java.lang.Throwable -> Lb2
            r9.add(r7)     // Catch: java.lang.Throwable -> Lb2
        La5:
            if (r8 == 0) goto Lb0
            int r8 = r7.itemType     // Catch: java.lang.Throwable -> Lb2
            if (r8 != r2) goto Lb0
            android.os.UserHandle r7 = r7.user     // Catch: java.lang.Throwable -> Lb2
            r5.updateShortcutPinnedState(r6, r7)     // Catch: java.lang.Throwable -> Lb2
        Lb0:
            monitor-exit(r5)
            return
        Lb2:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.BgDataModel.addItem(android.content.Context, com.android.launcher3.model.data.ItemInfo, boolean, com.android.launcher3.model.LoaderMemoryLogger):void");
    }

    public final synchronized void clear() {
        this.workspaceItems.clear();
        this.appWidgets.clear();
        this.folders.clear();
        this.itemsIdMap.clear();
        this.deepShortcutMap.clear();
        this.extraItems.clear();
    }

    public final synchronized IntArray collectWorkspaceScreens() {
        IntSet intSet;
        intSet = new IntSet();
        Iterator it = this.itemsIdMap.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if (itemInfo.container == -100) {
                intSet.add(itemInfo.screenId);
            }
        }
        intSet.add(0);
        return intSet.getArray();
    }

    public final void forAllWorkspaceItemInfos(UserHandle userHandle, Consumer consumer) {
        Iterator it = this.itemsIdMap.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            if ((itemInfo instanceof WorkspaceItemInfo) && userHandle.equals(itemInfo.user)) {
                consumer.accept((WorkspaceItemInfo) itemInfo);
            }
        }
        IntSparseArrayMap intSparseArrayMap = this.extraItems;
        int size = intSparseArrayMap.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            for (ItemInfo itemInfo2 : ((FixedContainerItems) intSparseArrayMap.valueAt(size)).items) {
                if ((itemInfo2 instanceof WorkspaceItemInfo) && userHandle.equals(itemInfo2.user)) {
                    consumer.accept((WorkspaceItemInfo) itemInfo2);
                }
            }
        }
    }

    public final synchronized ArrayList getAllWorkspaceItems() {
        ArrayList arrayList;
        arrayList = new ArrayList(this.workspaceItems.size() + this.appWidgets.size());
        arrayList.addAll(this.workspaceItems);
        arrayList.addAll(this.appWidgets);
        return arrayList;
    }

    public final synchronized void removeItem(Context context, Iterable iterable) {
        ArraySet arraySet = new ArraySet();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it.next();
            int i4 = itemInfo.itemType;
            if (i4 != 0) {
                if (i4 == 2 || i4 == 10) {
                    this.folders.remove(itemInfo.id);
                    this.workspaceItems.remove(itemInfo);
                } else if (i4 == 4 || i4 == 5) {
                    this.appWidgets.remove(itemInfo);
                } else if (i4 == 6) {
                    arraySet.add(itemInfo.user);
                }
                this.itemsIdMap.remove(itemInfo.id);
            }
            this.workspaceItems.remove(itemInfo);
            this.itemsIdMap.remove(itemInfo.id);
        }
        arraySet.forEach(new G(context, this));
    }

    public final synchronized void updateDeepShortcutCounts(String str, List list, UserHandle userHandle) {
        if (str != null) {
            Iterator it = this.deepShortcutMap.keySet().iterator();
            while (it.hasNext()) {
                ComponentKey componentKey = (ComponentKey) it.next();
                if (componentKey.componentName.getPackageName().equals(str) && componentKey.user.equals(userHandle)) {
                    it.remove();
                }
            }
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ShortcutInfo shortcutInfo = (ShortcutInfo) it2.next();
            int i4 = 1;
            if (shortcutInfo.isEnabled() && (shortcutInfo.isDeclaredInManifest() || shortcutInfo.isDynamic()) && shortcutInfo.getActivity() != null) {
                ComponentKey componentKey2 = new ComponentKey(shortcutInfo.getActivity(), shortcutInfo.getUserHandle());
                Integer num = (Integer) this.deepShortcutMap.get(componentKey2);
                HashMap hashMap = this.deepShortcutMap;
                if (num != null) {
                    i4 = 1 + num.intValue();
                }
                hashMap.put(componentKey2, Integer.valueOf(i4));
            }
        }
    }

    public final synchronized void updateShortcutPinnedState(Context context, UserHandle userHandle) {
        ShortcutRequest.QueryResult query = new ShortcutRequest(context, userHandle).query(6);
        if (query.wasSuccess()) {
            Map map = (Map) query.stream().collect(Collectors.groupingBy(new Function() { // from class: com.android.launcher3.model.H
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (r1) {
                        case 0:
                            return ((ShortcutInfo) obj).getPackage();
                        case 1:
                            return ((ShortcutInfo) obj).getId();
                        case 2:
                            return ShortcutKey.fromItemInfo((WorkspaceItemInfo) obj);
                        case 3:
                            return ((ShortcutKey) obj).componentName.getPackageName();
                        default:
                            return ((ShortcutKey) obj).componentName.getClassName();
                    }
                }
            }, Collectors.mapping(new Function() { // from class: com.android.launcher3.model.H
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (r1) {
                        case 0:
                            return ((ShortcutInfo) obj).getPackage();
                        case 1:
                            return ((ShortcutInfo) obj).getId();
                        case 2:
                            return ShortcutKey.fromItemInfo((WorkspaceItemInfo) obj);
                        case 3:
                            return ((ShortcutKey) obj).componentName.getPackageName();
                        default:
                            return ((ShortcutKey) obj).componentName.getClassName();
                    }
                }
            }, Collectors.toSet())));
            final Stream.Builder builder = Stream.builder();
            Objects.requireNonNull(builder);
            forAllWorkspaceItemInfos(userHandle, new Consumer() { // from class: com.android.launcher3.model.I
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    builder.accept((WorkspaceItemInfo) obj);
                }
            });
            for (Map.Entry entry : ((Map) Stream.concat(builder.build().filter(new J()).map(new Function() { // from class: com.android.launcher3.model.H
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (r1) {
                        case 0:
                            return ((ShortcutInfo) obj).getPackage();
                        case 1:
                            return ((ShortcutInfo) obj).getId();
                        case 2:
                            return ShortcutKey.fromItemInfo((WorkspaceItemInfo) obj);
                        case 3:
                            return ((ShortcutKey) obj).componentName.getPackageName();
                        default:
                            return ((ShortcutKey) obj).componentName.getClassName();
                    }
                }
            }), ((ItemInstallQueue) ItemInstallQueue.INSTANCE.get(context)).getPendingShortcuts(userHandle)).collect(Collectors.groupingBy(new Function() { // from class: com.android.launcher3.model.H
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (r1) {
                        case 0:
                            return ((ShortcutInfo) obj).getPackage();
                        case 1:
                            return ((ShortcutInfo) obj).getId();
                        case 2:
                            return ShortcutKey.fromItemInfo((WorkspaceItemInfo) obj);
                        case 3:
                            return ((ShortcutKey) obj).componentName.getPackageName();
                        default:
                            return ((ShortcutKey) obj).componentName.getClassName();
                    }
                }
            }, Collectors.mapping(new Function() { // from class: com.android.launcher3.model.H
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (r1) {
                        case 0:
                            return ((ShortcutInfo) obj).getPackage();
                        case 1:
                            return ((ShortcutInfo) obj).getId();
                        case 2:
                            return ShortcutKey.fromItemInfo((WorkspaceItemInfo) obj);
                        case 3:
                            return ((ShortcutKey) obj).componentName.getPackageName();
                        default:
                            return ((ShortcutKey) obj).componentName.getClassName();
                    }
                }
            }, Collectors.toSet())))).entrySet()) {
                Set set = (Set) entry.getValue();
                Set set2 = (Set) map.remove(entry.getKey());
                if (set2 == null) {
                    set2 = Collections.emptySet();
                }
                if (set2.size() != set.size() || !set2.containsAll(set)) {
                    try {
                        ((LauncherApps) context.getSystemService(LauncherApps.class)).pinShortcuts((String) entry.getKey(), new ArrayList(set), userHandle);
                    } catch (IllegalStateException | SecurityException e4) {
                        Log.w("BgDataModel", "Failed to pin shortcut", e4);
                    }
                }
            }
            map.keySet().forEach(new G(context, userHandle));
        }
    }
}
