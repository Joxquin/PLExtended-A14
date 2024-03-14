.class public Lcom/google/android/apps/nexuslauncher/allapps/y0;
.super Landroid/content/ContextWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsTransitionListener;
.implements Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/google/android/apps/nexuslauncher/allapps/q1;
.implements Lcom/google/android/apps/nexuslauncher/m;


# static fields
.field public static final K:Lcom/android/launcher3/ConstantItem;

.field public static final L:Landroid/app/search/SearchTargetEvent;

.field public static final M:Landroid/app/search/SearchTargetEvent;

.field public static N:Lcom/android/launcher3/util/LooperExecutor;

.field public static O:Lcom/android/launcher3/util/LooperExecutor;


# instance fields
.field public A:J

.field public B:J

.field public final C:Ljava/util/List;

.field public final D:Ljava/util/List;

.field public E:Landroid/view/LayoutInflater;

.field public F:Z

.field public G:Z

.field public final H:Lcom/google/android/apps/nexuslauncher/allapps/Q;

.field public I:Z

.field public J:Z

.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashMap;

.field public final i:Landroid/os/Handler;

.field public final j:Lcom/google/android/apps/nexuslauncher/allapps/z2;

.field public final k:Ljava/util/List;

.field public l:Ljava/util/List;

.field public m:J

.field public n:Lcom/google/android/apps/nexuslauncher/allapps/v0;

.field public final o:Landroid/content/Context;

.field public final p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

.field public final q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

.field public final r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

.field public final s:Lcom/google/android/apps/nexuslauncher/allapps/A;

.field public t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

.field public u:I

.field public final v:Ljava/util/List;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "launcher.search_keyboard_close_action"

    invoke-static {v2, v1, v0}, Lcom/android/launcher3/LauncherPrefs;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->K:Lcom/android/launcher3/ConstantItem;

    new-instance v0, Landroid/app/search/SearchTargetEvent$Builder;

    const-string v1, "SURFACE_VISIBLE"

    invoke-static {v1}, Lz0/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/app/search/SearchTargetEvent$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/app/search/SearchTargetEvent$Builder;->build()Landroid/app/search/SearchTargetEvent;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->L:Landroid/app/search/SearchTargetEvent;

    new-instance v0, Landroid/app/search/SearchTargetEvent$Builder;

    const-string v1, "SURFACE_INVISIBLE"

    invoke-static {v1}, Lz0/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/app/search/SearchTargetEvent$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/app/search/SearchTargetEvent$Builder;->build()Landroid/app/search/SearchTargetEvent;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M:Landroid/app/search/SearchTargetEvent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->k:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->C:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->D:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->G:Z

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->I:Z

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->J:Z

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o:Landroid/content/Context;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/t1;->t:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-object v3, v2, Lcom/google/android/apps/nexuslauncher/allapps/t1;->j:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/g3;

    invoke-direct {v4, p1, p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/g3;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/allapps/y0;Lcom/google/android/apps/nexuslauncher/allapps/s1;)V

    iput-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/T0;

    invoke-direct {v4, p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/T0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Lcom/google/android/apps/nexuslauncher/allapps/s1;)V

    iput-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/A;

    invoke-direct {v4, p0}, Lcom/google/android/apps/nexuslauncher/allapps/A;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V

    iput-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->s:Lcom/google/android/apps/nexuslauncher/allapps/A;

    new-instance v4, Landroid/os/Handler;

    sget-object v5, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v5}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->i:Landroid/os/Handler;

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    iput v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u:I

    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/z2;

    invoke-direct {v5, p1, p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/z2;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/allapps/y0;Lcom/google/android/apps/nexuslauncher/allapps/s1;)V

    iput-object v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/Q;

    invoke-static {p0}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/logging/StatsLogManager;->latencyLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/google/android/apps/nexuslauncher/allapps/Q;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->H:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v2, Lcom/google/android/apps/nexuslauncher/allapps/t1;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    sget-object p1, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/u;

    invoke-virtual {p1, p0}, Lcom/google/android/apps/nexuslauncher/u;->a(Lcom/google/android/apps/nexuslauncher/m;)V

    :cond_0
    return-void
