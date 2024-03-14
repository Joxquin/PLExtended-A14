.class public Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field private final mPluginReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private mPluginsCategory:Landroidx/preference/PreferenceCategory;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lc1/f;

    invoke-direct {v1, p0}, Lc1/f;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->mPluginReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->loadPluginPrefs()V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Landroid/content/Context;LX/y;Landroid/util/Pair;Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lc1/h;

    invoke-direct {v1, p3}, Lc1/h;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;LX/y;Ljava/util/List;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Plugins: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lc1/b;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lc1/b;-><init>(I)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    const-string p3, ", "

    invoke-static {p3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->mPluginsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->a(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;)Landroidx/preference/PreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Ljava/lang/String;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->filterPreferences(Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method private static filterPreferences(Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->e()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->d(I)Landroidx/preference/Preference;

    move-result-object v5

    instance-of v6, v5, Landroidx/preference/PreferenceGroup;

    if-eqz v6, :cond_0

    check-cast v5, Landroidx/preference/PreferenceGroup;

    invoke-static {p0, v5}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->filterPreferences(Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    const-string v8, " "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eq v3, v0, :cond_4

    move v1, v4

    :cond_4
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private loadPluginPrefs()V
    .locals 15

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->mPluginsCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->g(Landroidx/preference/Preference;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {v0}, Lcom/android/systemui/shared/plugins/PluginPrefs;->hasPlugins(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->mPluginsCategory:Landroidx/preference/PreferenceCategory;

    return-void

    :cond_1
    const-string v0, "Plugins"

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->newCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->mPluginsCategory:Landroidx/preference/PreferenceCategory;

    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->getPluginActions()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    const-string v5, "com.android.systemui.permission.PLUGIN"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x200

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lc1/b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lc1/b;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "com.android.systemui.action.PLUGIN_"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "com.android.launcher3.action.PLUGIN_"

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    move v11, v7

    :goto_0
    if-ge v11, v10, :cond_4

    aget-object v12, v8, v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eqz v13, :cond_3

    const/16 v13, 0x20

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v13, 0x1

    invoke-virtual {v12, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x240

    invoke-virtual {v2, v9, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_1

    :cond_5
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->getPluginEnabler()Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;

    move-result-object v0

    new-instance v2, Lc1/c;

    invoke-direct {v2, p0, v1, v0}, Lc1/c;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Landroid/content/Context;Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;)V

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private newCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;
    .locals 3

    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->a(Landroidx/preference/Preference;)V

    return-object v0
.end method


# virtual methods
.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public final onCreatePreferences(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->mPluginReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->registerPkgActions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->mPluginReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "android.intent.action.USER_UNLOCKED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()LX/X;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/preference/PreferenceScreen;

    invoke-direct {v0, p2, v1}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(LX/X;)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->sBooleanReader:Ljava/util/function/Predicate;

    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->loadPluginPrefs()V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.quickstep.action.GESTURE_SANDBOX"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v2, "Gesture Navigation Sandbox"

    invoke-direct {p0, v2}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->newCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    move-result-object v2

    const-string v3, "Learn and practice navigation gestures"

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v4, "launchTutorialStepMenu"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v4, "Launch Gesture Tutorial Steps menu"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v4, "Select a gesture tutorial step."

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v4, Lc1/e;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v5}, Lc1/e;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(LX/v;)V

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->a(Landroidx/preference/Preference;)V

    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v4, "launchOnboardingTutorial"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v4, "Launch Onboarding Tutorial"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v4, "Learn the basic navigation gestures."

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v4, Lc1/e;

    invoke-direct {v4, p0, v0, p2}, Lc1/e;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(LX/v;)V

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->a(Landroidx/preference/Preference;)V

    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v4, "launchBackTutorial"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v4, "Launch Back Tutorial"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v4, "Learn how to use the Back gesture"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v4, Lc1/e;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v0, v5}, Lc1/e;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(LX/v;)V

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->a(Landroidx/preference/Preference;)V

    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v4, "launchHomeTutorial"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v4, "Launch Home Tutorial"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v4, "Learn how to use the Home gesture"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v4, Lc1/e;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v0, v5}, Lc1/e;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(LX/v;)V

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->a(Landroidx/preference/Preference;)V

    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v4, "launchOverviewTutorial"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v4, "Launch Overview Tutorial"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v4, "Learn how to use the Overview gesture"

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v4, Lc1/e;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v0, v5}, Lc1/e;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(LX/v;)V

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->a(Landroidx/preference/Preference;)V

    new-instance v0, Landroidx/preference/Preference;

    invoke-direct {v0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v3, "launchSecondaryDisplay"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v3, "Launch Secondary Display"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v3, "Launch secondary display activity"

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v3, Lc1/e;

    const/4 v4, 0x5

    invoke-direct {v3, p0, p1, v4}, Lc1/e;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(LX/v;)V

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->a(Landroidx/preference/Preference;)V

    :goto_0
    const-string p1, "Onboarding Flows"

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->newCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    const-string v0, "Reset these if you want to see the education again."

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/android/launcher3/util/OnboardingPrefs;->ALL_PREF_KEYS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v4, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v5, "Tap to reset"

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v5, Lc1/g;

    invoke-direct {v5, p0, v2, v3}, Lc1/g;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(LX/v;)V

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->a(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_FROM_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "All Apps from Overview Config"

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->newCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    new-instance v0, Landroidx/preference/SeekBarPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "Threshold to open All Apps from Overview"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->setSingleLineTitle()V

    iget v1, v0, Landroidx/preference/SeekBarPreference;->e:I

    const/16 v2, 0x1f4

    if-ge v2, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iget v2, v0, Landroidx/preference/SeekBarPreference;->f:I

    if-eq v1, v2, :cond_4

    iput v1, v0, Landroidx/preference/SeekBarPreference;->f:I

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_4
    iget v1, v0, Landroidx/preference/SeekBarPreference;->f:I

    const/16 v2, 0x69

    if-le v2, v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    iget v2, v0, Landroidx/preference/SeekBarPreference;->e:I

    if-eq v1, v2, :cond_6

    iput v1, v0, Landroidx/preference/SeekBarPreference;->e:I

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_6
    iput-boolean p2, v0, Landroidx/preference/SeekBarPreference;->m:Z

    invoke-virtual {v0}, Landroidx/preference/Preference;->setIconSpaceReserved()V

    invoke-virtual {v0}, Landroidx/preference/Preference;->setPersistent()V

    new-instance v1, Lc1/a;

    invoke-direct {v1, p0}, Lc1/a;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(LX/u;)V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-static {v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->ALL_APPS_OVERVIEW_THRESHOLD:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroidx/preference/SeekBarPreference;->a(IZ)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()LX/u;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, LX/u;->a(Landroidx/preference/Preference;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->a(Landroidx/preference/Preference;)V

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getActivity()Landroidx/fragment/app/P;

    move-result-object p0

    const-string p1, "Developer Options"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/K;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->mPluginReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

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

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/K;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0168

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    new-instance p2, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$1;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/K;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, ":settings:fragment_args_key"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    new-instance p2, Lc1/d;

    invoke-direct {p2, p1}, Lc1/d;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method
