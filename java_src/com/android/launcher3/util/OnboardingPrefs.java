package com.android.launcher3.util;

import android.content.SharedPreferences;
import android.util.ArrayMap;
import com.android.launcher3.views.ActivityContext;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public class OnboardingPrefs {
    private static final Map MAX_COUNTS;
    protected final ActivityContext mLauncher;
    protected final SharedPreferences mSharedPrefs;
    public static final String HOME_BOUNCE_SEEN = "launcher.apps_view_shown";
    public static final String HOME_BOUNCE_COUNT = "launcher.home_bounce_count";
    public static final String HOTSEAT_DISCOVERY_TIP_COUNT = "launcher.hotseat_discovery_tip_count";
    public static final String HOTSEAT_LONGPRESS_TIP_SEEN = "launcher.hotseat_longpress_tip_seen";
    public static final String TASKBAR_EDU_TOOLTIP_STEP = "launcher.taskbar_edu_tooltip_step";
    public static final String ALL_APPS_VISITED_COUNT = "launcher.all_apps_visited_count";
    public static final Map ALL_PREF_KEYS = Map.of("All Apps Bounce", new String[]{HOME_BOUNCE_SEEN, HOME_BOUNCE_COUNT}, "Hybrid Hotseat Education", new String[]{HOTSEAT_DISCOVERY_TIP_COUNT, HOTSEAT_LONGPRESS_TIP_SEEN}, "Taskbar Education", new String[]{TASKBAR_EDU_TOOLTIP_STEP}, "All Apps Visited Count", new String[]{ALL_APPS_VISITED_COUNT});

    static {
        ArrayMap arrayMap = new ArrayMap(5);
        arrayMap.put(HOME_BOUNCE_COUNT, 3);
        arrayMap.put(HOTSEAT_DISCOVERY_TIP_COUNT, 5);
        arrayMap.put(ALL_APPS_VISITED_COUNT, 20);
        arrayMap.put(TASKBAR_EDU_TOOLTIP_STEP, 2);
        MAX_COUNTS = Collections.unmodifiableMap(arrayMap);
    }

    public OnboardingPrefs(ActivityContext activityContext, SharedPreferences sharedPreferences) {
        this.mLauncher = activityContext;
        this.mSharedPrefs = sharedPreferences;
    }

    public boolean getBoolean(String str) {
        return this.mSharedPrefs.getBoolean(str, false);
    }

    public int getCount(String str) {
        return this.mSharedPrefs.getInt(str, 0);
    }

    public boolean hasReachedMaxCount(String str) {
        return hasReachedMaxCount(getCount(str), str);
    }

    public boolean incrementEventCount(String str) {
        int count = getCount(str);
        if (hasReachedMaxCount(count, str)) {
            return true;
        }
        int i4 = count + 1;
        this.mSharedPrefs.edit().putInt(str, i4).apply();
        return hasReachedMaxCount(i4, str);
    }

    public void markChecked(String str) {
        this.mSharedPrefs.edit().putBoolean(str, true).apply();
    }

    public boolean setEventCount(int i4, String str) {
        this.mSharedPrefs.edit().putInt(str, i4).apply();
        return hasReachedMaxCount(i4, str);
    }

    private boolean hasReachedMaxCount(int i4, String str) {
        return i4 >= ((Integer) MAX_COUNTS.get(str)).intValue();
    }
}
