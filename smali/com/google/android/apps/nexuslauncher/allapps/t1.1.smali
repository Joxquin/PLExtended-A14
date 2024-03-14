.class public final Lcom/google/android/apps/nexuslauncher/allapps/t1;
.super Landroid/database/ContentObserver;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final s:Lcom/google/common/collect/ImmutableList;

.field public static final t:Lcom/android/launcher3/util/MainThreadInitializedObject;

.field public static final u:Landroid/net/Uri;

.field public static final v:Z


# instance fields
.field public final d:Lcom/google/android/apps/nexuslauncher/allapps/j1;

.field public final e:Lcom/google/android/apps/nexuslauncher/allapps/k1;

.field public final f:Landroid/content/Context;

.field public final g:Ljava/util/Set;

.field public final h:Landroid/content/ContentResolver;

.field public final i:Ljava/util/ArrayList;

.field public j:Lcom/google/android/apps/nexuslauncher/allapps/s1;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "com.google.android.inputmethod.latin.canary"

    const-string v1, "com.google.android.inputmethod.latin.dev"

    const-string v2, "com.google.android.inputmethod.latin"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->n([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->s:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/i1;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/allapps/i1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->t:Lcom/android/launcher3/util/MainThreadInitializedObject;

    const-string v0, "default_input_method"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->u:Landroid/net/Uri;

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->v:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/j1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/j1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/t1;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->d:Lcom/google/android/apps/nexuslauncher/allapps/j1;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/k1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/k1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/t1;)V

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->e:Lcom/google/android/apps/nexuslauncher/allapps/k1;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->i:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->f:Landroid/content/Context;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/s1;

    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/l1;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/google/android/apps/nexuslauncher/allapps/l1;-><init>(Ljava/util/HashSet;I)V

    new-instance v7, Lcom/google/android/apps/nexuslauncher/allapps/l1;

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8}, Lcom/google/android/apps/nexuslauncher/allapps/l1;-><init>(Ljava/util/HashSet;I)V

    invoke-direct {v4, p0, v5, v7}, Lcom/google/android/apps/nexuslauncher/allapps/s1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/t1;Lcom/google/android/apps/nexuslauncher/allapps/r1;Lcom/google/android/apps/nexuslauncher/allapps/r1;)V

    iput-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->j:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->g:Ljava/util/Set;

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_search_show_hidden_targets"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->l:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const-string v5, "pref_search_show_keyboard"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->m:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const-string v5, "pref_allowWebResult"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->k:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const-string v5, "pref_allowPlaySearchResult"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->q:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const-string v5, "pref_allowDeviceResult"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->r:Z

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v2, "launcher"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->h:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/t1;->u:Landroid/net/Uri;

    invoke-virtual {p1, v1, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/m1;

    invoke-direct {p1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/m1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/t1;)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->s:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->d:Lcom/google/android/apps/nexuslauncher/allapps/j1;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->e:Lcom/google/android/apps/nexuslauncher/allapps/k1;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->h:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/allapps/t1;->u:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/t1;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->o:Z

    :cond_0
    return-void
.end method
