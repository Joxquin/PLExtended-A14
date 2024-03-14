package com.android.launcher3.util;

import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.os.UserManager;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class LockedUserState implements SafeCloseable {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(LockedUserState$Companion$INSTANCE$1.INSTANCE);
    private boolean isUserUnlocked;
    private final boolean isUserUnlockedAtLauncherStartup;
    private final Context mContext;
    private final RunnableList mUserUnlockedActions;
    private final SimpleBroadcastReceiver mUserUnlockedReceiver;

    /* loaded from: classes.dex */
    public final class Companion {
        public static LockedUserState get(Context context) {
            kotlin.jvm.internal.h.e(context, "context");
            Object obj = LockedUserState.INSTANCE.get(context);
            kotlin.jvm.internal.h.d(obj, "INSTANCE.get(context)");
            return (LockedUserState) obj;
        }

        public static /* synthetic */ void getINSTANCE$annotations() {
        }
    }

    public LockedUserState(Context mContext) {
        kotlin.jvm.internal.h.e(mContext, "mContext");
        this.mContext = mContext;
        RunnableList runnableList = new RunnableList();
        this.mUserUnlockedActions = runnableList;
        SimpleBroadcastReceiver simpleBroadcastReceiver = new SimpleBroadcastReceiver(new Consumer() { // from class: com.android.launcher3.util.LockedUserState$mUserUnlockedReceiver$1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                if (kotlin.jvm.internal.h.a("android.intent.action.USER_UNLOCKED", ((Intent) obj).getAction())) {
                    LockedUserState.this.isUserUnlocked = true;
                    LockedUserState.access$notifyUserUnlocked(LockedUserState.this);
                }
            }
        });
        this.mUserUnlockedReceiver = simpleBroadcastReceiver;
        Object systemService = mContext.getSystemService(UserManager.class);
        kotlin.jvm.internal.h.b(systemService);
        boolean isUserUnlocked = ((UserManager) systemService).isUserUnlocked(Process.myUserHandle());
        this.isUserUnlocked = isUserUnlocked;
        this.isUserUnlockedAtLauncherStartup = isUserUnlocked;
        if (!isUserUnlocked) {
            simpleBroadcastReceiver.register(mContext, "android.intent.action.USER_UNLOCKED");
            return;
        }
        runnableList.executeAllAndDestroy();
        try {
            mContext.unregisterReceiver(simpleBroadcastReceiver);
        } catch (IllegalArgumentException unused) {
        }
    }

    public static final void access$notifyUserUnlocked(LockedUserState lockedUserState) {
        lockedUserState.mUserUnlockedActions.executeAllAndDestroy();
        SimpleBroadcastReceiver simpleBroadcastReceiver = lockedUserState.mUserUnlockedReceiver;
        Context context = lockedUserState.mContext;
        simpleBroadcastReceiver.getClass();
        try {
            context.unregisterReceiver(simpleBroadcastReceiver);
        } catch (IllegalArgumentException unused) {
        }
    }

    public static /* synthetic */ void getMUserUnlockedReceiver$annotations() {
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        SimpleBroadcastReceiver simpleBroadcastReceiver = this.mUserUnlockedReceiver;
        Context context = this.mContext;
        simpleBroadcastReceiver.getClass();
        try {
            context.unregisterReceiver(simpleBroadcastReceiver);
        } catch (IllegalArgumentException unused) {
        }
    }

    public final boolean isUserUnlocked() {
        return this.isUserUnlocked;
    }

    public final boolean isUserUnlockedAtLauncherStartup() {
        return this.isUserUnlockedAtLauncherStartup;
    }

    public final void runOnUserUnlocked(Runnable runnable) {
        this.mUserUnlockedActions.add(runnable);
    }
}
