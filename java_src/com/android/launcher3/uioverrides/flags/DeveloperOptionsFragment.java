package com.android.launcher3.uioverrides.flags;

import X.AbstractC0101y;
import X.InterfaceC0097u;
import X.InterfaceC0098v;
import X.X;
import X.a0;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.ArrayMap;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowInsets;
import android.widget.EditText;
import android.widget.Toast;
import androidx.fragment.app.P;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import androidx.preference.SeekBarPreference;
import androidx.preference.SwitchPreference;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.secondarydisplay.SecondaryDisplayLauncher;
import com.android.launcher3.uioverrides.flags.DeveloperOptionsFragment;
import com.android.launcher3.uioverrides.plugins.PluginEnablerImpl;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.systemui.shared.R;
import com.android.systemui.shared.plugins.PluginActionManager;
import com.android.systemui.shared.plugins.PluginPrefs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public class DeveloperOptionsFragment extends PreferenceFragmentCompat {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f5241d = 0;
    private final SimpleBroadcastReceiver mPluginReceiver = new SimpleBroadcastReceiver(new Consumer() { // from class: c1.f
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            Intent intent = (Intent) obj;
            DeveloperOptionsFragment.this.loadPluginPrefs();
        }
    });
    private PreferenceCategory mPluginsCategory;
    private PreferenceScreen mPreferenceScreen;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class PluginPreference extends SwitchPreference {
        private final List mComponentNames;
        private final String mPackageName;
        private final AbstractC0101y mPluginEnabler;
        private final ResolveInfo mSettingsInfo;

        public PluginPreference(Context context, ResolveInfo resolveInfo, AbstractC0101y abstractC0101y, List list) {
            super(context, null);
            PackageManager packageManager = context.getPackageManager();
            String str = resolveInfo.serviceInfo.applicationInfo.packageName;
            this.mPackageName = str;
            Intent intent = new Intent("com.android.systemui.action.PLUGIN_SETTINGS").setPackage(str);
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 64);
            boolean z4 = false;
            if (resolveInfo.filter != null) {
                Iterator<ResolveInfo> it = queryIntentActivities.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    IntentFilter intentFilter = it.next().filter;
                    if (intentFilter != null && intentFilter.countCategories() > 0) {
                        intent.addCategory(resolveInfo.filter.getAction(0));
                        break;
                    }
                }
            }
            this.mSettingsInfo = packageManager.resolveActivity(intent, 0);
            this.mPluginEnabler = abstractC0101y;
            this.mComponentNames = list;
            setTitle(resolveInfo.loadLabel(packageManager));
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z4 = true;
                    break;
                }
                AbstractC0101y abstractC0101y2 = this.mPluginEnabler;
                MainThreadInitializedObject mainThreadInitializedObject = PluginManagerWrapper.INSTANCE;
                if (!abstractC0101y2.getBoolean(PluginEnablerImpl.pluginEnabledKey((ComponentName) it2.next()), true)) {
                    break;
                }
            }
            setChecked(z4);
            setWidgetLayoutResource();
        }

        public static /* synthetic */ void a(PluginPreference pluginPreference) {
            pluginPreference.getClass();
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", pluginPreference.mPackageName, null));
            pluginPreference.getContext().startActivity(intent);
        }

        public static /* synthetic */ void c(PluginPreference pluginPreference, boolean z4, View view) {
            pluginPreference.getClass();
            if (z4) {
                Context context = view.getContext();
                Intent intent = new Intent();
                ActivityInfo activityInfo = pluginPreference.mSettingsInfo.activityInfo;
                context.startActivity(intent.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name)));
            }
        }

        @Override // androidx.preference.SwitchPreference, androidx.preference.Preference
        public final void onBindViewHolder(a0 a0Var) {
            super.onBindViewHolder(a0Var);
            final boolean z4 = this.mSettingsInfo != null;
            a0Var.a(R.id.settings).setVisibility(z4 ? 0 : 8);
            a0Var.a(R.id.divider).setVisibility(z4 ? 0 : 8);
            a0Var.a(R.id.settings).setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.uioverrides.flags.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DeveloperOptionsFragment.PluginPreference.c(DeveloperOptionsFragment.PluginPreference.this, z4, view);
                }
            });
            a0Var.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.launcher3.uioverrides.flags.b
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    DeveloperOptionsFragment.PluginPreference.a(DeveloperOptionsFragment.PluginPreference.this);
                    return true;
                }
            });
        }

        @Override // androidx.preference.Preference
        public final void persistBoolean(boolean z4) {
            boolean z5 = false;
            for (ComponentName componentName : this.mComponentNames) {
                AbstractC0101y abstractC0101y = this.mPluginEnabler;
                MainThreadInitializedObject mainThreadInitializedObject = PluginManagerWrapper.INSTANCE;
                if (abstractC0101y.getBoolean(PluginEnablerImpl.pluginEnabledKey(componentName), true) != z4) {
                    this.mPluginEnabler.putBoolean(PluginEnablerImpl.pluginEnabledKey(componentName), z4);
                    z5 = true;
                }
            }
            if (z5) {
                String str = this.mPackageName;
                getContext().sendBroadcast(new Intent("com.android.systemui.action.PLUGIN_CHANGED", str != null ? Uri.fromParts("package", str, null) : null));
            }
            setChecked(z4);
        }
    }

    public static /* synthetic */ void d(DeveloperOptionsFragment developerOptionsFragment, Context context, AbstractC0101y abstractC0101y, Pair pair, ArrayList arrayList) {
        developerOptionsFragment.getClass();
        final String str = (String) pair.first;
        List list = (List) arrayList.stream().map(new Function() { // from class: c1.h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String str2 = str;
                int i4 = DeveloperOptionsFragment.f5241d;
                return new ComponentName(str2, ((ResolveInfo) ((Pair) obj).second).serviceInfo.name);
            }
        }).collect(Collectors.toList());
        if (list.isEmpty()) {
            return;
        }
        PluginPreference pluginPreference = new PluginPreference(context, (ResolveInfo) ((Pair) arrayList.get(0)).second, abstractC0101y, list);
        pluginPreference.setSummary("Plugins: " + ((String) arrayList.stream().map(new c1.b(1)).collect(Collectors.joining(", "))));
        developerOptionsFragment.mPluginsCategory.a(pluginPreference);
    }

    public static /* bridge */ /* synthetic */ void f(DeveloperOptionsFragment developerOptionsFragment, String str, PreferenceScreen preferenceScreen) {
        developerOptionsFragment.getClass();
        filterPreferences(str, preferenceScreen);
    }

    private static void filterPreferences(String str, PreferenceGroup preferenceGroup) {
        int e4 = preferenceGroup.e();
        int i4 = 0;
        for (int i5 = 0; i5 < e4; i5++) {
            Preference d4 = preferenceGroup.d(i5);
            if (d4 instanceof PreferenceGroup) {
                filterPreferences(str, (PreferenceGroup) d4);
            } else {
                String replace = d4.getTitle().toString().toLowerCase().replace("_", " ");
                if (str.isEmpty() || replace.contains(str)) {
                    d4.setVisible(true);
                } else {
                    d4.setVisible(false);
                    i4++;
                }
            }
        }
        preferenceGroup.setVisible(i4 != e4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadPluginPrefs() {
        String[] split;
        PreferenceCategory preferenceCategory = this.mPluginsCategory;
        if (preferenceCategory != null) {
            this.mPreferenceScreen.g(preferenceCategory);
        }
        P activity = getActivity();
        MainThreadInitializedObject mainThreadInitializedObject = PluginManagerWrapper.INSTANCE;
        if (!PluginPrefs.hasPlugins(activity)) {
            this.mPluginsCategory = null;
            return;
        }
        this.mPluginsCategory = newCategory("Plugins");
        PluginManagerWrapper pluginManagerWrapper = (PluginManagerWrapper) PluginManagerWrapper.INSTANCE.get(getContext());
        final Context context = getContext();
        PackageManager packageManager = getContext().getPackageManager();
        Set<String> pluginActions = pluginManagerWrapper.getPluginActions();
        ArrayMap arrayMap = new ArrayMap();
        Set set = (Set) packageManager.getPackagesHoldingPermissions(new String[]{PluginActionManager.PLUGIN_PERMISSION}, 512).stream().map(new c1.b(0)).collect(Collectors.toSet());
        for (String str : pluginActions) {
            String replace = str.replace("com.android.systemui.action.PLUGIN_", "").replace("com.android.launcher3.action.PLUGIN_", "");
            StringBuilder sb = new StringBuilder();
            for (String str2 : replace.split("_")) {
                if (sb.length() != 0) {
                    sb.append(' ');
                }
                sb.append(str2.substring(0, 1));
                sb.append(str2.substring(1).toLowerCase());
            }
            String sb2 = sb.toString();
            for (ResolveInfo resolveInfo : packageManager.queryIntentServices(new Intent(str), 576)) {
                String str3 = resolveInfo.serviceInfo.packageName;
                if (set.contains(str3)) {
                    Pair create = Pair.create(str3, resolveInfo.serviceInfo.processName);
                    if (!arrayMap.containsKey(create)) {
                        arrayMap.put(create, new ArrayList());
                    }
                    ((ArrayList) arrayMap.get(create)).add(Pair.create(sb2, resolveInfo));
                }
            }
        }
        final PluginEnablerImpl pluginEnabler = pluginManagerWrapper.getPluginEnabler();
        arrayMap.forEach(new BiConsumer() { // from class: c1.c
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                DeveloperOptionsFragment.d(DeveloperOptionsFragment.this, context, pluginEnabler, (Pair) obj, (ArrayList) obj2);
            }
        });
    }

    private PreferenceCategory newCategory(String str) {
        PreferenceCategory preferenceCategory = new PreferenceCategory(getContext(), null);
        preferenceCategory.setOrder(Integer.MAX_VALUE);
        preferenceCategory.setTitle(str);
        if (!TextUtils.isEmpty(null)) {
            preferenceCategory.setSummary((CharSequence) null);
        }
        this.mPreferenceScreen.a(preferenceCategory);
        return preferenceCategory;
    }

    @Override // androidx.fragment.app.K
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public final void onCreatePreferences(String str, Bundle bundle) {
        this.mPluginReceiver.registerPkgActions(getContext(), null, "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED");
        this.mPluginReceiver.register(getContext(), "android.intent.action.USER_UNLOCKED");
        X preferenceManager = getPreferenceManager();
        Context context = getContext();
        preferenceManager.getClass();
        PreferenceScreen preferenceScreen = new PreferenceScreen(context, null);
        preferenceScreen.onAttachedToHierarchy(preferenceManager);
        this.mPreferenceScreen = preferenceScreen;
        setPreferenceScreen(preferenceScreen);
        getContext();
        Predicate predicate = FeatureFlags.sBooleanReader;
        loadPluginPrefs();
        final Context context2 = getContext();
        if (context2 != null) {
            final Intent addFlags = new Intent("com.android.quickstep.action.GESTURE_SANDBOX").setPackage(context2.getPackageName()).addFlags(268435456);
            if (addFlags.resolveActivity(context2.getPackageManager()) != null) {
                PreferenceCategory newCategory = newCategory("Gesture Navigation Sandbox");
                newCategory.setSummary("Learn and practice navigation gestures");
                Preference preference = new Preference(context2);
                preference.setKey("launchTutorialStepMenu");
                preference.setTitle("Launch Gesture Tutorial Steps menu");
                preference.setSummary("Select a gesture tutorial step.");
                preference.setOnPreferenceClickListener(new InterfaceC0098v(this) { // from class: c1.e

                    /* renamed from: b  reason: collision with root package name */
                    public final /* synthetic */ DeveloperOptionsFragment f4261b;

                    {
                        this.f4261b = this;
                    }

                    @Override // X.InterfaceC0098v
                    public final void a(Preference preference2) {
                        int i4 = r3;
                        DeveloperOptionsFragment developerOptionsFragment = this.f4261b;
                        Object obj = addFlags;
                        switch (i4) {
                            case 0:
                                int i5 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", true));
                                return;
                            case 1:
                                int i6 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"HOME_NAVIGATION", "BACK_NAVIGATION", "OVERVIEW_NAVIGATION"}));
                                return;
                            case 2:
                                int i7 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"BACK_NAVIGATION"}));
                                return;
                            case 3:
                                int i8 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"HOME_NAVIGATION"}));
                                return;
                            case 4:
                                int i9 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"OVERVIEW_NAVIGATION"}));
                                return;
                            default:
                                int i10 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(new Intent((Context) obj, SecondaryDisplayLauncher.class));
                                return;
                        }
                    }
                });
                newCategory.a(preference);
                Preference preference2 = new Preference(context2);
                preference2.setKey("launchOnboardingTutorial");
                preference2.setTitle("Launch Onboarding Tutorial");
                preference2.setSummary("Learn the basic navigation gestures.");
                preference2.setOnPreferenceClickListener(new InterfaceC0098v(this) { // from class: c1.e

                    /* renamed from: b  reason: collision with root package name */
                    public final /* synthetic */ DeveloperOptionsFragment f4261b;

                    {
                        this.f4261b = this;
                    }

                    @Override // X.InterfaceC0098v
                    public final void a(Preference preference22) {
                        int i4 = r3;
                        DeveloperOptionsFragment developerOptionsFragment = this.f4261b;
                        Object obj = addFlags;
                        switch (i4) {
                            case 0:
                                int i5 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", true));
                                return;
                            case 1:
                                int i6 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"HOME_NAVIGATION", "BACK_NAVIGATION", "OVERVIEW_NAVIGATION"}));
                                return;
                            case 2:
                                int i7 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"BACK_NAVIGATION"}));
                                return;
                            case 3:
                                int i8 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"HOME_NAVIGATION"}));
                                return;
                            case 4:
                                int i9 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"OVERVIEW_NAVIGATION"}));
                                return;
                            default:
                                int i10 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(new Intent((Context) obj, SecondaryDisplayLauncher.class));
                                return;
                        }
                    }
                });
                newCategory.a(preference2);
                Preference preference3 = new Preference(context2);
                preference3.setKey("launchBackTutorial");
                preference3.setTitle("Launch Back Tutorial");
                preference3.setSummary("Learn how to use the Back gesture");
                preference3.setOnPreferenceClickListener(new InterfaceC0098v(this) { // from class: c1.e

                    /* renamed from: b  reason: collision with root package name */
                    public final /* synthetic */ DeveloperOptionsFragment f4261b;

                    {
                        this.f4261b = this;
                    }

                    @Override // X.InterfaceC0098v
                    public final void a(Preference preference22) {
                        int i4 = r3;
                        DeveloperOptionsFragment developerOptionsFragment = this.f4261b;
                        Object obj = addFlags;
                        switch (i4) {
                            case 0:
                                int i5 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", true));
                                return;
                            case 1:
                                int i6 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"HOME_NAVIGATION", "BACK_NAVIGATION", "OVERVIEW_NAVIGATION"}));
                                return;
                            case 2:
                                int i7 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"BACK_NAVIGATION"}));
                                return;
                            case 3:
                                int i8 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"HOME_NAVIGATION"}));
                                return;
                            case 4:
                                int i9 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"OVERVIEW_NAVIGATION"}));
                                return;
                            default:
                                int i10 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(new Intent((Context) obj, SecondaryDisplayLauncher.class));
                                return;
                        }
                    }
                });
                newCategory.a(preference3);
                Preference preference4 = new Preference(context2);
                preference4.setKey("launchHomeTutorial");
                preference4.setTitle("Launch Home Tutorial");
                preference4.setSummary("Learn how to use the Home gesture");
                preference4.setOnPreferenceClickListener(new InterfaceC0098v(this) { // from class: c1.e

                    /* renamed from: b  reason: collision with root package name */
                    public final /* synthetic */ DeveloperOptionsFragment f4261b;

                    {
                        this.f4261b = this;
                    }

                    @Override // X.InterfaceC0098v
                    public final void a(Preference preference22) {
                        int i4 = r3;
                        DeveloperOptionsFragment developerOptionsFragment = this.f4261b;
                        Object obj = addFlags;
                        switch (i4) {
                            case 0:
                                int i5 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", true));
                                return;
                            case 1:
                                int i6 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"HOME_NAVIGATION", "BACK_NAVIGATION", "OVERVIEW_NAVIGATION"}));
                                return;
                            case 2:
                                int i7 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"BACK_NAVIGATION"}));
                                return;
                            case 3:
                                int i8 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"HOME_NAVIGATION"}));
                                return;
                            case 4:
                                int i9 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"OVERVIEW_NAVIGATION"}));
                                return;
                            default:
                                int i10 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(new Intent((Context) obj, SecondaryDisplayLauncher.class));
                                return;
                        }
                    }
                });
                newCategory.a(preference4);
                Preference preference5 = new Preference(context2);
                preference5.setKey("launchOverviewTutorial");
                preference5.setTitle("Launch Overview Tutorial");
                preference5.setSummary("Learn how to use the Overview gesture");
                preference5.setOnPreferenceClickListener(new InterfaceC0098v(this) { // from class: c1.e

                    /* renamed from: b  reason: collision with root package name */
                    public final /* synthetic */ DeveloperOptionsFragment f4261b;

                    {
                        this.f4261b = this;
                    }

                    @Override // X.InterfaceC0098v
                    public final void a(Preference preference22) {
                        int i4 = r3;
                        DeveloperOptionsFragment developerOptionsFragment = this.f4261b;
                        Object obj = addFlags;
                        switch (i4) {
                            case 0:
                                int i5 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", true));
                                return;
                            case 1:
                                int i6 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"HOME_NAVIGATION", "BACK_NAVIGATION", "OVERVIEW_NAVIGATION"}));
                                return;
                            case 2:
                                int i7 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"BACK_NAVIGATION"}));
                                return;
                            case 3:
                                int i8 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"HOME_NAVIGATION"}));
                                return;
                            case 4:
                                int i9 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"OVERVIEW_NAVIGATION"}));
                                return;
                            default:
                                int i10 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(new Intent((Context) obj, SecondaryDisplayLauncher.class));
                                return;
                        }
                    }
                });
                newCategory.a(preference5);
                Preference preference6 = new Preference(context2);
                preference6.setKey("launchSecondaryDisplay");
                preference6.setTitle("Launch Secondary Display");
                preference6.setSummary("Launch secondary display activity");
                preference6.setOnPreferenceClickListener(new InterfaceC0098v(this) { // from class: c1.e

                    /* renamed from: b  reason: collision with root package name */
                    public final /* synthetic */ DeveloperOptionsFragment f4261b;

                    {
                        this.f4261b = this;
                    }

                    @Override // X.InterfaceC0098v
                    public final void a(Preference preference22) {
                        int i4 = r3;
                        DeveloperOptionsFragment developerOptionsFragment = this.f4261b;
                        Object obj = context2;
                        switch (i4) {
                            case 0:
                                int i5 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", true));
                                return;
                            case 1:
                                int i6 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"HOME_NAVIGATION", "BACK_NAVIGATION", "OVERVIEW_NAVIGATION"}));
                                return;
                            case 2:
                                int i7 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"BACK_NAVIGATION"}));
                                return;
                            case 3:
                                int i8 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"HOME_NAVIGATION"}));
                                return;
                            case 4:
                                int i9 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(((Intent) obj).putExtra("use_tutorial_menu", false).putExtra("tutorial_steps", new String[]{"OVERVIEW_NAVIGATION"}));
                                return;
                            default:
                                int i10 = DeveloperOptionsFragment.f5241d;
                                developerOptionsFragment.getClass();
                                developerOptionsFragment.startActivity(new Intent((Context) obj, SecondaryDisplayLauncher.class));
                                return;
                        }
                    }
                });
                newCategory.a(preference6);
            }
        }
        PreferenceCategory newCategory2 = newCategory("Onboarding Flows");
        newCategory2.setSummary("Reset these if you want to see the education again.");
        for (Map.Entry entry : OnboardingPrefs.ALL_PREF_KEYS.entrySet()) {
            final String str2 = (String) entry.getKey();
            final String[] strArr = (String[]) entry.getValue();
            Preference preference7 = new Preference(getContext());
            preference7.setTitle(str2);
            preference7.setSummary("Tap to reset");
            preference7.setOnPreferenceClickListener(new InterfaceC0098v() { // from class: c1.g
                @Override // X.InterfaceC0098v
                public final void a(Preference preference8) {
                    int i4 = DeveloperOptionsFragment.f5241d;
                    DeveloperOptionsFragment developerOptionsFragment = DeveloperOptionsFragment.this;
                    SharedPreferences.Editor edit = LauncherPrefs.getPrefs(developerOptionsFragment.getContext()).edit();
                    for (String str3 : strArr) {
                        edit.remove(str3);
                    }
                    edit.apply();
                    Toast.makeText(developerOptionsFragment.getContext(), "Reset " + str2, 0).show();
                }
            });
            newCategory2.a(preference7);
        }
        if (FeatureFlags.ENABLE_ALL_APPS_FROM_OVERVIEW.get()) {
            PreferenceCategory newCategory3 = newCategory("All Apps from Overview Config");
            SeekBarPreference seekBarPreference = new SeekBarPreference(getContext(), null);
            seekBarPreference.setTitle("Threshold to open All Apps from Overview");
            seekBarPreference.setSingleLineTitle();
            int i4 = seekBarPreference.f3710e;
            if (500 >= i4) {
                i4 = 500;
            }
            if (i4 != seekBarPreference.f3711f) {
                seekBarPreference.f3711f = i4;
                seekBarPreference.notifyChanged();
            }
            int i5 = seekBarPreference.f3711f;
            if (105 <= i5) {
                i5 = 105;
            }
            if (i5 != seekBarPreference.f3710e) {
                seekBarPreference.f3710e = i5;
                seekBarPreference.notifyChanged();
            }
            seekBarPreference.f3718m = true;
            seekBarPreference.setIconSpaceReserved();
            seekBarPreference.setPersistent();
            seekBarPreference.setOnPreferenceChangeListener(new InterfaceC0097u() { // from class: c1.a
                @Override // X.InterfaceC0097u
                public final void a(Preference preference8, Object obj) {
                    int i6 = DeveloperOptionsFragment.f5241d;
                    Context context3 = DeveloperOptionsFragment.this.getContext();
                    LauncherPrefs.Companion companion = LauncherPrefs.Companion;
                    LauncherPrefs.Companion.get(context3).put(LauncherPrefs.ALL_APPS_OVERVIEW_THRESHOLD, obj);
                    preference8.setSummary(String.valueOf(((Integer) obj).intValue() / 100.0f));
                }
            });
            Context context3 = getContext();
            LauncherPrefs.Companion companion = LauncherPrefs.Companion;
            int intValue = ((Integer) LauncherPrefs.Companion.get(context3).get(LauncherPrefs.ALL_APPS_OVERVIEW_THRESHOLD)).intValue();
            seekBarPreference.a(intValue, true);
            seekBarPreference.getOnPreferenceChangeListener().a(seekBarPreference, Integer.valueOf(intValue));
            newCategory3.a(seekBarPreference);
        }
        if (getActivity() != null) {
            getActivity().setTitle("Developer Options");
        }
    }

    @Override // androidx.fragment.app.K
    public final void onDestroy() {
        super.onDestroy();
        SimpleBroadcastReceiver simpleBroadcastReceiver = this.mPluginReceiver;
        Context context = getContext();
        simpleBroadcastReceiver.getClass();
        try {
            context.unregisterReceiver(simpleBroadcastReceiver);
        } catch (IllegalArgumentException unused) {
        }
    }

    @Override // androidx.fragment.app.K
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.K
    public final void onStop() {
        super.onStop();
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.K
    public final void onViewCreated(View view, Bundle bundle) {
        String string;
        super.onViewCreated(view, bundle);
        EditText editText = (EditText) view.findViewById(R.id.filter_box);
        editText.setVisibility(0);
        editText.addTextChangedListener(new TextWatcher() { // from class: com.android.launcher3.uioverrides.flags.DeveloperOptionsFragment.1
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                String replace = editable.toString().toLowerCase().replace("_", " ");
                DeveloperOptionsFragment developerOptionsFragment = DeveloperOptionsFragment.this;
                DeveloperOptionsFragment.f(developerOptionsFragment, replace, developerOptionsFragment.mPreferenceScreen);
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
            }
        });
        if (getArguments() != null && (string = getArguments().getString(":settings:fragment_args_key")) != null) {
            editText.setText(string);
        }
        RecyclerView listView = getListView();
        final int paddingBottom = listView.getPaddingBottom();
        listView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: c1.d
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                int i4 = paddingBottom;
                int i5 = DeveloperOptionsFragment.f5241d;
                view2.setPadding(view2.getPaddingLeft(), view2.getPaddingTop(), view2.getPaddingRight(), windowInsets.getSystemWindowInsetBottom() + i4);
                return windowInsets.consumeSystemWindowInsets();
            }
        });
    }
}
