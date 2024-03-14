package com.android.launcher3.model;

import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.C0481n;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.ItemInfoMatcher;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class UserLockStateChangedTask extends BaseModelUpdateTask {
    private boolean mIsUserUnlocked;
    private final UserHandle mUser;

    public UserLockStateChangedTask(UserHandle userHandle, boolean z4) {
        this.mUser = userHandle;
        this.mIsUserUnlocked = z4;
    }

    public static /* synthetic */ void m(UserLockStateChangedTask userLockStateChangedTask, HashMap hashMap, HashSet hashSet, Context context, LauncherAppState launcherAppState, ArrayList arrayList, WorkspaceItemInfo workspaceItemInfo) {
        userLockStateChangedTask.getClass();
        if (workspaceItemInfo.itemType == 6) {
            if (userLockStateChangedTask.mIsUserUnlocked) {
                ShortcutKey fromItemInfo = ShortcutKey.fromItemInfo(workspaceItemInfo);
                ShortcutInfo shortcutInfo = (ShortcutInfo) hashMap.get(fromItemInfo);
                if (shortcutInfo == null) {
                    hashSet.add(fromItemInfo);
                    return;
                }
                workspaceItemInfo.runtimeStatusFlags &= -33;
                workspaceItemInfo.updateFromDeepShortcutInfo(context, shortcutInfo);
                launcherAppState.getIconCache().getShortcutIcon(workspaceItemInfo, shortcutInfo);
            } else {
                workspaceItemInfo.runtimeStatusFlags |= 32;
            }
            arrayList.add(workspaceItemInfo);
        }
    }

    @Override // com.android.launcher3.model.BaseModelUpdateTask
    public final void execute(final LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
        final Context context = launcherAppState.getContext();
        final HashMap hashMap = new HashMap();
        if (this.mIsUserUnlocked) {
            ShortcutRequest.QueryResult query = new ShortcutRequest(context, this.mUser).query(2);
            if (query.wasSuccess()) {
                Iterator it = query.iterator();
                while (it.hasNext()) {
                    ShortcutInfo shortcutInfo = (ShortcutInfo) it.next();
                    hashMap.put(ShortcutKey.fromInfo(shortcutInfo), shortcutInfo);
                }
            } else {
                this.mIsUserUnlocked = false;
            }
        }
        final ArrayList arrayList = new ArrayList();
        final HashSet hashSet = new HashSet();
        synchronized (bgDataModel) {
            bgDataModel.forAllWorkspaceItemInfos(this.mUser, new Consumer() { // from class: com.android.launcher3.model.i1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    UserLockStateChangedTask.m(UserLockStateChangedTask.this, hashMap, hashSet, context, launcherAppState, arrayList, (WorkspaceItemInfo) obj);
                }
            });
        }
        bindUpdatedWorkspaceItems(arrayList);
        if (!hashSet.isEmpty()) {
            int i4 = ItemInfoMatcher.f5271a;
            deleteAndBindComponentsRemoved(new C0481n(1, hashSet), "removed during unlock because it's no longer available (possibly due to clear data)");
        }
        Iterator it2 = bgDataModel.deepShortcutMap.keySet().iterator();
        while (it2.hasNext()) {
            if (((ComponentKey) it2.next()).user.equals(this.mUser)) {
                it2.remove();
            }
        }
        if (this.mIsUserUnlocked) {
            UserHandle userHandle = this.mUser;
            bgDataModel.updateDeepShortcutCounts(null, new ShortcutRequest(context, userHandle).query(11), userHandle);
        }
        bindDeepShortcuts(bgDataModel);
    }
}
