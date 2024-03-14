package com.android.launcher3.model;

import android.os.UserHandle;
import android.os.UserManager;
import android.util.LongSparseArray;
import android.util.SparseBooleanArray;
import com.android.launcher3.pm.UserCache;
/* loaded from: classes.dex */
public final class UserManagerState {
    public final LongSparseArray allUsers = new LongSparseArray();
    private final LongSparseArray mQuietUsersSerialNoMap = new LongSparseArray();
    private final SparseBooleanArray mQuietUsersHashCodeMap = new SparseBooleanArray();

    public final void init(UserCache userCache, UserManager userManager) {
        for (UserHandle userHandle : userManager.getUserProfiles()) {
            long serialNumberForUser = userCache.getSerialNumberForUser(userHandle);
            boolean isQuietModeEnabled = userManager.isQuietModeEnabled(userHandle);
            this.allUsers.put(serialNumberForUser, userHandle);
            this.mQuietUsersHashCodeMap.put(userHandle.hashCode(), isQuietModeEnabled);
            this.mQuietUsersSerialNoMap.put(serialNumberForUser, Boolean.valueOf(isQuietModeEnabled));
        }
    }

    public final boolean isAnyProfileQuietModeEnabled() {
        SparseBooleanArray sparseBooleanArray = this.mQuietUsersHashCodeMap;
        for (int size = sparseBooleanArray.size() - 1; size >= 0; size--) {
            if (sparseBooleanArray.valueAt(size)) {
                return true;
            }
        }
        return false;
    }

    public final boolean isUserQuiet(long j4) {
        return ((Boolean) this.mQuietUsersSerialNoMap.get(j4)).booleanValue();
    }

    public final boolean isUserQuiet(UserHandle userHandle) {
        return this.mQuietUsersHashCodeMap.get(userHandle.hashCode());
    }
}
