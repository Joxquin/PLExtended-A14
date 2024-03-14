package com.android.systemui.shared.system;

import android.text.TextUtils;
import android.view.View;
import com.android.internal.jank.InteractionJankMonitor;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes.dex */
public final class InteractionJankMonitorWrapper {
    public static final int CUJ_ALL_APPS_SCROLL = 26;
    public static final int CUJ_APP_CLOSE_TO_HOME = 9;
    public static final int CUJ_APP_CLOSE_TO_HOME_FALLBACK = 78;
    public static final int CUJ_APP_CLOSE_TO_PIP = 10;
    public static final int CUJ_APP_LAUNCH_FROM_ICON = 8;
    public static final int CUJ_APP_LAUNCH_FROM_RECENTS = 7;
    public static final int CUJ_APP_LAUNCH_FROM_WIDGET = 27;
    public static final int CUJ_APP_SWIPE_TO_RECENTS = 66;
    public static final int CUJ_CLOSE_ALL_APPS_SWIPE = 67;
    public static final int CUJ_CLOSE_ALL_APPS_TO_HOME = 68;
    public static final int CUJ_LAUNCHER_UNLOCK_ENTRANCE_ANIMATION = 63;
    public static final int CUJ_OPEN_ALL_APPS = 25;
    public static final int CUJ_OPEN_SEARCH_RESULT = 71;
    public static final int CUJ_QUICK_SWITCH = 11;
    public static final int CUJ_RECENTS_SCROLLING = 65;
    public static final int CUJ_SHADE_EXPAND_FROM_STATUS_BAR = 79;
    public static final int CUJ_SPLIT_SCREEN_ENTER = 49;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface CujType {
    }

    public static void begin(View view, int i4) {
        InteractionJankMonitor.getInstance().begin(view, i4);
    }

    public static void cancel(int i4) {
        InteractionJankMonitor.getInstance().cancel(i4);
    }

    public static void end(int i4) {
        InteractionJankMonitor.getInstance().end(i4);
    }

    public static void begin(View view, int i4, long j4) {
        InteractionJankMonitor.getInstance().begin(InteractionJankMonitor.Configuration.Builder.withView(i4, view).setTimeout(j4));
    }

    public static void begin(View view, int i4, String str) {
        InteractionJankMonitor.Configuration.Builder withView = InteractionJankMonitor.Configuration.Builder.withView(i4, view);
        if (!TextUtils.isEmpty(str)) {
            withView.setTag(str);
        }
        InteractionJankMonitor.getInstance().begin(withView);
    }
}
