.class final Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;
.super Landroidx/preference/SwitchPreference;
.source "SourceFile"


# instance fields
.field private final mComponentNames:Ljava/util/List;

.field private final mPackageName:Ljava/lang/String;

.field private final mPluginEnabler:LX/y;

.field private final mSettingsInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;LX/y;Ljava/util/List;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->mPackageName:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.PLUGIN_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->mSettingsInfo:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->mPluginEnabler:LX/y;

    iput-object p4, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->mComponentNames:Ljava/util/List;

    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    iget-object p4, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->mPluginEnabler:LX/y;

    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {p2}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->pluginEnabledKey(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2, p3}, LX/y;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_3
    move v3, p3

    :goto_0
    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->setWidgetLayoutResource()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;ZLandroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->mSettingsInfo:Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onBindViewHolder(LX/a0;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(LX/a0;)V

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->mSettingsInfo:Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x7f0a02f2

    invoke-virtual {p1, v2}, LX/a0;->a(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0a0131

    invoke-virtual {p1, v3}, LX/a0;->a(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v2}, LX/a0;->a(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/uioverrides/flags/a;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/uioverrides/flags/a;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/launcher3/uioverrides/flags/b;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/flags/b;-><init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final persistBoolean(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->mComponentNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->mPluginEnabler:LX/y;

    sget-object v4, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {v2}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->pluginEnabledKey(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, LX/y;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v3, p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->mPluginEnabler:LX/y;

    invoke-static {v2}, Lcom/android/launcher3/uioverrides/plugins/PluginEnablerImpl;->pluginEnabledKey(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, LX/y;->putBoolean(Ljava/lang/String;Z)V

    move v1, v5

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment$PluginPreference;->mPackageName:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v3, "package"

    invoke-static {v3, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_2
    const-string v0, "com.android.systemui.action.PLUGIN_CHANGED"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