.end method

.method public static f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;
    .locals 1

    instance-of v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find BaseSearchContext in parent tree"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g()Lcom/android/launcher3/util/LooperExecutor;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->N:Lcom/android/launcher3/util/LooperExecutor;

    if-nez v0, :cond_0

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-static {v0}, Lcom/android/launcher3/util/Executors;->getPackageExecutor(Ljava/lang/String;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->N:Lcom/android/launcher3/util/LooperExecutor;

    :cond_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->N:Lcom/android/launcher3/util/LooperExecutor;

    return-object v0
.end method

.method public static j()Lcom/android/launcher3/util/LooperExecutor;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->O:Lcom/android/launcher3/util/LooperExecutor;

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-static {v0}, Lcom/android/launcher3/util/Executors;->getPackageExecutor(Ljava/lang/String;)Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->O:Lcom/android/launcher3/util/LooperExecutor;

    :cond_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->O:Lcom/android/launcher3/util/LooperExecutor;

    return-object v0
.end method

.method public static k(Landroid/graphics/drawable/Icon;Landroid/app/search/SearchTarget;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "icon-request-key-"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lz0/b;->a(Landroid/app/search/SearchAction;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "icon_cache_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r()I
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->USE_SEARCH_REQUEST_TIMEOUT_OVERRIDES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "search_request_timeout"

    const-string v1, "500"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SearchSessionManager"

    const-string v2, "Error getting search request timeout"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/16 v0, 0xc8

    return v0
.end method


# virtual methods
.method public final A(Ljava/util/ArrayList;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lf2/x0;->h()Lf2/q0;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    instance-of v6, v5, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    if-eqz v6, :cond_5

    check-cast v5, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget-object v5, v5, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v5}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "empty_divider"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "section_header"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v6

    const/high16 v7, 0x20000

    if-ne v6, v7, :cond_5

    if-nez v3, :cond_3

    invoke-static {}, Lf2/t0;->c()Lf2/s0;

    move-result-object v3

    invoke-virtual {v5}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "response_id"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    invoke-virtual {v0, v4}, Lf2/q0;->c(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v5}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v4}, Lf2/s0;->a(Ljava/lang/String;)V

    :cond_4
    move v4, v1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {}, Lf2/w0;->e()Lf2/r0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lf2/r0;->a(Lf2/s0;)V

    invoke-virtual {v0, v4}, Lf2/q0;->a(Lf2/r0;)V

    move-object v3, v2

    :cond_7
    invoke-static {}, Lf2/w0;->e()Lf2/r0;

    move-result-object v4

    invoke-static {}, Lf2/v0;->b()Lf2/u0;

    move-result-object v5

    invoke-virtual {v4, v5}, Lf2/r0;->b(Lf2/u0;)V

    invoke-virtual {v0, v4}, Lf2/q0;->a(Lf2/r0;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    invoke-static {}, Lf2/w0;->e()Lf2/r0;

    move-result-object p1

    invoke-virtual {p1, v3}, Lf2/r0;->a(Lf2/s0;)V

    invoke-virtual {v0, p1}, Lf2/q0;->a(Lf2/r0;)V

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lf2/q0;->b(J)V

    invoke-virtual {v0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lf2/x0;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->g()V

    :cond_b
    return-void
.end method

.method public final B()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->w:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o(Ljava/lang/String;)Landroid/app/search/Query;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->L:Landroid/app/search/SearchTargetEvent;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/g3;->e:[B

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/X;

    invoke-direct {v3, v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/X;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final C()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->F:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->l:Z

    const/4 v2, 0x3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/v2;

    invoke-direct {v3, v0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/v2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/z2;I)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->d:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/u;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/nexuslauncher/u;->c(Lcom/google/android/apps/nexuslauncher/m;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->i:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/s1;->g:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->c:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/K0;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/allapps/K0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    :cond_2
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->t:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/j0;

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/j0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/j0;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/j0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/u;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/u;->c(Lcom/google/android/apps/nexuslauncher/m;)V

    :cond_3
    return-void
.end method

.method public D()V
    .locals 0

    return-void
.end method

.method public E()V
    .locals 0

    return-void
.end method

.method public F()V
    .locals 0

    return-void
.end method

.method public final G()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->n:Lcom/google/android/apps/nexuslauncher/allapps/v0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->n:Lcom/google/android/apps/nexuslauncher/allapps/v0;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->n:Lcom/google/android/apps/nexuslauncher/allapps/v0;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/j0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/j0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/j0;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/google/android/apps/nexuslauncher/allapps/j0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/j0;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lcom/google/android/apps/nexuslauncher/allapps/j0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->A:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    iput-wide v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->A:J

    :cond_1
    iput-wide v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->B:J

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->C:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->D:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->y:Z

    iput-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->O()V

    return-void
.end method

.method public final H(Ljava/util/ArrayList;)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->m:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v2, 0x7d0

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/n0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/n0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/Y;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/Y;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/Y;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Lcom/google/android/apps/nexuslauncher/allapps/Y;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/n0;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/n0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/n0;

    invoke-direct {v0, v4}, Lcom/google/android/apps/nexuslauncher/allapps/n0;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/b0;

    const/4 v4, 0x0

    invoke-direct {v0, v4, p0}, Lcom/google/android/apps/nexuslauncher/allapps/b0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->i:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/X;

    invoke-direct {v4, v1, p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/X;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->l:Ljava/util/List;

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->m:J

    return-void
.end method

.method public final I(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->o()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->p:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->w:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d()Lf2/J0;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/h0;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/h0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/view/View;Ljava/lang/String;Lf2/J0;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final J(Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final K()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_LAUNCH_TRANSITION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->I:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final L()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->j()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final M()Z
    .locals 4

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/u;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-object v3, v2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean v3, v3, Lcom/google/android/apps/nexuslauncher/allapps/t1;->k:Z

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->d:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-eq p0, v3, :cond_2

    :cond_1
    iget-boolean p0, v2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final N()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->l:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/v2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/v2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/z2;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/u;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/u;->a(Lcom/google/android/apps/nexuslauncher/m;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final O()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->J(Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->d:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->J(Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->f:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->J(Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;)V

    :goto_0
    return-void
.end method

.method public final P(Z)V
    .locals 8

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/u;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o(Ljava/lang/String;)Landroid/app/search/Query;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    iget-object v0, v3, Lcom/google/android/apps/nexuslauncher/allapps/T0;->i:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->g:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    invoke-virtual {v3, v4, v5, p1}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->readFromAppSearch(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;Z)Ljava/util/concurrent/CompletableFuture;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object p0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/G0;

    const/4 v7, 0x0

    move-object v2, v0

    move v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/nexuslauncher/allapps/G0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;ZI)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_allowWebResult"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->P(Z)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->F()V

    return-void
.end method

.method public final c(Lcom/google/android/apps/nexuslauncher/p;)V
    .locals 0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    :cond_0
    return-void
.end method

.method public final d()Lf2/J0;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lf2/J0;->h()Lf2/J0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lf2/J0;->p()Lf2/I0;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->A:J

    invoke-virtual {v0, v1, v2}, Lf2/I0;->e(J)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v:Ljava/util/List;

    invoke-virtual {v0, v1}, Lf2/I0;->c(Ljava/lang/Iterable;)V

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->B:J

    invoke-virtual {v0, v1, v2}, Lf2/I0;->f(J)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->C:Ljava/util/List;

    invoke-virtual {v0, v1}, Lf2/I0;->b(Ljava/lang/Iterable;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->D:Ljava/util/List;

    invoke-virtual {v0, v1}, Lf2/I0;->a(Ljava/lang/Iterable;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->searchEntryState:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;

    invoke-virtual {v0, p0}, Lf2/I0;->d(Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;)V

    invoke-virtual {v0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/J0;

    return-object p0
.end method

.method public final e(Landroid/app/search/SearchTarget;)Lcom/google/android/apps/nexuslauncher/allapps/q0;
    .locals 14

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "suggestion_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->forNumber(I)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object v1

    const-string v2, "is_personal"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v2

    invoke-static {v2}, Lz0/b;->a(Landroid/app/search/SearchAction;)Landroid/os/Bundle;

    move-result-object v13

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->UNKNOWN:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->e(Landroid/app/search/SearchTarget;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object v12, v1

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/q0;

    invoke-virtual {v2}, Landroid/app/search/SearchAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/search/SearchAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    move v9, p1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->K()Z

    move-result v10

    move-object v3, v1

    move-object v4, p0

    move-object v11, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/apps/nexuslauncher/allapps/q0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;ZZLandroid/os/Bundle;Ljava/util/List;)V

    invoke-virtual {v2}, Landroid/app/search/SearchAction;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->w(Landroid/content/Intent;)V

    invoke-virtual {v2}, Landroid/app/search/SearchAction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    iget-object p1, v1, Lcom/google/android/apps/nexuslauncher/allapps/g1;->h:Landroid/content/Intent;

    if-eqz p1, :cond_4

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SearchActionItemInfo can only have either an Intent or a PendingIntent"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_3
    iput-object p0, v1, Lcom/google/android/apps/nexuslauncher/allapps/g1;->i:Landroid/app/PendingIntent;

    const-string p0, "title_content_description_override"

    invoke-virtual {v13, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iput-object p0, v1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    :cond_5
    return-object v1
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->E:Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->E:Landroid/view/LayoutInflater;

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->E:Landroid/view/LayoutInflater;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/lang/String;Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/google/android/apps/nexuslauncher/allapps/u0;)Lcom/google/android/apps/nexuslauncher/allapps/s0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/t0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/t0;

    invoke-direct {v0, p2, p3}, Lcom/google/android/apps/nexuslauncher/allapps/t0;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/t0;->c:Z

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/t0;->d:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-interface {p4, p0}, Lcom/google/android/apps/nexuslauncher/allapps/u0;->a(Lcom/android/launcher3/icons/BitmapInfo;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/t0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/android/apps/nexuslauncher/allapps/s0;

    invoke-direct {p0, v0, p4}, Lcom/google/android/apps/nexuslauncher/allapps/s0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/t0;Lcom/google/android/apps/nexuslauncher/allapps/u0;)V

    :goto_0
    return-object p0
.end method

.method public final i(Landroid/os/Bundle;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;
    .locals 4

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->newBuilder()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->setQueryLength$1(I)V

    if-eqz p1, :cond_0

    const-string v2, "app_gridx"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->setGridX$2(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p(Landroid/os/Bundle;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;->getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/J;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->setSearchAttributes(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;)V

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->setDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;)V

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    return-object p0
.end method

.method public final l(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d()Lf2/Z;

    move-result-object v0

    invoke-static {}, Lf2/r;->e()Lf2/q;

    move-result-object v1

    invoke-virtual {v1, p1}, Lf2/q;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lf2/q;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p1

    check-cast p1, Lf2/r;

    iget-object v1, v0, La3/b;->a:LX2/h;

    sget-object v2, Lf2/a0;->b:LX2/u0;

    if-nez v2, :cond_1

    const-class v3, Lf2/a0;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lf2/a0;->b:LX2/u0;

    if-nez v2, :cond_0

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v2

    sget-object v4, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v4, v2, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v4, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v5, "GetImage"

    invoke-static {v4, v5}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, LX2/s0;->d:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, v2, LX2/s0;->e:Z

    invoke-static {}, Lf2/r;->d()Lf2/r;

    move-result-object v4

    sget-object v5, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v5, LZ2/b;

    invoke-direct {v5, v4}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v5, v2, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/t;->c()Lf2/t;

    move-result-object v4

    new-instance v5, LZ2/b;

    invoke-direct {v5, v4}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v5, v2, LX2/s0;->b:LX2/t0;

    invoke-virtual {v2}, LX2/s0;->a()LX2/u0;

    move-result-object v2

    sput-object v2, Lf2/a0;->b:LX2/u0;

    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v1, v2, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, p1}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/c;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf2/t;

    invoke-virtual {p1}, Lf2/t;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lf2/t;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2

    :cond_3
    invoke-virtual {p1}, Lf2/t;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lf2/t;->d()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->q()[B

    move-result-object p1

    array-length v2, p1

    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v2, "OneSearchSuggestProvider"

    const-string v3, "Error getting images from AGA"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v6

    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->h:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual {p0, p1, v4, v5, v0}, Lcom/google/android/apps/nexuslauncher/allapps/W;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JI)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->h:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/apps/nexuslauncher/allapps/W;->e(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JJ)V

    :goto_3
    return-object v1
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->f:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SHOW_KEYBOARD_OPTION_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->m:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final n(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;)V
    .locals 13

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->e:I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o:Landroid/content/Context;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/C2;->a:Landroid/os/UserHandle;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-float v3, v2

    const/high16 v4, 0x43fa0000    # 500.0f

    sub-float/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "web"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/search/Query;->getInput()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/search/Query;->getTimestampMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/app/search/SearchTarget$Builder;

    const/high16 v8, 0x20000

    const-string v9, "short_icon_row"

    invoke-direct {v7, v8, v9, v6}, Landroid/app/search/SearchTarget$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string v8, "com.google.android.googlequicksearchbox"

    invoke-virtual {v7, v8}, Landroid/app/search/SearchTarget$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/nexuslauncher/allapps/C2;->a:Landroid/os/UserHandle;

    invoke-virtual {v7, v8}, Landroid/app/search/SearchTarget$Builder;->setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.WEB_SEARCH"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v9, "query"

    const-string v10, "mock_query"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.google.android.apps.nexuslauncher.tests"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "group_id"

    invoke-virtual {v9, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v10, "should_start_for_result"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "allow_pinning"

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "suggestion_action_text"

    const-string v11, "Delete"

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "suggestion_action_rpc"

    const/4 v11, 0x2

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v10, Landroid/app/search/SearchAction$Builder;

    invoke-static {v5, v6}, Landroidx/constraintlayout/widget/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/search/Query;->getInput()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v5, v6}, Landroid/app/search/SearchAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Landroid/app/search/SearchAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/search/SearchAction$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/search/SearchAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchAction$Builder;

    move-result-object v3

    const v5, 0x7f0802b3

    invoke-static {p0, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/search/SearchAction$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/search/SearchAction$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/search/SearchAction$Builder;->build()Landroid/app/search/SearchAction;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/app/search/SearchTarget$Builder;->setSearchAction(Landroid/app/search/SearchAction;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/search/SearchTarget$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/search/SearchTarget$Builder;->setScore(F)Landroid/app/search/SearchTarget$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/search/SearchTarget$Builder;->build()Landroid/app/search/SearchTarget;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Lcom/google/android/apps/nexuslauncher/allapps/p;->b(Ljava/util/List;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)Landroid/app/search/Query;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->id:I

    const-string v1, "entry"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Landroid/app/search/Query;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/app/search/Query;-><init>(Ljava/lang/String;JLandroid/os/Bundle;)V

    return-object p0
.end method

.method public final onAllAppsTransitionEnd(Z)V
    .locals 8

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->w:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d()Lf2/J0;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/X;

    invoke-direct {v3, v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/X;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->y()V

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->H:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->G()V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->d:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v1, v2, :cond_8

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    if-nez v1, :cond_8

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o(Ljava/lang/String;)Landroid/app/search/Query;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/search/Query;->getTimestampMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->A:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->A:J

    :cond_5
    invoke-virtual {v1}, Landroid/app/search/Query;->getTimestampMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->B:J

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/t1;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->n(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;)V

    return-void

    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->P(Z)V

    :cond_7
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_zero_state_query_ready"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/apps/nexuslauncher/allapps/c0;

    invoke-direct {v6, v5, v4}, Lcom/google/android/apps/nexuslauncher/allapps/c0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/g3;I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v6}, Lcom/google/android/apps/nexuslauncher/allapps/z2;->d(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/m;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/s1;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "SearchSessionManager"

    if-eqz p1, :cond_a

    sget-boolean p1, Lcom/google/android/apps/nexuslauncher/allapps/B;->a:Z

    if-eqz p1, :cond_9

    const-string p1, "GmsPlay initConnection"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->s:Lcom/google/android/apps/nexuslauncher/allapps/A;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/l0;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/l0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/A;I)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_a
    sget-boolean p1, Lcom/google/android/apps/nexuslauncher/allapps/B;->a:Z

    if-eqz p1, :cond_b

    const-string p1, "GmsPlay endSession"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->s:Lcom/google/android/apps/nexuslauncher/allapps/A;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/l0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/l0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/A;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_c
    :goto_2
    return-void
.end method

.method public final onAllAppsTransitionStart(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->O()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-eq v0, p1, :cond_1

    sget-object p1, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->f:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v0, p1, :cond_5

    :cond_1
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o(Ljava/lang/String;)Landroid/app/search/Query;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/search/Query;->getTimestampMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->A:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->A:J

    :cond_2
    invoke-virtual {p1}, Landroid/app/search/Query;->getTimestampMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->B:J

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/t1;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->n(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_zero_state_query_ready"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/c0;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Lcom/google/android/apps/nexuslauncher/allapps/c0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/g3;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/google/android/apps/nexuslauncher/allapps/z2;->d(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/m;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V

    :cond_4
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/s1;->g:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->P(Z)V

    :cond_5
    return-void
.end method

.method public onBackKey()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u:I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/z2;->l:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/v2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/v2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/z2;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p(Landroid/os/Bundle;)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;
    .locals 2

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;->newBuilder()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->entryStateForLogging:Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;->setEntryState(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$EntryState;)V

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    return-object p0

    :cond_0
    const-string p0, "is_query_corrected"

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;->setCorrectedQuery()V

    :cond_1
    const-string p0, "result_match_user_typed"

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes$Builder;->setDirectMatch()V

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$SearchAttributes;

    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public final s()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const v1, 0x39ffff

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->canHandleBack()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->onBackInvoked()V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->requestFocus()Z

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->d:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v0, v3, :cond_6

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->w:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d()Lf2/J0;

    move-result-object v0

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/X;

    invoke-direct {v3, v1, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/X;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->y()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->G()V

    return v1

    :cond_6
    return v2
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInAllApps()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInAllApps()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final v()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->h:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->m:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public final w()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->n:Z

    return p0

    :cond_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->d:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->f:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->o:Z

    return p0
.end method

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->G:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->w()Z

    move-result p0

    return p0
.end method

.method public final y()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o(Ljava/lang/String;)Landroid/app/search/Query;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->M:Landroid/app/search/SearchTargetEvent;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    return-void
.end method

.method public final z(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .locals 6

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyEvent: query="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/search/Query;->getInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/search/Query;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/search/Query;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, " Bundle{"

    invoke-static {v1, v3}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "}"

    invoke-static {v1, v2}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/search/SearchTargetEvent;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/search/SearchTargetEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j:Lcom/google/android/apps/nexuslauncher/allapps/z2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/u2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/apps/nexuslauncher/allapps/u2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/z2;Landroid/app/search/SearchTargetEvent;Landroid/app/search/Query;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
