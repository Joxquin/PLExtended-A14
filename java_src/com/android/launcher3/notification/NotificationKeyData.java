package com.android.launcher3.notification;

import O0.f;
import P0.a;
import P0.b;
import android.app.Notification;
import android.service.notification.StatusBarNotification;
import com.android.launcher3.Utilities;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class NotificationKeyData {
    public int count;
    public final String notificationKey;
    public final String[] personKeysFromNotification;
    public final String shortcutId;

    private NotificationKeyData(String str, String str2, int i4, String[] strArr) {
        this.notificationKey = str;
        this.shortcutId = str2;
        this.count = Math.max(1, i4);
        this.personKeysFromNotification = strArr;
    }

    public static NotificationKeyData fromNotification(StatusBarNotification statusBarNotification) {
        Notification notification = statusBarNotification.getNotification();
        String key = statusBarNotification.getKey();
        String shortcutId = notification.getShortcutId();
        int i4 = notification.number;
        ArrayList parcelableArrayList = notification.extras.getParcelableArrayList("android.people.list");
        return new NotificationKeyData(key, shortcutId, i4, (parcelableArrayList == null || parcelableArrayList.isEmpty()) ? Utilities.EMPTY_STRING_ARRAY : (String[]) parcelableArrayList.stream().filter(new a()).map(new f()).sorted().toArray(new b()));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof NotificationKeyData) {
            return ((NotificationKeyData) obj).notificationKey.equals(this.notificationKey);
        }
        return false;
    }
}
