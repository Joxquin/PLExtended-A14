.class public Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;
.super Lcom/android/quickstep/TaskOverlayFactory;
.source "SourceFile"


# static fields
.field public static final synthetic i:I


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Landroid/os/Handler;

.field public f:Z

.field public final g:Landroid/util/SparseArray;

.field public final h:LX1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/quickstep/TaskOverlayFactory;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->f:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->g:Landroid/util/SparseArray;

    new-instance v0, LX1/g;

    invoke-direct {v0, p0}, LX1/g;-><init>(Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->h:LX1/g;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->d:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->e:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final clearAllActiveState()V
    .locals 9

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->v:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->g:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX1/h;

    iget-boolean v2, v1, LX1/h;->c:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, LX1/h;->a:LL1/O;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "null_session_id"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Overview Session Dismissed - OverviewSessionId : %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LM1/b;->c(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, LJ1/m;

    invoke-direct {v5}, LJ1/m;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, LJ1/m;->b:J

    new-instance v6, LJ1/o;

    invoke-direct {v6}, LJ1/o;-><init>()V

    iput-object v3, v6, LJ1/o;->c:Ljava/lang/String;

    iput-object v6, v5, LJ1/m;->a:Ljava/lang/Object;

    sget-object v5, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$OverviewFeedback$OverviewInteraction;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$OverviewFeedback$OverviewInteraction;

    iput-object v5, v6, LJ1/o;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$OverviewFeedback$OverviewInteraction;

    new-instance v5, LJ1/n;

    invoke-direct {v5}, LJ1/n;-><init>()V

    const/4 v6, 0x0

    int-to-long v7, v6

    iput-wide v7, v5, LJ1/n;->b:J

    iput-object v3, v5, LJ1/n;->c:Ljava/lang/String;

    sget v7, LM1/c;->a:I

    iput-object v4, v5, LJ1/n;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, LL1/O;->reportMetricsToService(Ljava/lang/String;LJ1/n;LL1/P;)V

    iput-boolean v6, v1, LX1/h;->c:Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final createOverlay(Lcom/android/quickstep/views/TaskThumbnailView;)Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
    .locals 1

    new-instance v0, LX1/u;

    invoke-direct {v0, p0, p1}, LX1/u;-><init>(Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;Lcom/android/quickstep/views/TaskThumbnailView;)V

    return-object v0
.end method

.method public final initListeners()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->h:LX1/g;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v1, "pref_overview_action_suggestions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->f:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->clearAllActiveState()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->g:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final removeListeners()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/quickstep/TaskOverlayFactoryImpl;->h:LX1/g;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
