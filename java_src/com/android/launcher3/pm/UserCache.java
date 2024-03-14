package com.android.launcher3.pm;

import R0.d;
import R0.e;
import R0.h;
import R0.j;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.ArrayMap;
import com.android.launcher3.C0336e0;
import com.android.launcher3.Utilities;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final class UserCache implements SafeCloseable {
    public static final String ACTION_PROFILE_ADDED;
    public static final String ACTION_PROFILE_LOCKED;
    public static final String ACTION_PROFILE_REMOVED;
    public static final String ACTION_PROFILE_UNLOCKED;
    public static final MainThreadInitializedObject INSTANCE;
    private final Context mContext;
    private final List mUserEventListeners = new ArrayList();
    private final SimpleBroadcastReceiver mUserChangeReceiver = new SimpleBroadcastReceiver(new Consumer() { // from class: R0.f
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            UserCache.h(UserCache.this, (Intent) obj);
        }
    });
    private Map mUserToSerialMap = Collections.emptyMap();

    static {
        boolean z4 = Utilities.ATLEAST_U;
        ACTION_PROFILE_ADDED = z4 ? "android.intent.action.PROFILE_ADDED" : "android.intent.action.MANAGED_PROFILE_ADDED";
        ACTION_PROFILE_REMOVED = z4 ? "android.intent.action.PROFILE_REMOVED" : "android.intent.action.MANAGED_PROFILE_REMOVED";
        ACTION_PROFILE_UNLOCKED = z4 ? "android.intent.action.PROFILE_ACCESSIBLE" : "android.intent.action.MANAGED_PROFILE_UNLOCKED";
        ACTION_PROFILE_LOCKED = z4 ? "android.intent.action.PROFILE_INACCESSIBLE" : "android.intent.action.MANAGED_PROFILE_UNAVAILABLE";
        INSTANCE = new MainThreadInitializedObject(new d());
    }

    private UserCache(Context context) {
        this.mContext = context;
        Executors.MODEL_EXECUTOR.execute(new e(this, 1));
    }

    public static void b(UserCache userCache) {
        SimpleBroadcastReceiver simpleBroadcastReceiver = userCache.mUserChangeReceiver;
        Context context = userCache.mContext;
        simpleBroadcastReceiver.getClass();
        try {
            context.unregisterReceiver(simpleBroadcastReceiver);
        } catch (IllegalArgumentException unused) {
        }
    }

    public static /* synthetic */ UserCache c(Context context) {
        return new UserCache(context);
    }

    public static void d(UserCache userCache) {
        userCache.mUserChangeReceiver.register(userCache.mContext, "android.intent.action.MANAGED_PROFILE_AVAILABLE", "android.intent.action.MANAGED_PROFILE_UNAVAILABLE", ACTION_PROFILE_ADDED, ACTION_PROFILE_REMOVED, ACTION_PROFILE_UNLOCKED, ACTION_PROFILE_LOCKED);
        userCache.updateCache();
    }

    public static void h(UserCache userCache, Intent intent) {
        userCache.getClass();
        Executors.MODEL_EXECUTOR.execute(new e(userCache, 2));
        final UserHandle userHandle = (UserHandle) intent.getParcelableExtra("android.intent.extra.USER");
        if (userHandle == null) {
            return;
        }
        final String action = intent.getAction();
        ((ArrayList) userCache.mUserEventListeners).forEach(new Consumer() { // from class: R0.g
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((BiConsumer) obj).accept(userHandle, action);
            }
        });
    }

    public void updateCache() {
        UserManager userManager = (UserManager) this.mContext.getSystemService(UserManager.class);
        ArrayMap arrayMap = new ArrayMap();
        List<UserHandle> userProfiles = userManager.getUserProfiles();
        if (userProfiles != null) {
            for (UserHandle userHandle : userProfiles) {
                arrayMap.put(userHandle, Long.valueOf(userManager.getSerialNumberForUser(userHandle)));
            }
        }
        this.mUserToSerialMap = arrayMap;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [R0.h] */
    public final h addUserEventListener(final C0336e0 c0336e0) {
        ((ArrayList) this.mUserEventListeners).add(c0336e0);
        return new SafeCloseable() { // from class: R0.h
            @Override // java.lang.AutoCloseable
            public final void close() {
                ((ArrayList) UserCache.this.mUserEventListeners).remove(c0336e0);
            }
        };
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        Executors.MODEL_EXECUTOR.execute(new e(this, 0));
    }

    public final long getSerialNumberForUser(UserHandle userHandle) {
        Long l4 = (Long) this.mUserToSerialMap.get(userHandle);
        if (l4 == null) {
            return 0L;
        }
        return l4.longValue();
    }

    public final UserHandle getUserForSerialNumber(long j4) {
        final Long valueOf = Long.valueOf(j4);
        return (UserHandle) this.mUserToSerialMap.entrySet().stream().filter(new Predicate() { // from class: R0.i
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return valueOf.equals(((Map.Entry) obj).getValue());
            }
        }).findFirst().map(new j()).orElse(Process.myUserHandle());
    }

    public final List getUserProfiles() {
        return List.copyOf(this.mUserToSerialMap.keySet());
    }
}
