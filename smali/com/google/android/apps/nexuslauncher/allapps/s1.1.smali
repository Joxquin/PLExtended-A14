.class public final Lcom/google/android/apps/nexuslauncher/allapps/s1;
.super Lcom/android/launcher3/allapps/BaseSearchConfig;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:I

.field public final t:I

.field public final u:I

.field public final synthetic v:Lcom/google/android/apps/nexuslauncher/allapps/t1;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/t1;Lcom/google/android/apps/nexuslauncher/allapps/r1;Lcom/google/android/apps/nexuslauncher/allapps/r1;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseSearchConfig;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "enable_web_suggest_on_default_browser"

    invoke-interface {p2, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->a:Z

    const-string v0, "use_fallback_app_search"

    invoke-interface {p2, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->c:Z

    const-string v0, "show_three_dot_menu_qsb"

    invoke-interface {p2, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->f:Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "enable_one_search"

    invoke-interface {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->b:Z

    const-string v1, "use_app_search_for_web"

    invoke-interface {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->g:Z

    const-string v1, "ENABLE_QUICK_SEARCH"

    invoke-interface {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->h:Z

    const-string v1, "SHOW_SEARCH_EDUCARD_QSB"

    invoke-interface {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->i:Z

    const-string v1, "ENABLE_IME_LATENCY_LOGGER"

    invoke-interface {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->j:Z

    const-string v1, "ENABLE_KEYBOARD_TRANSITION_SYNC"

    invoke-interface {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->k:Z

    const-string v1, "enable_rich_answer"

    invoke-interface {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->l:Z

    const-string v1, "enable_quick_launch_v2"

    invoke-interface {p2, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->m:Z

    const-string v1, "enable_quick_launch_v3_qsb"

    invoke-interface {p2, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->n:Z

    const-string v1, "enable_quick_launch_v3_aa"

    invoke-interface {p2, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->o:Z

    const-string v1, "gboard_update_enter_key"

    invoke-interface {p2, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->p:Z

    const-string v1, "enable_impression_logging"

    invoke-interface {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->q:Z

    const-string v0, "enable_hide_gboard_header_static"

    invoke-interface {p2, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->r:Z

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "short_suggestion_cnt"

    invoke-interface {p3, p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->d:I

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "qsb_web_cnt"

    invoke-interface {p3, p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->e:I

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "uninstalled_apps_query_lower_bound"

    invoke-interface {p3, p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->s:I

    const/16 p2, 0x14

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "uninstalled_apps_query_upper_bound"

    invoke-interface {p3, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->t:I

    const-string p2, "uninstalled_apps_count"

    invoke-interface {p3, p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/r1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->u:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->f:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/u;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_UNINSTALLED_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->q:Z

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final isKeyboardSyncEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->k:Z

    return p0
.end method
