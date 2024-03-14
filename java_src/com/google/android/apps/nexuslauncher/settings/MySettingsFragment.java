package com.google.android.apps.nexuslauncher.settings;

import a2.C0163f;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.util.Log;
import androidx.fragment.app.P;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.settings.SettingsActivity;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.allapps.C0716x1;
import com.google.android.apps.nexuslauncher.c;
import com.google.android.apps.nexuslauncher.m;
import com.google.android.apps.nexuslauncher.p;
import com.google.android.apps.nexuslauncher.settings.MySettingsFragment;
import com.google.android.apps.nexuslauncher.u;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class MySettingsFragment extends SettingsActivity.LauncherSettingsFragment implements m {

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ int f7608g = 0;

    /* renamed from: e  reason: collision with root package name */
    public final SimpleBroadcastReceiver f7609e = new SimpleBroadcastReceiver(new Consumer() { // from class: a2.e
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            MySettingsFragment mySettingsFragment = MySettingsFragment.this;
            Intent intent = (Intent) obj;
            int i4 = MySettingsFragment.f7608g;
            if (!mySettingsFragment.isResumed()) {
                mySettingsFragment.f7610f = true;
                return;
            }
            P activity = mySettingsFragment.getActivity();
            if (activity != null) {
                activity.recreate();
            }
        }
    });

    /* renamed from: f  reason: collision with root package name */
    public boolean f7610f = false;

    @Override // com.google.android.apps.nexuslauncher.m
    public final void c(p pVar) {
        if (!isResumed()) {
            this.f7610f = true;
            return;
        }
        P activity = getActivity();
        if (activity != null) {
            activity.recreate();
        }
    }

    @Override // com.android.launcher3.settings.SettingsActivity.LauncherSettingsFragment
    public final String getParentKeyForPref(String str) {
        if ("search_settings".equals(str)) {
            return str;
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.android.launcher3.settings.SettingsActivity.LauncherSettingsFragment
    public final boolean initPreference(Preference preference) {
        char c4;
        CharSequence charSequence;
        boolean z4;
        char c5;
        boolean z5;
        boolean z6 = getActivity() != null && getActivity().getIntent().getBooleanExtra(":settings:from_qsb_key", false);
        p pVar = c.f7334w.get() ? ((u) u.f7612m.get(getContext())).f7619i : new p("com.google.android.googlequicksearchbox", null);
        PackageManager packageManager = getContext().getPackageManager();
        boolean z7 = DeviceConfig.getBoolean("launcher", "enable_one_search", true);
        boolean z8 = pVar.f7505c;
        String str = pVar.f7503a;
        String str2 = z8 ? "Google" : str;
        try {
            str2 = packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0));
        } catch (PackageManager.NameNotFoundException e4) {
            Log.e("MySettingsFragment", "Failed to get AGA label", e4);
        }
        boolean a4 = C0716x1.a(packageManager);
        boolean z9 = z6;
        if (a4) {
            String key = preference.getKey();
            key.getClass();
            switch (key.hashCode()) {
                case -1657274480:
                    if (key.equals("pref_allowShortcutResult")) {
                        c5 = 0;
                        break;
                    }
                    c5 = 65535;
                    break;
                case -33884960:
                    if (key.equals("pref_allowDeviceResult")) {
                        c5 = 1;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 49787566:
                    if (key.equals("pref_allowPixelTipsResult")) {
                        c5 = 2;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 511886765:
                    if (key.equals("pref_allowSettingsResult")) {
                        c5 = 3;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1450736006:
                    if (key.equals("pref_allowPlaySearchResult")) {
                        c5 = 4;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1628846681:
                    if (key.equals("pref_allowPeopleResult")) {
                        c5 = 5;
                        break;
                    }
                    c5 = 65535;
                    break;
                default:
                    c5 = 65535;
                    break;
            }
            switch (c5) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                    z5 = true;
                    break;
                default:
                    z5 = false;
                    break;
            }
            if (z5) {
                return false;
            }
        }
        String key2 = preference.getKey();
        key2.getClass();
        switch (key2.hashCode()) {
            case -1657274480:
                if (key2.equals("pref_allowShortcutResult")) {
                    c4 = 0;
                    break;
                }
                c4 = 65535;
                break;
            case -1145337423:
                if (key2.equals("search_pref_experiments")) {
                    c4 = 1;
                    break;
                }
                c4 = 65535;
                break;
            case -33884960:
                if (key2.equals("pref_allowDeviceResult")) {
                    c4 = 2;
                    break;
                }
                c4 = 65535;
                break;
            case 49787566:
                if (key2.equals("pref_allowPixelTipsResult")) {
                    c4 = 3;
                    break;
                }
                c4 = 65535;
                break;
            case 275372752:
                if (key2.equals("pref_overview_action_suggestions")) {
                    c4 = 4;
                    break;
                }
                c4 = 65535;
                break;
            case 511886765:
                if (key2.equals("pref_allowSettingsResult")) {
                    c4 = 5;
                    break;
                }
                c4 = 65535;
                break;
            case 701568485:
                if (key2.equals("search_web_settings")) {
                    c4 = 6;
                    break;
                }
                c4 = 65535;
                break;
            case 1172391214:
                if (key2.equals("pref_search_show_keyboard")) {
                    c4 = 7;
                    break;
                }
                c4 = 65535;
                break;
            case 1351463140:
                if (key2.equals("pref_allowWebResult")) {
                    c4 = '\b';
                    break;
                }
                c4 = 65535;
                break;
            case 1450736006:
                if (key2.equals("pref_allowPlaySearchResult")) {
                    c4 = '\t';
                    break;
                }
                c4 = 65535;
                break;
            case 1480415955:
                if (key2.equals("pref_suggestions")) {
                    c4 = '\n';
                    break;
                }
                c4 = 65535;
                break;
            case 1628846681:
                if (key2.equals("pref_allowPeopleResult")) {
                    c4 = 11;
                    break;
                }
                c4 = 65535;
                break;
            case 1815451776:
                if (key2.equals("search_aiai_corpus")) {
                    c4 = '\f';
                    break;
                }
                c4 = 65535;
                break;
            case 1946248410:
                if (key2.equals("search_settings")) {
                    c4 = '\r';
                    break;
                }
                c4 = 65535;
                break;
            case 1986449655:
                if (key2.equals("pref_enable_minus_one")) {
                    c4 = 14;
                    break;
                }
                c4 = 65535;
                break;
            default:
                c4 = 65535;
                break;
        }
        boolean z10 = pVar.f7505c;
        switch (c4) {
            case 0:
                return !z7;
            case 1:
                if (FeatureFlags.ENABLE_DEVICE_SEARCH.get()) {
                    Context context = getContext();
                    String[] strArr = Utilities.EMPTY_STRING_ARRAY;
                    Settings.Global.getInt(context.getApplicationContext().getContentResolver(), "development_settings_enabled", 0);
                    return false;
                }
                return false;
            case 2:
                return LauncherPrefs.getPrefs(getActivity()).getBoolean("pref_zero_state_query_ready", false) && !z9 && c.f7326o.get();
            case 3:
                try {
                    preference.setTitle(packageManager.getApplicationLabel(packageManager.getApplicationInfo("com.google.android.apps.tips", 0)));
                    return !z7;
                } catch (PackageManager.NameNotFoundException unused) {
                    return false;
                }
            case 4:
                return true;
            case 5:
                try {
                    try {
                        preference.setTitle(packageManager.getApplicationLabel(packageManager.getApplicationInfo("com.android.settings", 0)));
                        return !z7;
                    } catch (PackageManager.NameNotFoundException unused2) {
                        return false;
                    }
                } catch (PackageManager.NameNotFoundException unused3) {
                    return false;
                }
            case 6:
                preference.setSummary(getResources().getString(R.string.search_pref_web_settings_desc, str2));
                preference.setIntent(C0163f.f2401a);
                return z7 && z10;
            case 7:
                return FeatureFlags.ENABLE_SHOW_KEYBOARD_OPTION_IN_ALL_APPS.get() && !z9;
            case '\b':
                preference.setSummary(getResources().getString(R.string.search_pref_result_web_desc, str2));
                return z7 && !z9 && z10;
            case '\t':
                try {
                    charSequence = packageManager.getApplicationLabel(packageManager.getApplicationInfo("com.android.vending", 0));
                } catch (PackageManager.NameNotFoundException e5) {
                    Log.e("MySettingsFragment", "Failed to get Play label", e5);
                    charSequence = "Google Play Store";
                }
                preference.setTitle(getResources().getString(R.string.search_pref_result_play_title, charSequence));
                preference.setSummary(getResources().getString(R.string.search_pref_result_play_desc, charSequence));
                return FeatureFlags.ENABLE_SEARCH_UNINSTALLED_APPS.get() && z10;
            case '\n':
                ResolveInfo resolveActivity = getContext().getPackageManager().resolveActivity(new Intent("android.settings.ACTION_CONTENT_SUGGESTIONS_SETTINGS"), 1048576);
                if (resolveActivity != null) {
                    preference.getIntent().setPackage(resolveActivity.resolvePackageName);
                }
                return resolveActivity != null;
            case 11:
                return DeviceConfig.getBoolean("device_personalization_services", "Echo__enable_people_module", true);
            case '\f':
                if (a4) {
                    preference.setIntent(C0163f.f2402b);
                    return true;
                }
                return false;
            case '\r':
                return FeatureFlags.ENABLE_DEVICE_SEARCH.get() && !DeviceConfig.getBoolean("launcher", "use_fallback_app_search", false);
            case 14:
                preference.setTitle(getResources().getString(R.string.title_show_google_app, str2));
                preference.setSummary(getResources().getString(R.string.pref_show_google_now_summary, str2));
                if (z10) {
                    try {
                        z4 = getContext().getPackageManager().getApplicationInfo("com.google.android.googlequicksearchbox", 0).enabled;
                    } catch (PackageManager.NameNotFoundException unused4) {
                        z4 = false;
                    }
                    if (z4) {
                        return true;
                    }
                }
                return false;
            default:
                if (preference instanceof PreferenceCategory) {
                    PreferenceCategory preferenceCategory = (PreferenceCategory) preference;
                    for (int e6 = preferenceCategory.e() - 1; e6 >= 0; e6--) {
                        Preference d4 = preferenceCategory.d(e6);
                        if (!initPreference(d4)) {
                            preferenceCategory.g(d4);
                        }
                    }
                }
                return super.initPreference(preference);
        }
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.K
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (c.f7334w.get()) {
            ((u) u.f7612m.get(getContext())).a(this);
        }
        this.f7609e.registerPkgActions(getContext(), "com.google.android.googlequicksearchbox", "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED");
    }

    @Override // androidx.fragment.app.K
    public final void onDestroy() {
        super.onDestroy();
        if (c.f7334w.get()) {
            ((u) u.f7612m.get(getContext())).c(this);
        }
        SimpleBroadcastReceiver simpleBroadcastReceiver = this.f7609e;
        Context context = getContext();
        simpleBroadcastReceiver.getClass();
        try {
            context.unregisterReceiver(simpleBroadcastReceiver);
        } catch (IllegalArgumentException unused) {
        }
    }

    @Override // com.android.launcher3.settings.SettingsActivity.LauncherSettingsFragment, androidx.fragment.app.K
    public final void onResume() {
        P activity;
        super.onResume();
        if (!this.f7610f || (activity = getActivity()) == null) {
            return;
        }
        activity.recreate();
    }
}
