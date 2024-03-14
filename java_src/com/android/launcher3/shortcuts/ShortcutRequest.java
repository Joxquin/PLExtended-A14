package com.android.launcher3.shortcuts;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherApps;
import android.os.UserHandle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class ShortcutRequest {
    private final Context mContext;
    private final UserHandle mUserHandle;
    private final LauncherApps.ShortcutQuery mQuery = new LauncherApps.ShortcutQuery();
    boolean mFailed = false;

    public ShortcutRequest(Context context, UserHandle userHandle) {
        this.mContext = context;
        this.mUserHandle = userHandle;
    }

    public final void forPackage(String str, List list) {
        if (str != null) {
            LauncherApps.ShortcutQuery shortcutQuery = this.mQuery;
            shortcutQuery.setPackage(str);
            shortcutQuery.setShortcutIds(list);
        }
    }

    public final QueryResult query(int i4) {
        if (this.mFailed) {
            return QueryResult.DEFAULT;
        }
        LauncherApps.ShortcutQuery shortcutQuery = this.mQuery;
        shortcutQuery.setQueryFlags(i4);
        try {
            return new QueryResult(((LauncherApps) this.mContext.getSystemService(LauncherApps.class)).getShortcuts(shortcutQuery, this.mUserHandle));
        } catch (IllegalStateException | SecurityException e4) {
            Log.e("ShortcutRequest", "Failed to query for shortcuts", e4);
            return QueryResult.DEFAULT;
        }
    }

    public final void withContainer(ComponentName componentName) {
        if (componentName == null) {
            this.mFailed = true;
        } else {
            this.mQuery.setActivity(componentName);
        }
    }

    /* loaded from: classes.dex */
    public class QueryResult extends ArrayList {
        static final QueryResult DEFAULT = new QueryResult();
        private final boolean mWasSuccess;

        public QueryResult(List list) {
            super(list == null ? Collections.emptyList() : list);
            this.mWasSuccess = true;
        }

        public final boolean wasSuccess() {
            return this.mWasSuccess;
        }

        public QueryResult() {
            this.mWasSuccess = false;
        }
    }
}
