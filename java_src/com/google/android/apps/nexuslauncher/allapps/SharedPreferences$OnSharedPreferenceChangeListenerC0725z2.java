package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.Query;
import android.app.search.SearchContext;
import android.app.search.SearchSession;
import android.app.search.SearchUiManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.systemui.shared.R;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.z2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 implements SharedPreferences.OnSharedPreferenceChangeListener, com.google.android.apps.nexuslauncher.m {

    /* renamed from: d  reason: collision with root package name */
    public final Context f7302d;

    /* renamed from: e  reason: collision with root package name */
    public final SharedPreferences f7303e;

    /* renamed from: f  reason: collision with root package name */
    public final SearchUiManager f7304f;

    /* renamed from: g  reason: collision with root package name */
    public final C0719y0 f7305g;

    /* renamed from: h  reason: collision with root package name */
    public final C0696s1 f7306h;

    /* renamed from: i  reason: collision with root package name */
    public final Map f7307i;

    /* renamed from: j  reason: collision with root package name */
    public SearchSession f7308j;

    /* renamed from: k  reason: collision with root package name */
    public C0721y2 f7309k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f7310l;

    public SharedPreferences$OnSharedPreferenceChangeListenerC0725z2(Context context, C0719y0 c0719y0, C0696s1 c0696s1) {
        HashMap hashMap = new HashMap();
        this.f7307i = hashMap;
        this.f7310l = false;
        this.f7302d = context;
        this.f7304f = (SearchUiManager) context.getSystemService(SearchUiManager.class);
        this.f7303e = LauncherPrefs.getPrefs(context);
        this.f7305g = c0719y0;
        this.f7306h = c0696s1;
        b(hashMap);
    }

    public static void a(SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2) {
        SearchSession searchSession = sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7308j;
        if (searchSession != null) {
            searchSession.unregisterEmptyQueryResultUpdateCallback(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7309k);
            sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7308j.destroy();
            sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7308j = null;
            sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7309k = null;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("launcher.gridSize", sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7305g.f7288u);
        bundle.putBoolean("allowlist_enabled", sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7303e.getBoolean("perf_searchFilterByAllowList", sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7302d.getResources().getBoolean(R.bool.search_pref_filter_by_allow_list)));
        bundle.putBoolean("one_search_enabled", sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7306h.f7179b);
        bundle.putInt("launcher.maxInlineIcons", 3);
        bundle.putBoolean("showhiddentargets_enabled", sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7303e.getBoolean("pref_search_show_hidden_targets", sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7302d.getResources().getBoolean(R.bool.search_pref_show_hidden_targets)));
        bundle.putBoolean("system_clock", true);
        bundle.putInt("gms_play_query_lower_bound", sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7306h.f7196s);
        bundle.putInt("gms_play_query_upper_bound", sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7306h.f7197t);
        FeatureFlags.BooleanFlag booleanFlag = com.google.android.apps.nexuslauncher.c.f7334w;
        bundle.putBoolean("gms_play_feature_supported", FeatureFlags.ENABLE_SEARCH_UNINSTALLED_APPS.get() && (booleanFlag.get() ? ((com.google.android.apps.nexuslauncher.u) com.google.android.apps.nexuslauncher.u.f7612m.get(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7302d)).f7619i.f7505c : true));
        bundle.putBoolean("qs_tiles_asi_enabled", com.google.android.apps.nexuslauncher.c.f7321j.get());
        bundle.putBoolean("recent_search_block_enabled", sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7306h.f7199v.f7225r);
        bundle.putInt("version_code", 12);
        SearchUiManager searchUiManager = sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7304f;
        boolean z4 = booleanFlag.get() ? ((com.google.android.apps.nexuslauncher.u) com.google.android.apps.nexuslauncher.u.f7612m.get(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7302d)).f7619i.f7505c : true;
        int i4 = 0;
        for (String str : ((HashMap) sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7307i).keySet()) {
            int i5 = ((int[]) ((HashMap) sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7307i).get(str))[0];
            boolean z5 = sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7303e.getBoolean(str, sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7302d.getResources().getBoolean(((int[]) ((HashMap) sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7307i).get(str))[1]));
            if (i5 == 131072) {
                z5 &= sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7306h.f7179b && z4;
            }
            if (i5 == 256) {
                z5 &= z4;
            }
            if (!z5) {
                i5 = 0;
            }
            i4 |= i5;
        }
        int i6 = 1 | i4;
        if (z4) {
            i6 |= 512;
        }
        if (sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7303e.getInt("ALL_APPS_SEARCH_CORPUS_PREFERENCE", 0) != i6) {
            sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7303e.edit().putInt("ALL_APPS_SEARCH_CORPUS_PREFERENCE", i6).apply();
        }
        sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7308j = searchUiManager.createSearchSession(new SearchContext(i6, 200, bundle));
        C0721y2 c0721y2 = new C0721y2(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7305g.f7284q);
        sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7309k = c0721y2;
        sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7308j.registerEmptyQueryResultUpdateCallback(Executors.UI_HELPER_EXECUTOR, c0721y2);
    }

    public static void b(Map map) {
        HashMap hashMap = (HashMap) map;
        hashMap.put("pref_allowShortcutResult", new int[]{1034, R.bool.search_pref_result_shortcuts_enabled});
        hashMap.put("pref_allowSettingsResult", new int[]{80, R.bool.search_pref_result_settings_enabled});
        hashMap.put("pref_allowPixelTipsResult", new int[]{8192, R.bool.search_pref_result_tips_enabled});
        hashMap.put("pref_allowPeopleResult", new int[]{4, R.bool.search_pref_result_people_enabled});
        hashMap.put("pref_allowWebResult", new int[]{131072, R.bool.search_pref_result_web_suggest_enabled});
        hashMap.put("pref_allowPlaySearchResult", new int[]{256, R.bool.search_pref_result_play_enabled});
    }

    @Override // com.google.android.apps.nexuslauncher.m
    public final void c(com.google.android.apps.nexuslauncher.p pVar) {
        if (com.google.android.apps.nexuslauncher.c.f7334w.get() && this.f7310l) {
            Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0709v2(this, 1));
        }
    }

    public final void d(final Query query, final RunnableC0671m runnableC0671m, final LooperExecutor looperExecutor, final Consumer consumer) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.google.android.apps.nexuslauncher.allapps.w2
            @Override // java.lang.Runnable
            public final void run() {
                SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = SharedPreferences$OnSharedPreferenceChangeListenerC0725z2.this;
                Runnable runnable = runnableC0671m;
                final Query query2 = query;
                Executor executor = looperExecutor;
                Consumer consumer2 = consumer;
                SearchSession searchSession = sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7308j;
                if (searchSession == null) {
                    Executors.MAIN_EXECUTOR.execute(runnable);
                } else {
                    searchSession.query(query2, executor, new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.x2
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            D2.a(query2, (List) obj);
                        }
                    }.andThen(consumer2));
                }
            }
        });
    }

    public SearchSession getSearchSession() {
        return this.f7308j;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ((((HashMap) this.f7307i).containsKey(str) || "perf_searchFilterByAllowList".equals(str) || "pref_search_show_hidden_targets".equals(str) || "pref_allowShortcutResult".equals(str) || "pref_allowPeopleResult".equals(str) || "pref_allowSettingsResult".equals(str) || "pref_allowPixelTipsResult".equals(str) || "pref_allowWebResult".equals(str) || "pref_allowPlaySearchResult".equals(str) || "pref_allowDeviceResult".equals(str)) && this.f7310l) {
            Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0709v2(this, 0));
        }
    }
}
