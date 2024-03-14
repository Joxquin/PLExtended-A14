package com.android.launcher3.popup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.os.Handler;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationInfo;
import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.shortcuts.ShortcutRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class PopupPopulator {
    static final int NUM_DYNAMIC = 2;
    private static final Comparator SHORTCUT_RANK_COMPARATOR = new AnonymousClass1();

    /* renamed from: com.android.launcher3.popup.PopupPopulator$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements Comparator {
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            ShortcutInfo shortcutInfo = (ShortcutInfo) obj;
            ShortcutInfo shortcutInfo2 = (ShortcutInfo) obj2;
            if (!shortcutInfo.isDeclaredInManifest() || shortcutInfo2.isDeclaredInManifest()) {
                if (shortcutInfo.isDeclaredInManifest() || !shortcutInfo2.isDeclaredInManifest()) {
                    return Integer.compare(shortcutInfo.getRank(), shortcutInfo2.getRank());
                }
                return 1;
            }
            return -1;
        }
    }

    public static void a(List list, final Context context, final ItemInfo itemInfo, Handler handler, final PopupContainerWithArrow popupContainerWithArrow, UserHandle userHandle, ComponentName componentName, List list2) {
        if (!list.isEmpty()) {
            NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
            final List emptyList = instanceIfConnected == null ? Collections.emptyList() : (List) instanceIfConnected.getNotificationsForKeys(list).stream().map(new Function() { // from class: com.android.launcher3.popup.n
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new NotificationInfo(context, (StatusBarNotification) obj, itemInfo);
                }
            }).collect(Collectors.toList());
            handler.post(new Runnable() { // from class: com.android.launcher3.popup.o
                @Override // java.lang.Runnable
                public final void run() {
                    PopupContainerWithArrow.this.applyNotificationInfos(emptyList);
                }
            });
        }
        ShortcutRequest shortcutRequest = new ShortcutRequest(context, userHandle);
        shortcutRequest.withContainer(componentName);
        ArrayList query = shortcutRequest.query(9);
        String str = list.isEmpty() ? null : ((NotificationKeyData) list.get(0)).shortcutId;
        if (str != null) {
            Iterator it = query.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((ShortcutInfo) it.next()).getId().equals(str)) {
                        it.remove();
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        Collections.sort(query, SHORTCUT_RANK_COMPARATOR);
        if (query.size() > 4) {
            ArrayList arrayList = new ArrayList(4);
            int size = query.size();
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                ShortcutInfo shortcutInfo = (ShortcutInfo) query.get(i5);
                int size2 = arrayList.size();
                if (size2 < 4) {
                    arrayList.add(shortcutInfo);
                    if (shortcutInfo.isDynamic()) {
                        i4++;
                    }
                } else if (shortcutInfo.isDynamic() && i4 < 2) {
                    i4++;
                    arrayList.remove(size2 - i4);
                    arrayList.add(shortcutInfo);
                }
            }
            query = arrayList;
        }
        IconCache iconCache = LauncherAppState.getInstance(context).getIconCache();
        for (int i6 = 0; i6 < query.size() && i6 < list2.size(); i6++) {
            final ShortcutInfo shortcutInfo2 = (ShortcutInfo) query.get(i6);
            final WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(context, shortcutInfo2);
            iconCache.getShortcutIcon(workspaceItemInfo, shortcutInfo2);
            workspaceItemInfo.rank = i6;
            workspaceItemInfo.container = -107;
            final DeepShortcutView deepShortcutView = (DeepShortcutView) list2.get(i6);
            handler.post(new Runnable() { // from class: com.android.launcher3.popup.p
                @Override // java.lang.Runnable
                public final void run() {
                    DeepShortcutView.this.applyShortcutInfo(workspaceItemInfo, shortcutInfo2, popupContainerWithArrow);
                }
            });
        }
    }
}
