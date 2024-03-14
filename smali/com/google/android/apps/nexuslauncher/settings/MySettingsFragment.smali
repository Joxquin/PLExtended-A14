.class public Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;
.super Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/m;


# static fields
.field public static final synthetic g:I


# instance fields
.field public final e:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, La2/e;

    invoke-direct {v1, p0}, La2/e;-><init>(Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;->e:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;->f:Z

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/apps/nexuslauncher/p;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final getParentKeyForPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "search_settings"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final initPreference(Landroidx/preference/Preference;)Z
    .locals 21

    move-object/from16 v1, p1

    const-string v2, "MySettingsFragment"

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, ":settings:from_qsb_key"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const-string v6, "com.google.android.googlequicksearchbox"

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/u;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/apps/nexuslauncher/p;

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/google/android/apps/nexuslauncher/p;-><init>(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/n;)V

    :goto_1
    move-object v7, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "launcher"

    const-string v0, "enable_one_search"

    invoke-static {v9, v0, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    iget-boolean v0, v7, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    iget-object v11, v7, Lcom/google/android/apps/nexuslauncher/p;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "Google"

    move-object v12, v0

    goto :goto_2

    :cond_2
    move-object v12, v11

    :goto_2
    :try_start_0
    invoke-virtual {v8, v11, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v11, "Failed to get AGA label"

    invoke-static {v2, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-static {v8}, Lcom/google/android/apps/nexuslauncher/allapps/x1;->a(Landroid/content/pm/PackageManager;)Z

    move-result v0

    const-string v13, "pref_allowShortcutResult"

    const-string v14, "pref_allowDeviceResult"

    const-string v11, "pref_allowPixelTipsResult"

    const/16 v16, 0x3

    const/16 v17, 0x4

    const-string v15, "pref_allowSettingsResult"

    const-string v3, "pref_allowPlaySearchResult"

    const-string v4, "pref_allowPeopleResult"

    const/16 v18, -0x1

    move/from16 v19, v5

    if-eqz v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    :goto_4
    move/from16 v5, v18

    goto :goto_5

    :sswitch_0
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_4

    :cond_3
    const/4 v5, 0x5

    goto :goto_5

    :sswitch_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v5, v17

    goto :goto_5

    :sswitch_2
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v5, v16

    goto :goto_5

    :sswitch_3
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x2

    goto :goto_5

    :sswitch_4
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x1

    goto :goto_5

    :sswitch_5
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_5
    packed-switch v5, :pswitch_data_0

    const/4 v5, 0x0

    goto :goto_6

    :pswitch_0
    const/4 v5, 0x1

    :goto_6
    if-eqz v5, :cond_9

    const/4 v5, 0x0

    return v5

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_1

    goto/16 :goto_7

    :sswitch_6
    const-string v3, "pref_enable_minus_one"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_7

    :cond_a
    const/16 v11, 0xe

    goto/16 :goto_8

    :sswitch_7
    const-string v3, "search_settings"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_7

    :cond_b
    const/16 v11, 0xd

    goto/16 :goto_8

    :sswitch_8
    const-string v3, "search_aiai_corpus"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_7

    :cond_c
    const/16 v11, 0xc

    goto/16 :goto_8

    :sswitch_9
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_7

    :cond_d
    const/16 v11, 0xb

    goto/16 :goto_8

    :sswitch_a
    const-string v3, "pref_suggestions"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_7

    :cond_e
    const/16 v11, 0xa

    goto/16 :goto_8

    :sswitch_b
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_7

    :cond_f
    const/16 v11, 0x9

    goto/16 :goto_8

    :sswitch_c
    const-string v3, "pref_allowWebResult"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_7

    :cond_10
    const/16 v11, 0x8

    goto/16 :goto_8

    :sswitch_d
    const-string v3, "pref_search_show_keyboard"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_7

    :cond_11
    const/4 v11, 0x7

    goto :goto_8

    :sswitch_e
    const-string v3, "search_web_settings"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_7

    :cond_12
    const/4 v11, 0x6

    goto :goto_8

    :sswitch_f
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_7

    :cond_13
    const/4 v11, 0x5

    goto :goto_8

    :sswitch_10
    const-string v3, "pref_overview_action_suggestions"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_7

    :cond_14
    move/from16 v11, v17

    goto :goto_8

    :sswitch_11
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_7

    :cond_15
    move/from16 v11, v16

    goto :goto_8

    :sswitch_12
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_7

    :cond_16
    const/4 v11, 0x2

    goto :goto_8

    :sswitch_13
    const-string v3, "search_pref_experiments"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_7

    :cond_17
    const/4 v11, 0x1

    goto :goto_8

    :sswitch_14
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_7

    :cond_18
    const/4 v11, 0x0

    goto :goto_8

    :goto_7
    move/from16 v11, v18

    :goto_8
    iget-boolean v3, v7, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    packed-switch v11, :pswitch_data_1

    const/4 v2, 0x1

    instance-of v0, v1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_25

    move-object v0, v1

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->e()I

    move-result v3

    sub-int/2addr v3, v2

    goto/16 :goto_14

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f13023e

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f130193

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_19

    const/4 v3, 0x1

    goto :goto_a

    :cond_19
    const/4 v3, 0x0

    :goto_a
    return v3

    :pswitch_2
    const-string v0, "use_fallback_app_search"

    const/4 v2, 0x0

    invoke-static {v9, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-nez v0, :cond_1a

    const/4 v3, 0x1

    goto :goto_b

    :cond_1a
    move v3, v2

    :goto_b
    return v3

    :pswitch_3
    const/4 v2, 0x0

    if-nez v0, :cond_1b

    return v2

    :cond_1b
    sget-object v0, La2/f;->b:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    :pswitch_4
    const/4 v1, 0x1

    const-string v0, "device_personalization_services"

    const-string v2, "Echo__enable_people_module"

    invoke-static {v0, v2, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ACTION_CONTENT_SUGGESTIONS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x100000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1c
    if-eqz v0, :cond_1d

    const/4 v3, 0x1

    goto :goto_c

    :cond_1d
    const/4 v3, 0x0

    :goto_c
    return v3

    :pswitch_6
    :try_start_2
    const-string v0, "com.android.vending"

    const/4 v4, 0x0

    invoke-virtual {v8, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    const-string v4, "Failed to get Play label"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Google Play Store"

    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1301da

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1301d9

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_UNINSTALLED_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_e

    :cond_1e
    const/4 v3, 0x0

    :goto_e
    return v3

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1301e1

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_1f

    if-nez v19, :cond_1f

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_f

    :cond_1f
    const/4 v3, 0x0

    :goto_f
    return v3

    :pswitch_8
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SHOW_KEYBOARD_OPTION_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_20

    if-nez v19, :cond_20

    const/4 v3, 0x1

    goto :goto_10

    :cond_20
    const/4 v3, 0x0

    :goto_10
    return v3

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1301ec

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v0, La2/f;->a:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    if-eqz v10, :cond_21

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    goto :goto_11

    :cond_21
    const/4 v3, 0x0

    :goto_11
    return v3

    :pswitch_a
    :try_start_3
    const-string v0, "com.android.settings"
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v8, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v1, 0x1

    xor-int/lit8 v0, v10, 0x1

    return v0

    :catch_3
    const/4 v2, 0x0

    :catch_4
    return v2

    :pswitch_b
    const/4 v1, 0x1

    return v1

    :pswitch_c
    const/4 v2, 0x0

    :try_start_6
    const-string v0, "com.google.android.apps.tips"

    invoke-virtual {v8, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    const/4 v1, 0x1

    xor-int/lit8 v0, v10, 0x1

    return v0

    :catch_5
    const/4 v1, 0x0

    return v1

    :pswitch_d
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_zero_state_query_ready"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_22

    if-nez v19, :cond_22

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->o:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v3, 0x1

    goto :goto_12

    :cond_22
    const/4 v3, 0x0

    :goto_12
    return v3

    :pswitch_e
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    goto :goto_13

    :cond_23
    const/4 v2, 0x0

    :goto_13
    return v2

    :pswitch_f
    const/4 v2, 0x1

    xor-int/lit8 v0, v10, 0x1

    return v0

    :goto_14
    if-ltz v3, :cond_25

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->d(I)Landroidx/preference/Preference;

    move-result-object v2

    move-object/from16 v4, p0

    invoke-virtual {v4, v2}, Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;->initPreference(Landroidx/preference/Preference;)Z

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->g(Landroidx/preference/Preference;)V

    :cond_24
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    :cond_25
    move-object/from16 v4, p0

    invoke-super/range {p0 .. p1}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->initPreference(Landroidx/preference/Preference;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x62c80070 -> :sswitch_5
        -0x2050b20 -> :sswitch_4
        0x2f7b2ae -> :sswitch_3
        0x1e82c5ad -> :sswitch_2
        0x56787986 -> :sswitch_1
        0x61163a59 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x62c80070 -> :sswitch_14
        -0x4444764f -> :sswitch_13
        -0x2050b20 -> :sswitch_12
        0x2f7b2ae -> :sswitch_11
        0x1069dad0 -> :sswitch_10
        0x1e82c5ad -> :sswitch_f
        0x29d115e5 -> :sswitch_e
        0x45e1452e -> :sswitch_d
        0x508db0e4 -> :sswitch_c
        0x56787986 -> :sswitch_b
        0x583d5ad3 -> :sswitch_a
        0x61163a59 -> :sswitch_9
        0x6c359880 -> :sswitch_8
        0x740164da -> :sswitch_7
        0x7666d0f7 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/u;

    invoke-virtual {p1, p0}, Lcom/google/android/apps/nexuslauncher/u;->a(Lcom/google/android/apps/nexuslauncher/m;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;->e:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->registerPkgActions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/K;->onDestroy()V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/u;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/u;->c(Lcom/google/android/apps/nexuslauncher/m;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;->e:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/settings/SettingsActivity$LauncherSettingsFragment;->onResume()V

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/settings/MySettingsFragment;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method
