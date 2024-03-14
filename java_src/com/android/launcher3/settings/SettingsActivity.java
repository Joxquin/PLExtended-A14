package com.android.launcher3.settings;

import X.I;
import X.J;
import X.L;
import X.X;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowInsets;
import android.widget.Toolbar;
import androidx.fragment.app.AbstractC0220p0;
import androidx.fragment.app.C0189a;
import androidx.fragment.app.C0204h0;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.K;
import androidx.fragment.app.P;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.settings.SettingsActivity;
import com.android.launcher3.states.RotationHelper;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.systemui.shared.R;
import com.android.systemui.shared.plugins.PluginPrefs;
import java.util.Collections;
import java.util.List;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public class SettingsActivity extends P implements I, J, SharedPreferences.OnSharedPreferenceChangeListener {
    static final String EXTRA_FRAGMENT = ":settings:fragment";
    static final String EXTRA_FRAGMENT_ARGS = ":settings:fragment_args";
    private static final List VALID_PREFERENCE_FRAGMENTS = Collections.emptyList();

    /* loaded from: classes.dex */
    public class LauncherSettingsFragment extends PreferenceFragmentCompat {

        /* renamed from: d  reason: collision with root package name */
        public static final /* synthetic */ int f4977d = 0;
        private Preference mDeveloperOptionPref;
        private String mHighLightKey;
        private boolean mPreferenceHighlighted = false;

        private boolean updateDeveloperOption() {
            getContext();
            Predicate predicate = FeatureFlags.sBooleanReader;
            Context context = getContext();
            MainThreadInitializedObject mainThreadInitializedObject = PluginManagerWrapper.INSTANCE;
            boolean hasPlugins = PluginPrefs.hasPlugins(context);
            Preference preference = this.mDeveloperOptionPref;
            if (preference != null) {
                preference.setEnabled(hasPlugins);
                if (hasPlugins) {
                    getPreferenceScreen().a(this.mDeveloperOptionPref);
                } else {
                    getPreferenceScreen().g(this.mDeveloperOptionPref);
                }
            }
            return hasPlugins;
        }

        public String getParentKeyForPref(String str) {
            return null;
        }

        public boolean initPreference(Preference preference) {
            String key = preference.getKey();
            key.getClass();
            char c4 = 65535;
            switch (key.hashCode()) {
                case -1997663219:
                    if (key.equals("pref_developer_options")) {
                        c4 = 0;
                        break;
                    }
                    break;
                case -789825333:
                    if (key.equals("pref_allowRotation")) {
                        c4 = 1;
                        break;
                    }
                    break;
                case 1623730635:
                    if (key.equals("flag_toggler")) {
                        c4 = 2;
                        break;
                    }
                    break;
            }
            switch (c4) {
                case 0:
                    this.mDeveloperOptionPref = preference;
                    return updateDeveloperOption();
                case 1:
                    DisplayController.Info info = ((DisplayController) DisplayController.INSTANCE.get(getContext())).getInfo();
                    if (info.isTablet(info.realBounds)) {
                        return false;
                    }
                    preference.setDefaultValue(Boolean.valueOf(RotationHelper.getAllowRotationDefaultValue(info)));
                    return true;
                case 2:
                    getContext();
                    Predicate predicate = FeatureFlags.sBooleanReader;
                    return false;
                default:
                    return true;
            }
        }

        @Override // androidx.preference.PreferenceFragmentCompat
        public final void onCreatePreferences(String str, Bundle bundle) {
            Bundle arguments = getArguments();
            String string = arguments == null ? null : arguments.getString(":settings:fragment_args_key");
            this.mHighLightKey = string;
            if (str == null && !TextUtils.isEmpty(string)) {
                str = getParentKeyForPref(this.mHighLightKey);
            }
            if (bundle != null) {
                this.mPreferenceHighlighted = bundle.getBoolean("android:preference_highlighted");
            }
            X preferenceManager = getPreferenceManager();
            preferenceManager.f1970f = "com.android.launcher3.prefs";
            preferenceManager.f1967c = null;
            setPreferencesFromResource(str);
            PreferenceScreen preferenceScreen = getPreferenceScreen();
            int e4 = preferenceScreen.e();
            while (true) {
                e4--;
                if (e4 < 0) {
                    break;
                }
                Preference d4 = preferenceScreen.d(e4);
                if (!initPreference(d4)) {
                    preferenceScreen.g(d4);
                }
            }
            if (getActivity() == null || TextUtils.isEmpty(getPreferenceScreen().getTitle())) {
                return;
            }
            CharSequence title = getPreferenceScreen().getTitle();
            Resources resources = getResources();
            int i4 = R.string.search_pref_screen_title;
            if (title.equals(resources.getString(R.string.search_pref_screen_title))) {
                DeviceProfile deviceProfile = ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(getContext())).getDeviceProfile(getContext());
                PreferenceScreen preferenceScreen2 = getPreferenceScreen();
                if (!deviceProfile.isMultiDisplay && !deviceProfile.isPhone) {
                    i4 = R.string.search_pref_screen_title_tablet;
                }
                preferenceScreen2.setTitle(i4);
            }
            getActivity().setTitle(getPreferenceScreen().getTitle());
        }

        @Override // androidx.fragment.app.K
        public void onResume() {
            PreferenceScreen preferenceScreen;
            super.onResume();
            updateDeveloperOption();
            if (!isAdded() || this.mPreferenceHighlighted) {
                return;
            }
            PreferenceHighlighter preferenceHighlighter = null;
            if (!TextUtils.isEmpty(this.mHighLightKey) && (preferenceScreen = getPreferenceScreen()) != null) {
                RecyclerView listView = getListView();
                int a4 = ((L) listView.getAdapter()).a(this.mHighLightKey);
                if (a4 >= 0) {
                    preferenceHighlighter = new PreferenceHighlighter(listView, a4, preferenceScreen.c(this.mHighLightKey));
                }
            }
            if (preferenceHighlighter != null) {
                getView().postDelayed(preferenceHighlighter, 600L);
                this.mPreferenceHighlighted = true;
                return;
            }
            final RecyclerView listView2 = getListView();
            listView2.post(new Runnable() { // from class: com.android.launcher3.settings.a
                @Override // java.lang.Runnable
                public final void run() {
                    RecyclerView recyclerView = RecyclerView.this;
                    int i4 = SettingsActivity.LauncherSettingsFragment.f4977d;
                    if (recyclerView.hasFocus() || recyclerView.getChildCount() <= 0) {
                        return;
                    }
                    recyclerView.getChildAt(0).performAccessibilityAction(64, null);
                }
            });
        }

        @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.K
        public final void onSaveInstanceState(Bundle bundle) {
            super.onSaveInstanceState(bundle);
            bundle.putBoolean("android:preference_highlighted", this.mPreferenceHighlighted);
        }

        @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.K
        public final void onViewCreated(View view, Bundle bundle) {
            super.onViewCreated(view, bundle);
            RecyclerView listView = getListView();
            final int paddingBottom = listView.getPaddingBottom();
            listView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.android.launcher3.settings.b
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                    int i4 = paddingBottom;
                    int i5 = SettingsActivity.LauncherSettingsFragment.f4977d;
                    view2.setPadding(view2.getPaddingLeft(), view2.getPaddingTop(), view2.getPaddingRight(), windowInsets.getSystemWindowInsetBottom() + i4);
                    return windowInsets.consumeSystemWindowInsets();
                }
            });
            view.setTextDirection(5);
        }
    }

    private boolean startPreference(String str, String str2, Bundle bundle) {
        if (Utilities.ATLEAST_P && getSupportFragmentManager().L()) {
            return false;
        }
        AbstractC0220p0 supportFragmentManager = getSupportFragmentManager();
        C0204h0 E3 = supportFragmentManager.E();
        getClassLoader();
        K a4 = E3.a(str);
        if (!(a4 instanceof DialogFragment)) {
            startActivity(new Intent(this, SettingsActivity.class).putExtra(EXTRA_FRAGMENT, str).putExtra(EXTRA_FRAGMENT_ARGS, bundle));
            return true;
        }
        a4.setArguments(bundle);
        ((DialogFragment) a4).show(supportFragmentManager, str2);
        return true;
    }

    @Override // androidx.fragment.app.P, androidx.activity.l, B.e, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.settings_activity);
        setActionBar((Toolbar) findViewById(R.id.action_bar));
        getWindow().setDecorFitsSystemWindows(false);
        Intent intent = getIntent();
        if (intent.hasExtra(EXTRA_FRAGMENT) || intent.hasExtra(EXTRA_FRAGMENT_ARGS) || intent.hasExtra(":settings:fragment_args_key")) {
            getActionBar().setDisplayHomeAsUpEnabled(true);
        }
        if (bundle == null) {
            Bundle bundleExtra = intent.getBundleExtra(EXTRA_FRAGMENT_ARGS);
            if (bundleExtra == null) {
                bundleExtra = new Bundle();
            }
            String stringExtra = intent.getStringExtra(":settings:fragment_args_key");
            if (!TextUtils.isEmpty(stringExtra)) {
                bundleExtra.putString(":settings:fragment_args_key", stringExtra);
            }
            AbstractC0220p0 supportFragmentManager = getSupportFragmentManager();
            C0204h0 E3 = supportFragmentManager.E();
            getClassLoader();
            String stringExtra2 = getIntent().getStringExtra(EXTRA_FRAGMENT);
            String string = getString(R.string.settings_fragment_name);
            if (TextUtils.isEmpty(stringExtra2)) {
                stringExtra2 = string;
            } else if (!stringExtra2.equals(string) && !VALID_PREFERENCE_FRAGMENTS.contains(stringExtra2)) {
                throw new IllegalArgumentException("Invalid fragment for this activity: ".concat(stringExtra2));
            }
            K a4 = E3.a(stringExtra2);
            a4.setArguments(bundleExtra);
            C0189a c0189a = new C0189a(supportFragmentManager);
            c0189a.g(a4, R.id.content_frame);
            c0189a.d(false);
        }
        LauncherPrefs.getPrefs(getApplicationContext()).registerOnSharedPreferenceChangeListener(this);
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // X.I
    public final boolean onPreferenceStartFragment(Preference preference) {
        return startPreference(preference.getFragment(), preference.getKey(), preference.getExtras());
    }

    @Override // X.J
    public final boolean onPreferenceStartScreen(PreferenceScreen preferenceScreen) {
        Bundle bundle = new Bundle();
        bundle.putString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT", preferenceScreen.getKey());
        return startPreference(getString(R.string.settings_fragment_name), preferenceScreen.getKey(), bundle);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
    }
}
