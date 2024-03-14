package com.google.android.apps.nexuslauncher.allapps;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.text.TextUtils;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.SafeCloseable;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Set;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.t1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0700t1 extends ContentObserver implements SafeCloseable {

    /* renamed from: s  reason: collision with root package name */
    public static final ImmutableList f7207s = ImmutableList.n("com.google.android.inputmethod.latin", "com.google.android.inputmethod.latin.canary", "com.google.android.inputmethod.latin.dev");

    /* renamed from: t  reason: collision with root package name */
    public static final MainThreadInitializedObject f7208t = new MainThreadInitializedObject(new C0657i1());

    /* renamed from: u  reason: collision with root package name */
    public static final Uri f7209u = Settings.Secure.getUriFor("default_input_method");

    /* renamed from: v  reason: collision with root package name */
    public static final boolean f7210v = Utilities.isRunningInTestHarness();

    /* renamed from: d  reason: collision with root package name */
    public final C0661j1 f7211d;

    /* renamed from: e  reason: collision with root package name */
    public final SharedPreferences$OnSharedPreferenceChangeListenerC0665k1 f7212e;

    /* renamed from: f  reason: collision with root package name */
    public final Context f7213f;

    /* renamed from: g  reason: collision with root package name */
    public final Set f7214g;

    /* renamed from: h  reason: collision with root package name */
    public final ContentResolver f7215h;

    /* renamed from: i  reason: collision with root package name */
    public final ArrayList f7216i;

    /* renamed from: j  reason: collision with root package name */
    public C0696s1 f7217j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f7218k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f7219l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f7220m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f7221n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f7222o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f7223p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f7224q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f7225r;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.provider.DeviceConfig$OnPropertiesChangedListener, com.google.android.apps.nexuslauncher.allapps.j1] */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.content.SharedPreferences$OnSharedPreferenceChangeListener, com.google.android.apps.nexuslauncher.allapps.k1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0700t1(android.content.Context r10) {
        /*
            r9 = this;
            com.android.launcher3.util.LooperExecutor r0 = com.android.launcher3.util.Executors.UI_HELPER_EXECUTOR
            android.os.Handler r1 = r0.getHandler()
            r9.<init>(r1)
            com.google.android.apps.nexuslauncher.allapps.j1 r1 = new com.google.android.apps.nexuslauncher.allapps.j1
            r1.<init>()
            r9.f7211d = r1
            com.google.android.apps.nexuslauncher.allapps.k1 r2 = new com.google.android.apps.nexuslauncher.allapps.k1
            r2.<init>()
            r9.f7212e = r2
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r9.f7216i = r3
            r9.f7213f = r10
            java.util.HashSet r3 = new java.util.HashSet
            r3.<init>()
            com.google.android.apps.nexuslauncher.allapps.s1 r4 = new com.google.android.apps.nexuslauncher.allapps.s1
            com.google.android.apps.nexuslauncher.allapps.l1 r5 = new com.google.android.apps.nexuslauncher.allapps.l1
            r6 = 0
            r5.<init>()
            com.google.android.apps.nexuslauncher.allapps.l1 r7 = new com.google.android.apps.nexuslauncher.allapps.l1
            r8 = 1
            r7.<init>()
            r4.<init>(r9, r5, r7)
            r9.f7217j = r4
            java.util.Set r3 = java.util.Collections.unmodifiableSet(r3)
            r9.f7214g = r3
            android.content.SharedPreferences r3 = com.android.launcher3.LauncherPrefs.getPrefs(r10)
            java.lang.String r4 = "pref_search_show_hidden_targets"
            boolean r4 = r3.getBoolean(r4, r6)
            r9.f7219l = r4
            android.content.res.Resources r4 = r10.getResources()
            r5 = 2131034132(0x7f050014, float:1.7678773E38)
            boolean r4 = r4.getBoolean(r5)
            java.lang.String r5 = "pref_search_show_keyboard"
            boolean r4 = r3.getBoolean(r5, r4)
            r9.f7220m = r4
            android.content.res.Resources r4 = r10.getResources()
            r5 = 2131034130(0x7f050012, float:1.7678769E38)
            boolean r4 = r4.getBoolean(r5)
            java.lang.String r5 = "pref_allowWebResult"
            boolean r4 = r3.getBoolean(r5, r4)
            r9.f7218k = r4
            android.content.res.Resources r4 = r10.getResources()
            r5 = 2131034126(0x7f05000e, float:1.767876E38)
            boolean r4 = r4.getBoolean(r5)
            java.lang.String r5 = "pref_allowPlaySearchResult"
            boolean r4 = r3.getBoolean(r5, r4)
            r9.f7224q = r4
            android.content.res.Resources r4 = r10.getResources()
            r5 = 2131034124(0x7f05000c, float:1.7678757E38)
            boolean r4 = r4.getBoolean(r5)
            java.lang.String r5 = "pref_allowDeviceResult"
            boolean r4 = r3.getBoolean(r5, r4)
            r9.f7225r = r4
            r3.registerOnSharedPreferenceChangeListener(r2)
            java.lang.String r2 = "launcher"
            android.provider.DeviceConfig.addOnPropertiesChangedListener(r2, r0, r1)
            android.content.ContentResolver r10 = r10.getContentResolver()
            r9.f7215h = r10
            android.net.Uri r1 = com.google.android.apps.nexuslauncher.allapps.C0700t1.f7209u
            r10.registerContentObserver(r1, r6, r9)
            com.google.android.apps.nexuslauncher.allapps.m1 r10 = new com.google.android.apps.nexuslauncher.allapps.m1
            r10.<init>()
            r0.execute(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.allapps.C0700t1.<init>(android.content.Context):void");
    }

    public static boolean a(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "default_input_method");
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        return f7207s.contains(string.split("/")[0]);
    }

    public static boolean b() {
        return Utilities.isRunningInTestHarness() && f7210v;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        DeviceConfig.removeOnPropertiesChangedListener(this.f7211d);
        LauncherPrefs.getPrefs(this.f7213f).unregisterOnSharedPreferenceChangeListener(this.f7212e);
        this.f7215h.unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z4, Uri uri) {
        if (uri.equals(f7209u)) {
            this.f7222o = a(this.f7213f);
        }
    }
}
