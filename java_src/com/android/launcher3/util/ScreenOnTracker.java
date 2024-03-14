package com.android.launcher3.util;

import android.content.Context;
import android.content.Intent;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public final class ScreenOnTracker {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new A());
    private boolean mIsScreenOn;
    private final CopyOnWriteArrayList mListeners;

    /* loaded from: classes.dex */
    public interface ScreenOnListener {
        void onScreenOnChanged(boolean z4);

        default void onUserPresent() {
        }
    }

    private ScreenOnTracker(Context context) {
        SimpleBroadcastReceiver simpleBroadcastReceiver = new SimpleBroadcastReceiver(new B(this, 0));
        this.mListeners = new CopyOnWriteArrayList();
        this.mIsScreenOn = true;
        simpleBroadcastReceiver.register(context, "android.intent.action.SCREEN_ON", "android.intent.action.SCREEN_OFF", "android.intent.action.USER_PRESENT");
    }

    public static void b(ScreenOnTracker screenOnTracker, Intent intent) {
        screenOnTracker.getClass();
        String action = intent.getAction();
        boolean equals = "android.intent.action.SCREEN_ON".equals(action);
        CopyOnWriteArrayList copyOnWriteArrayList = screenOnTracker.mListeners;
        if (equals) {
            screenOnTracker.mIsScreenOn = true;
            copyOnWriteArrayList.forEach(new B(screenOnTracker, 1));
        } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
            screenOnTracker.mIsScreenOn = false;
            copyOnWriteArrayList.forEach(new B(screenOnTracker, 1));
        } else if ("android.intent.action.USER_PRESENT".equals(action)) {
            copyOnWriteArrayList.forEach(new C());
        }
    }

    public static /* synthetic */ ScreenOnTracker c(Context context) {
        return new ScreenOnTracker(context);
    }

    public final void addListener(ScreenOnListener screenOnListener) {
        this.mListeners.add(screenOnListener);
    }

    public final boolean isScreenOn() {
        return this.mIsScreenOn;
    }

    public final void removeListener(ScreenOnListener screenOnListener) {
        this.mListeners.remove(screenOnListener);
    }
}
