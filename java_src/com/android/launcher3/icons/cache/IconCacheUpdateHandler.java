package com.android.launcher3.icons.cache;

import android.content.pm.PackageInfo;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.SparseBooleanArray;
import com.android.launcher3.icons.IconCache;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.Stack;
/* loaded from: classes.dex */
public final class IconCacheUpdateHandler {
    private static final Object ICON_UPDATE_TOKEN = new Object();
    private final BaseIconCache mIconCache;
    private final ArrayMap mPackagesToIgnore = new ArrayMap();
    private final SparseBooleanArray mItemsToDelete = new SparseBooleanArray();
    private boolean mFilterMode = true;
    private final HashMap mPkgInfoMap = new HashMap();

    /* loaded from: classes.dex */
    public interface OnUpdateCallback {
        void onPackageIconsUpdated(UserHandle userHandle, HashSet hashSet);
    }

    /* loaded from: classes.dex */
    final class SerializedIconUpdateTask implements Runnable {
        private final Stack mAppsToAdd;
        private final Stack mAppsToUpdate;
        private final CachingLogic mCachingLogic;
        private final OnUpdateCallback mOnUpdateCallback;
        private final HashSet mUpdatedPackages = new HashSet();
        private final UserHandle mUserHandle;
        private final long mUserSerial;

        public SerializedIconUpdateTask(long j4, UserHandle userHandle, Stack stack, Stack stack2, CachingLogic cachingLogic, OnUpdateCallback onUpdateCallback) {
            this.mUserHandle = userHandle;
            this.mUserSerial = j4;
            this.mAppsToAdd = stack;
            this.mAppsToUpdate = stack2;
            this.mCachingLogic = cachingLogic;
            this.mOnUpdateCallback = onUpdateCallback;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.mAppsToUpdate.isEmpty()) {
                if (this.mAppsToAdd.isEmpty()) {
                    return;
                }
                Object pop = this.mAppsToAdd.pop();
                PackageInfo packageInfo = (PackageInfo) IconCacheUpdateHandler.this.mPkgInfoMap.get(this.mCachingLogic.getComponent(pop).getPackageName());
                if (packageInfo != null) {
                    IconCacheUpdateHandler.this.mIconCache.addIconToDBAndMemCache(pop, this.mCachingLogic, packageInfo, this.mUserSerial, false);
                }
                if (this.mAppsToAdd.isEmpty()) {
                    return;
                }
                scheduleNext();
                return;
            }
            Object pop2 = this.mAppsToUpdate.pop();
            String packageName = this.mCachingLogic.getComponent(pop2).getPackageName();
            IconCacheUpdateHandler.this.mIconCache.addIconToDBAndMemCache(pop2, this.mCachingLogic, (PackageInfo) IconCacheUpdateHandler.this.mPkgInfoMap.get(packageName), this.mUserSerial, true);
            this.mUpdatedPackages.add(packageName);
            if (this.mAppsToUpdate.isEmpty() && !this.mUpdatedPackages.isEmpty()) {
                this.mOnUpdateCallback.onPackageIconsUpdated(this.mUserHandle, this.mUpdatedPackages);
            }
            scheduleNext();
        }

        public final void scheduleNext() {
            IconCacheUpdateHandler.this.mIconCache.mWorkerHandler.postAtTime(this, IconCacheUpdateHandler.ICON_UPDATE_TOKEN, SystemClock.uptimeMillis() + 1);
        }
    }

    public IconCacheUpdateHandler(IconCache iconCache) {
        this.mIconCache = iconCache;
        iconCache.mWorkerHandler.removeCallbacksAndMessages(ICON_UPDATE_TOKEN);
        for (PackageInfo packageInfo : iconCache.mPackageManager.getInstalledPackages(8192)) {
            this.mPkgInfoMap.put(packageInfo.packageName, packageInfo);
        }
    }

    public final void addPackagesToIgnore(String str, UserHandle userHandle) {
        ArrayMap arrayMap = this.mPackagesToIgnore;
        Set set = (Set) arrayMap.get(userHandle);
        if (set == null) {
            set = new HashSet();
            arrayMap.put(userHandle, set);
        }
        set.add(str);
    }

    public final void finish() {
        StringBuilder sb = new StringBuilder("rowid IN (");
        SparseBooleanArray sparseBooleanArray = this.mItemsToDelete;
        int size = sparseBooleanArray.size();
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            if (sparseBooleanArray.valueAt(i5)) {
                if (i4 > 0) {
                    sb.append(", ");
                }
                sb.append(sparseBooleanArray.keyAt(i5));
                i4++;
            }
        }
        sb.append(')');
        if (i4 > 0) {
            this.mIconCache.mIconDb.delete(sb.toString(), null);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:88:0x01a7
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public final void updateIcons(java.util.List r28, com.android.launcher3.icons.cache.CachingLogic r29, com.android.launcher3.icons.cache.IconCacheUpdateHandler.OnUpdateCallback r30) {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.cache.IconCacheUpdateHandler.updateIcons(java.util.List, com.android.launcher3.icons.cache.CachingLogic, com.android.launcher3.icons.cache.IconCacheUpdateHandler$OnUpdateCallback):void");
    }
}
