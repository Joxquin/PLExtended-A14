package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchSession;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.v2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0709v2 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f7234d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 f7235e;

    public /* synthetic */ RunnableC0709v2(SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2, int i4) {
        this.f7234d = i4;
        this.f7235e = sharedPreferences$OnSharedPreferenceChangeListenerC0725z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7234d) {
            case 0:
            case 1:
            case 2:
                SharedPreferences$OnSharedPreferenceChangeListenerC0725z2.a(this.f7235e);
                return;
            default:
                SharedPreferences$OnSharedPreferenceChangeListenerC0725z2 sharedPreferences$OnSharedPreferenceChangeListenerC0725z2 = this.f7235e;
                SearchSession searchSession = sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7308j;
                if (searchSession != null) {
                    searchSession.unregisterEmptyQueryResultUpdateCallback(sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7309k);
                    sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7308j.destroy();
                    sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7308j = null;
                    sharedPreferences$OnSharedPreferenceChangeListenerC0725z2.f7309k = null;
                    return;
                }
                return;
        }
    }
}
