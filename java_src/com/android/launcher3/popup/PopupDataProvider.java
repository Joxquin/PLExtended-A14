package com.android.launcher3.popup;

import android.content.ComponentName;
import android.service.notification.StatusBarNotification;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.ShortcutUtil;
import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import com.android.launcher3.widget.model.WidgetsListContentEntry;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public final class PopupDataProvider implements NotificationListener.NotificationsChangedListener {
    private final Consumer mNotificationDotsChangeListener;
    private HashMap mDeepShortcutMap = new HashMap();
    private Map mPackageUserToDotInfos = new HashMap();
    private List mAllWidgets = List.of();
    private List mRecommendedWidgets = List.of();
    private PopupDataChangeListener mChangeListener = PopupDataChangeListener.INSTANCE;

    /* loaded from: classes.dex */
    public interface PopupDataChangeListener {
        public static final PopupDataChangeListener INSTANCE = new AnonymousClass1();

        /* renamed from: com.android.launcher3.popup.PopupDataProvider$PopupDataChangeListener$1  reason: invalid class name */
        /* loaded from: classes.dex */
        final class AnonymousClass1 implements PopupDataChangeListener {
        }

        default void onNotificationDotsUpdated(j jVar) {
        }

        default void onRecommendedWidgetsBound() {
        }

        default void onWidgetsBound() {
        }

        default void trimNotifications(Map map) {
        }
    }

    public PopupDataProvider(Consumer consumer) {
        this.mNotificationDotsChangeListener = consumer;
    }

    public static List getNotificationsForItem(ItemInfo itemInfo, List list) {
        final String shortcutIdIfPinnedShortcut = ShortcutUtil.getShortcutIdIfPinnedShortcut(itemInfo);
        if (shortcutIdIfPinnedShortcut == null) {
            return list;
        }
        final String[] personKeysIfPinnedShortcut = ShortcutUtil.getPersonKeysIfPinnedShortcut(itemInfo);
        return (List) list.stream().filter(new Predicate() { // from class: com.android.launcher3.popup.l
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                String str = shortcutIdIfPinnedShortcut;
                String[] strArr = personKeysIfPinnedShortcut;
                NotificationKeyData notificationKeyData = (NotificationKeyData) obj;
                String str2 = notificationKeyData.shortcutId;
                if (str2 != null) {
                    return str2.equals(str);
                }
                String[] strArr2 = notificationKeyData.personKeysFromNotification;
                if (strArr2.length != 0) {
                    return Arrays.equals(strArr2, strArr);
                }
                return false;
            }
        }).collect(Collectors.toList());
    }

    public final void dump(String str, PrintWriter printWriter) {
        printWriter.println(str + "PopupDataProvider:");
        printWriter.println(str + "\tmPackageUserToDotInfos:" + this.mPackageUserToDotInfos);
    }

    public final List getAllWidgets() {
        return this.mAllWidgets;
    }

    public final DotInfo getDotInfoForItem(ItemInfo itemInfo) {
        if (ShortcutUtil.supportsShortcuts(itemInfo)) {
            DotInfo dotInfo = (DotInfo) ((HashMap) this.mPackageUserToDotInfos).get(PackageUserKey.fromItemInfo(itemInfo));
            if (dotInfo == null || getNotificationsForItem(itemInfo, dotInfo.getNotificationKeys()).isEmpty()) {
                return null;
            }
            return dotInfo;
        }
        return null;
    }

    public final List getRecommendedWidgets() {
        final HashMap hashMap = new HashMap();
        this.mAllWidgets.stream().filter(new Predicate() { // from class: com.android.launcher3.popup.g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (r1) {
                    case 0:
                        return ((WidgetsListBaseEntry) obj) instanceof WidgetsListContentEntry;
                    default:
                        return Objects.nonNull((WidgetItem) obj);
                }
            }
        }).forEach(new h(hashMap, 0));
        return (List) this.mRecommendedWidgets.stream().map(new Function() { // from class: com.android.launcher3.popup.i
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ItemInfo itemInfo = (ItemInfo) obj;
                return (WidgetItem) hashMap.get(new ComponentKey(itemInfo.getTargetComponent(), itemInfo.user));
            }
        }).filter(new Predicate() { // from class: com.android.launcher3.popup.g
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                switch (r1) {
                    case 0:
                        return ((WidgetsListBaseEntry) obj) instanceof WidgetsListContentEntry;
                    default:
                        return Objects.nonNull((WidgetItem) obj);
                }
            }
        }).collect(Collectors.toList());
    }

    public final WidgetsListContentEntry getSelectedAppWidgets(PackageUserKey packageUserKey) {
        return (WidgetsListContentEntry) this.mAllWidgets.stream().filter(new j(4, packageUserKey)).findAny().orElse(null);
    }

    public final int getShortcutCountForItem(ItemInfo itemInfo) {
        ComponentName targetComponent;
        Integer num;
        if (!ShortcutUtil.supportsDeepShortcuts(itemInfo) || (targetComponent = itemInfo.getTargetComponent()) == null || (num = (Integer) this.mDeepShortcutMap.get(new ComponentKey(targetComponent, itemInfo.user))) == null) {
            return 0;
        }
        return num.intValue();
    }

    public final List getWidgetsForPackageUser(PackageUserKey packageUserKey) {
        return (List) this.mAllWidgets.stream().filter(new j(0, packageUserKey)).flatMap(new k()).filter(new j(1, packageUserKey)).collect(Collectors.toList());
    }

    @Override // com.android.launcher3.notification.NotificationListener.NotificationsChangedListener
    public final void onNotificationFullRefresh(List list) {
        if (list == null) {
            return;
        }
        HashMap hashMap = new HashMap(this.mPackageUserToDotInfos);
        ((HashMap) this.mPackageUserToDotInfos).clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            StatusBarNotification statusBarNotification = (StatusBarNotification) it.next();
            PackageUserKey packageUserKey = new PackageUserKey(statusBarNotification.getPackageName(), statusBarNotification.getUser());
            DotInfo dotInfo = (DotInfo) ((HashMap) this.mPackageUserToDotInfos).get(packageUserKey);
            if (dotInfo == null) {
                dotInfo = new DotInfo();
                ((HashMap) this.mPackageUserToDotInfos).put(packageUserKey, dotInfo);
            }
            dotInfo.addOrUpdateNotificationKey(NotificationKeyData.fromNotification(statusBarNotification));
        }
        for (PackageUserKey packageUserKey2 : ((HashMap) this.mPackageUserToDotInfos).keySet()) {
            DotInfo dotInfo2 = (DotInfo) hashMap.get(packageUserKey2);
            DotInfo dotInfo3 = (DotInfo) ((HashMap) this.mPackageUserToDotInfos).get(packageUserKey2);
            if (dotInfo2 == null || dotInfo2.getNotificationCount() != dotInfo3.getNotificationCount()) {
                hashMap.put(packageUserKey2, dotInfo3);
            } else {
                hashMap.remove(packageUserKey2);
            }
        }
        if (!hashMap.isEmpty()) {
            j jVar = new j(5, hashMap);
            this.mNotificationDotsChangeListener.accept(jVar);
            this.mChangeListener.onNotificationDotsUpdated(jVar);
        }
        this.mChangeListener.trimNotifications(hashMap);
    }

    @Override // com.android.launcher3.notification.NotificationListener.NotificationsChangedListener
    public final void onNotificationPosted(PackageUserKey packageUserKey, NotificationKeyData notificationKeyData) {
        DotInfo dotInfo = (DotInfo) ((HashMap) this.mPackageUserToDotInfos).get(packageUserKey);
        if (dotInfo == null) {
            dotInfo = new DotInfo();
            ((HashMap) this.mPackageUserToDotInfos).put(packageUserKey, dotInfo);
        }
        if (dotInfo.addOrUpdateNotificationKey(notificationKeyData)) {
            Objects.requireNonNull(packageUserKey);
            j jVar = new j(2, packageUserKey);
            this.mNotificationDotsChangeListener.accept(jVar);
            this.mChangeListener.onNotificationDotsUpdated(jVar);
        }
    }

    @Override // com.android.launcher3.notification.NotificationListener.NotificationsChangedListener
    public final void onNotificationRemoved(PackageUserKey packageUserKey, NotificationKeyData notificationKeyData) {
        DotInfo dotInfo = (DotInfo) ((HashMap) this.mPackageUserToDotInfos).get(packageUserKey);
        if (dotInfo == null || !dotInfo.removeNotificationKey(notificationKeyData)) {
            return;
        }
        if (((ArrayList) dotInfo.getNotificationKeys()).size() == 0) {
            ((HashMap) this.mPackageUserToDotInfos).remove(packageUserKey);
        }
        Objects.requireNonNull(packageUserKey);
        j jVar = new j(3, packageUserKey);
        this.mNotificationDotsChangeListener.accept(jVar);
        this.mChangeListener.onNotificationDotsUpdated(jVar);
        this.mChangeListener.trimNotifications(this.mPackageUserToDotInfos);
    }

    public final void setAllWidgets(List list) {
        this.mAllWidgets = list;
        this.mChangeListener.onWidgetsBound();
    }

    public final void setChangeListener(PopupDataChangeListener popupDataChangeListener) {
        if (popupDataChangeListener == null) {
            popupDataChangeListener = PopupDataChangeListener.INSTANCE;
        }
        this.mChangeListener = popupDataChangeListener;
    }

    public final void setDeepShortcutMap(HashMap hashMap) {
        this.mDeepShortcutMap = hashMap;
    }

    public final void setRecommendedWidgets(List list) {
        this.mRecommendedWidgets = list;
        this.mChangeListener.onRecommendedWidgetsBound();
    }
}
