package com.android.launcher3.notification;

import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public final class NotificationGroup {
    private Set mChildKeys = new HashSet();
    private String mGroupSummaryKey;

    public final void addChildKey(String str) {
        ((HashSet) this.mChildKeys).add(str);
    }

    public final String getGroupSummaryKey() {
        return this.mGroupSummaryKey;
    }

    public final boolean isEmpty() {
        return ((HashSet) this.mChildKeys).isEmpty();
    }

    public final void removeChildKey(String str) {
        ((HashSet) this.mChildKeys).remove(str);
    }

    public final void setGroupSummaryKey(String str) {
        this.mGroupSummaryKey = str;
    }
}
