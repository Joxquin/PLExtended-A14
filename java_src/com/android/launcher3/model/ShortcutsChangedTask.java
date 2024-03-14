package com.android.launcher3.model;

import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.C0481n;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.PackageManagerHelper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class ShortcutsChangedTask extends BaseModelUpdateTask {
    private final String mPackageName;
    private final List mShortcuts;
    private final boolean mUpdateIdMap;
    private final UserHandle mUser;

    public ShortcutsChangedTask(String str, List list, UserHandle userHandle, boolean z4) {
        this.mPackageName = str;
        this.mShortcuts = list;
        this.mUser = userHandle;
        this.mUpdateIdMap = z4;
    }

    public static void m(ShortcutsChangedTask shortcutsChangedTask, ArrayList arrayList, WorkspaceItemInfo workspaceItemInfo) {
        shortcutsChangedTask.getClass();
        if (workspaceItemInfo.itemType == 6 && shortcutsChangedTask.mPackageName.equals(workspaceItemInfo.intent.getPackage())) {
            arrayList.add(workspaceItemInfo);
        }
    }

    public static /* synthetic */ ShortcutKey n(ShortcutsChangedTask shortcutsChangedTask, String str) {
        return new ShortcutKey(shortcutsChangedTask.mPackageName, shortcutsChangedTask.mUser, str);
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public final void execute(final LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        final Context context = launcherAppState.getContext();
        final ArrayList arrayList = new ArrayList();
        synchronized (bgDataModel) {
            bgDataModel.forAllWorkspaceItemInfos(this.mUser, new Consumer() { // from class: com.android.launcher3.model.b1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ShortcutsChangedTask.m(ShortcutsChangedTask.this, arrayList, (WorkspaceItemInfo) obj);
                }
            });
        }
        if (!arrayList.isEmpty()) {
            if (this.mShortcuts.isEmpty()) {
                if (!(new PackageManagerHelper(launcherAppState.getContext()).getApplicationInfo(0, this.mUser, this.mPackageName) != null)) {
                    return;
                }
            }
            List list = (List) arrayList.stream().map(new c1()).distinct().collect(Collectors.toList());
            ShortcutRequest shortcutRequest = new ShortcutRequest(context, this.mUser);
            shortcutRequest.forPackage(this.mPackageName, list);
            ShortcutRequest.QueryResult query = shortcutRequest.query(11);
            HashSet hashSet = new HashSet(list);
            final ArrayList arrayList2 = new ArrayList();
            Iterator it = query.iterator();
            while (it.hasNext()) {
                final ShortcutInfo shortcutInfo = (ShortcutInfo) it.next();
                if (shortcutInfo.isPinned()) {
                    final String id = shortcutInfo.getId();
                    hashSet.remove(id);
                    arrayList.stream().filter(new Predicate() { // from class: com.android.launcher3.model.d1
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return id.equals(((WorkspaceItemInfo) obj).getDeepShortcutId());
                        }
                    }).forEach(new Consumer() { // from class: com.android.launcher3.model.e1
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ShortcutInfo shortcutInfo2 = shortcutInfo;
                            Context context2 = context;
                            LauncherAppState launcherAppState2 = launcherAppState;
                            ArrayList arrayList3 = arrayList2;
                            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) obj;
                            workspaceItemInfo.updateFromDeepShortcutInfo(context2, shortcutInfo2);
                            launcherAppState2.getIconCache().getShortcutIcon(workspaceItemInfo, shortcutInfo2);
                            arrayList3.add(workspaceItemInfo);
                        }
                    });
                }
            }
            bindUpdatedWorkspaceItems(arrayList2);
            if (!hashSet.isEmpty()) {
                int i4 = ItemInfoMatcher.f5271a;
                deleteAndBindComponentsRemoved(new C0481n(1, (Set) hashSet.stream().map(new Function() { // from class: com.android.launcher3.model.f1
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ShortcutsChangedTask.n(ShortcutsChangedTask.this, (String) obj);
                    }
                }).collect(Collectors.toSet())), "removed because the shortcut is no longer available in shortcut service");
            }
        }
        if (this.mUpdateIdMap) {
            bgDataModel.updateDeepShortcutCounts(this.mPackageName, this.mShortcuts, this.mUser);
            bindDeepShortcuts(bgDataModel);
        }
    }
}
