package com.google.android.apps.nexuslauncher;

import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.uioverrides.flags.FlagsFactory;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7312a;

    /* renamed from: b  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7313b;

    /* renamed from: c  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7314c;

    /* renamed from: d  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7315d;

    /* renamed from: e  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7316e;

    /* renamed from: f  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7317f;

    /* renamed from: g  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7318g;

    /* renamed from: h  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7319h;

    /* renamed from: i  reason: collision with root package name */
    public static final FeatureFlags.IntFlag f7320i;

    /* renamed from: j  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7321j;

    /* renamed from: k  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7322k;

    /* renamed from: l  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7323l;

    /* renamed from: m  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7324m;

    /* renamed from: n  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7325n;

    /* renamed from: o  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7326o;

    /* renamed from: p  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7327p;

    /* renamed from: q  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7328q;

    /* renamed from: r  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7329r;

    /* renamed from: s  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7330s;

    /* renamed from: t  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7331t;

    /* renamed from: u  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7332u;

    /* renamed from: v  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7333v;

    /* renamed from: w  reason: collision with root package name */
    public static final FeatureFlags.BooleanFlag f7334w;

    static {
        FeatureFlags.FlagState flagState = FeatureFlags.FlagState.DISABLED;
        f7312a = FlagsFactory.getReleaseFlag("TWO_PREDICTED_ROWS_ALL_APPS_SEARCH", flagState);
        f7313b = FlagsFactory.getReleaseFlag("REPLACE_OVERVIEW_SELECT_WITH_SEARCH", flagState);
        f7314c = FlagsFactory.getReleaseFlag("INVOKE_OMNI_LPH_MPR", flagState);
        f7315d = FlagsFactory.getReleaseFlag("press_hold_nav_handle_to_search_mpr", flagState);
        f7316e = FlagsFactory.getReleaseFlag("long_press_home_button_to_search_mpr", flagState);
        FeatureFlags.FlagState flagState2 = FeatureFlags.FlagState.ENABLED;
        f7317f = FlagsFactory.getDebugFlag(flagState2);
        f7318g = FlagsFactory.getDebugFlag(flagState);
        f7319h = FlagsFactory.getReleaseFlag("ENABLE_NEXUS_LAUNCHER_STARTUP_LATENCY_LOGGING", flagState2);
        f7320i = FlagsFactory.getIntFlag();
        f7321j = FlagsFactory.getReleaseFlag("ENABLE_QS_TILES", flagState2);
        f7322k = FlagsFactory.getDebugFlag(flagState);
        f7323l = FlagsFactory.getDebugFlag(flagState);
        f7324m = FlagsFactory.getReleaseFlag("ENABLE_RICH_SUGGEST_BUTTON_INFO", flagState2);
        f7325n = FlagsFactory.getReleaseFlag("ENABLE_SHOW_IME_SNACKBAR_AGAIN", flagState);
        f7326o = FlagsFactory.getDebugFlag(flagState2);
        f7327p = FlagsFactory.getDebugFlag(flagState);
        f7328q = FlagsFactory.getDebugFlag(flagState2);
        f7329r = FlagsFactory.getReleaseFlag("USE_ACTIVITY_OVERLAY", flagState);
        f7330s = FlagsFactory.getReleaseFlag("ENABLE_CONTACT_BIRTHDAY_ANIMATION", flagState);
        f7331t = FlagsFactory.getReleaseFlag("ENABLE_AIAI_CORPUS_PREFERENCES", flagState);
        f7332u = FlagsFactory.getDebugFlag(flagState);
        f7333v = FlagsFactory.getDebugFlag(flagState2);
        f7334w = FlagsFactory.getReleaseFlag("ENABLE_OSE_CUSTOMIZATIONS", flagState);
    }
}
