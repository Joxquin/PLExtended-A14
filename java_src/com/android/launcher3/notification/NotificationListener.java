package com.android.launcher3.notification;

import P0.c;
import P0.h;
import P0.i;
import android.app.Notification;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import android.util.Pair;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.SettingsCache;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public class NotificationListener extends NotificationListenerService {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4912d = 0;
    private static boolean sIsConnected;
    private static NotificationListener sNotificationListenerInstance;
    private static final ArraySet sNotificationsChangedListeners = new ArraySet();
    private String mLastKeyDismissedByLauncher;
    private c mNotificationSettingsChangedListener;
    private SettingsCache mSettingsCache;
    private final NotificationListenerService.Ranking mTempRanking = new NotificationListenerService.Ranking();
    private final Map mNotificationGroupMap = new HashMap();
    private final Map mNotificationGroupKeyMap = new HashMap();
    private final Handler mWorkerHandler = new Handler(Executors.MODEL_EXECUTOR.getLooper(), new Handler.Callback(this) { // from class: P0.d

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ NotificationListener f1531e;

        {
            this.f1531e = this;
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            switch (r2) {
                case 0:
                    return NotificationListener.a(this.f1531e, message);
                default:
                    NotificationListener.d(this.f1531e, message);
                    return true;
            }
        }
    });
    private final Handler mUiHandler = new Handler(Looper.getMainLooper(), new Handler.Callback(this) { // from class: P0.d

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ NotificationListener f1531e;

        {
            this.f1531e = this;
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            switch (r2) {
                case 0:
                    return NotificationListener.a(this.f1531e, message);
                default:
                    NotificationListener.d(this.f1531e, message);
                    return true;
            }
        }
    });

    /* loaded from: classes.dex */
    public interface NotificationsChangedListener {
        void onNotificationFullRefresh(List list);

        void onNotificationPosted(PackageUserKey packageUserKey, NotificationKeyData notificationKeyData);

        void onNotificationRemoved(PackageUserKey packageUserKey, NotificationKeyData notificationKeyData);
    }

    public NotificationListener() {
        sNotificationListenerInstance = this;
    }

    public static boolean a(final NotificationListener notificationListener, Message message) {
        notificationListener.getClass();
        int i4 = message.what;
        if (i4 == 1) {
            StatusBarNotification statusBarNotification = (StatusBarNotification) message.obj;
            notificationListener.mUiHandler.obtainMessage(notificationListener.notificationIsValidForUI(statusBarNotification) ? 1 : 2, Pair.create(new PackageUserKey(statusBarNotification.getPackageName(), statusBarNotification.getUser()), NotificationKeyData.fromNotification(statusBarNotification))).sendToTarget();
            return true;
        } else if (i4 == 2) {
            StatusBarNotification statusBarNotification2 = (StatusBarNotification) message.obj;
            notificationListener.mUiHandler.obtainMessage(2, Pair.create(new PackageUserKey(statusBarNotification2.getPackageName(), statusBarNotification2.getUser()), NotificationKeyData.fromNotification(statusBarNotification2))).sendToTarget();
            NotificationGroup notificationGroup = (NotificationGroup) ((HashMap) notificationListener.mNotificationGroupMap).get(statusBarNotification2.getGroupKey());
            String key = statusBarNotification2.getKey();
            if (notificationGroup != null) {
                notificationGroup.removeChildKey(key);
                if (notificationGroup.isEmpty()) {
                    if (key.equals(notificationListener.mLastKeyDismissedByLauncher)) {
                        notificationListener.cancelNotification(notificationGroup.getGroupSummaryKey());
                    }
                    ((HashMap) notificationListener.mNotificationGroupMap).remove(statusBarNotification2.getGroupKey());
                }
            }
            if (key.equals(notificationListener.mLastKeyDismissedByLauncher)) {
                notificationListener.mLastKeyDismissedByLauncher = null;
                return true;
            }
            return true;
        } else if (i4 == 3) {
            notificationListener.mUiHandler.obtainMessage(message.what, sIsConnected ? (List) Arrays.stream(notificationListener.getActiveNotificationsSafely(null)).filter(new Predicate() { // from class: P0.f
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean notificationIsValidForUI;
                    notificationIsValidForUI = NotificationListener.this.notificationIsValidForUI((StatusBarNotification) obj);
                    return notificationIsValidForUI;
                }
            }).collect(Collectors.toList()) : new ArrayList()).sendToTarget();
            return true;
        } else if (i4 == 4) {
            String str = (String) message.obj;
            notificationListener.mLastKeyDismissedByLauncher = str;
            notificationListener.cancelNotification(str);
            return true;
        } else {
            if (i4 != 5) {
                return false;
            }
            for (StatusBarNotification statusBarNotification3 : notificationListener.getActiveNotificationsSafely(((NotificationListenerService.RankingMap) message.obj).getOrderedKeys())) {
                notificationListener.updateGroupKeyIfNecessary(statusBarNotification3);
            }
            return true;
        }
    }

    public static void addNotificationsChangedListener(final PopupDataProvider popupDataProvider) {
        if (popupDataProvider == null) {
            return;
        }
        sNotificationsChangedListeners.add(popupDataProvider);
        NotificationListener instanceIfConnected = getInstanceIfConnected();
        if (instanceIfConnected != null) {
            instanceIfConnected.mWorkerHandler.obtainMessage(3).sendToTarget();
        } else {
            Executors.MODEL_EXECUTOR.submit(new Callable() { // from class: P0.e
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    int i4 = NotificationListener.f4912d;
                    LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
                    final NotificationListener.NotificationsChangedListener notificationsChangedListener = popupDataProvider;
                    return looperExecutor.submit(new Runnable() { // from class: P0.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            NotificationListener.NotificationsChangedListener notificationsChangedListener2 = NotificationListener.NotificationsChangedListener.this;
                            int i5 = NotificationListener.f4912d;
                            notificationsChangedListener2.onNotificationFullRefresh(Collections.emptyList());
                        }
                    });
                }
            });
        }
    }

    public static void b(NotificationListener notificationListener, boolean z4) {
        notificationListener.getClass();
        if (z4 || !sIsConnected) {
            return;
        }
        notificationListener.requestUnbind();
    }

    public static void d(NotificationListener notificationListener, Message message) {
        notificationListener.getClass();
        int i4 = message.what;
        if (i4 == 1) {
            ArraySet arraySet = sNotificationsChangedListeners;
            if (arraySet.size() > 0) {
                Pair pair = (Pair) message.obj;
                Iterator it = arraySet.iterator();
                while (it.hasNext()) {
                    ((NotificationsChangedListener) it.next()).onNotificationPosted((PackageUserKey) pair.first, (NotificationKeyData) pair.second);
                }
            }
        } else if (i4 == 2) {
            ArraySet arraySet2 = sNotificationsChangedListeners;
            if (arraySet2.size() > 0) {
                Pair pair2 = (Pair) message.obj;
                Iterator it2 = arraySet2.iterator();
                while (it2.hasNext()) {
                    ((NotificationsChangedListener) it2.next()).onNotificationRemoved((PackageUserKey) pair2.first, (NotificationKeyData) pair2.second);
                }
            }
        } else if (i4 != 3) {
        } else {
            ArraySet arraySet3 = sNotificationsChangedListeners;
            if (arraySet3.size() > 0) {
                Iterator it3 = arraySet3.iterator();
                while (it3.hasNext()) {
                    ((NotificationsChangedListener) it3.next()).onNotificationFullRefresh((List) message.obj);
                }
            }
        }
    }

    private StatusBarNotification[] getActiveNotificationsSafely(String[] strArr) {
        StatusBarNotification[] statusBarNotificationArr;
        try {
            statusBarNotificationArr = getActiveNotifications(strArr);
        } catch (SecurityException unused) {
            Log.e("NotificationListener", "SecurityException: failed to fetch notifications");
            statusBarNotificationArr = null;
        }
        return statusBarNotificationArr == null ? new StatusBarNotification[0] : statusBarNotificationArr;
    }

    public static NotificationListener getInstanceIfConnected() {
        if (sIsConnected) {
            return sNotificationListenerInstance;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean notificationIsValidForUI(StatusBarNotification statusBarNotification) {
        Notification notification = statusBarNotification.getNotification();
        updateGroupKeyIfNecessary(statusBarNotification);
        getCurrentRanking().getRanking(statusBarNotification.getKey(), this.mTempRanking);
        if (this.mTempRanking.canShowBadge()) {
            if (!this.mTempRanking.getChannel().getId().equals("miscellaneous") || (notification.flags & 2) == 0) {
                return (((notification.flags & 512) != 0) || (TextUtils.isEmpty(notification.extras.getCharSequence("android.title")) && TextUtils.isEmpty(notification.extras.getCharSequence("android.text")))) ? false : true;
            }
            return false;
        }
        return false;
    }

    public static void removeNotificationsChangedListener(PopupDataProvider popupDataProvider) {
        if (popupDataProvider != null) {
            sNotificationsChangedListeners.remove(popupDataProvider);
        }
    }

    private void updateGroupKeyIfNecessary(StatusBarNotification statusBarNotification) {
        String key = statusBarNotification.getKey();
        String str = (String) ((HashMap) this.mNotificationGroupKeyMap).get(key);
        String groupKey = statusBarNotification.getGroupKey();
        if (str == null || !str.equals(groupKey)) {
            ((HashMap) this.mNotificationGroupKeyMap).put(key, groupKey);
            if (str != null && ((HashMap) this.mNotificationGroupMap).containsKey(str)) {
                NotificationGroup notificationGroup = (NotificationGroup) ((HashMap) this.mNotificationGroupMap).get(str);
                notificationGroup.removeChildKey(key);
                if (notificationGroup.isEmpty()) {
                    ((HashMap) this.mNotificationGroupMap).remove(str);
                }
            }
        }
        if (!statusBarNotification.isGroup() || groupKey == null) {
            return;
        }
        NotificationGroup notificationGroup2 = (NotificationGroup) ((HashMap) this.mNotificationGroupMap).get(groupKey);
        if (notificationGroup2 == null) {
            notificationGroup2 = new NotificationGroup();
            ((HashMap) this.mNotificationGroupMap).put(groupKey, notificationGroup2);
        }
        if ((statusBarNotification.getNotification().flags & 512) != 0) {
            notificationGroup2.setGroupSummaryKey(key);
        } else {
            notificationGroup2.addChildKey(key);
        }
    }

    public final void cancelNotificationFromLauncher(String str) {
        this.mWorkerHandler.obtainMessage(4, str).sendToTarget();
    }

    public final List getNotificationsForKeys(List list) {
        return Arrays.asList(getActiveNotificationsSafely((String[]) list.stream().map(new h()).toArray(new i())));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [P0.c, com.android.launcher3.util.SettingsCache$OnChangeListener] */
    @Override // android.service.notification.NotificationListenerService
    public final void onListenerConnected() {
        super.onListenerConnected();
        sIsConnected = true;
        SettingsCache settingsCache = (SettingsCache) SettingsCache.INSTANCE.get(this);
        this.mSettingsCache = settingsCache;
        ?? r22 = new SettingsCache.OnChangeListener() { // from class: P0.c
            @Override // com.android.launcher3.util.SettingsCache.OnChangeListener
            public final void onSettingsChanged(boolean z4) {
                NotificationListener.b(NotificationListener.this, z4);
            }
        };
        this.mNotificationSettingsChangedListener = r22;
        Uri uri = SettingsCache.NOTIFICATION_BADGING_URI;
        settingsCache.register(uri, r22);
        if (!this.mSettingsCache.getValue(1, uri) && sIsConnected) {
            requestUnbind();
        }
        this.mWorkerHandler.obtainMessage(3).sendToTarget();
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onListenerDisconnected() {
        super.onListenerDisconnected();
        sIsConnected = false;
        this.mSettingsCache.unregister(SettingsCache.NOTIFICATION_BADGING_URI, this.mNotificationSettingsChangedListener);
        this.mWorkerHandler.obtainMessage(3).sendToTarget();
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onNotificationPosted(StatusBarNotification statusBarNotification) {
        if (statusBarNotification != null) {
            this.mWorkerHandler.obtainMessage(1, statusBarNotification).sendToTarget();
        }
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onNotificationRankingUpdate(NotificationListenerService.RankingMap rankingMap) {
        this.mWorkerHandler.obtainMessage(5, rankingMap).sendToTarget();
    }

    @Override // android.service.notification.NotificationListenerService
    public final void onNotificationRemoved(StatusBarNotification statusBarNotification) {
        if (statusBarNotification != null) {
            this.mWorkerHandler.obtainMessage(2, statusBarNotification).sendToTarget();
        }
    }
}
