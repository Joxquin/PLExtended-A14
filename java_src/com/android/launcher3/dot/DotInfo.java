package com.android.launcher3.dot;

import com.android.launcher3.notification.NotificationKeyData;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class DotInfo {
    private final List mNotificationKeys = new ArrayList();
    private int mTotalCount;

    public final boolean addOrUpdateNotificationKey(NotificationKeyData notificationKeyData) {
        List list = this.mNotificationKeys;
        int indexOf = ((ArrayList) list).indexOf(notificationKeyData);
        NotificationKeyData notificationKeyData2 = indexOf == -1 ? null : (NotificationKeyData) ((ArrayList) list).get(indexOf);
        if (notificationKeyData2 == null) {
            boolean add = ((ArrayList) list).add(notificationKeyData);
            if (add) {
                this.mTotalCount += notificationKeyData.count;
            }
            return add;
        }
        int i4 = notificationKeyData2.count;
        int i5 = notificationKeyData.count;
        if (i4 == i5) {
            return false;
        }
        this.mTotalCount = (this.mTotalCount - i4) + i5;
        notificationKeyData2.count = i5;
        return true;
    }

    public int getNotificationCount() {
        return Math.min(this.mTotalCount, 999);
    }

    public final List getNotificationKeys() {
        return this.mNotificationKeys;
    }

    public final boolean removeNotificationKey(NotificationKeyData notificationKeyData) {
        boolean remove = ((ArrayList) this.mNotificationKeys).remove(notificationKeyData);
        if (remove) {
            this.mTotalCount -= notificationKeyData.count;
        }
        return remove;
    }

    public final String toString() {
        return Integer.toString(this.mTotalCount);
    }
}
