.class public final Lcom/google/android/apps/nexuslauncher/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final b:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final c:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final d:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final e:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final f:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final g:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final h:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final i:Lcom/android/launcher3/config/FeatureFlags$IntFlag;

.field public static final j:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final k:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final l:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final m:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final n:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final o:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final p:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final q:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final r:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final s:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final t:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final u:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final v:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags$FlagState;->DISABLED:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    const-string v1, "TWO_PREDICTED_ROWS_ALL_APPS_SEARCH"

    invoke-static {v1, v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/nexuslauncher/c;->a:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v1, "REPLACE_OVERVIEW_SELECT_WITH_SEARCH"

    invoke-static {v1, v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/nexuslauncher/c;->b:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v1, "INVOKE_OMNI_LPH_MPR"

    invoke-static {v1, v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/nexuslauncher/c;->c:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v1, "press_hold_nav_handle_to_search_mpr"

    invoke-static {v1, v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/nexuslauncher/c;->d:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v1, "long_press_home_button_to_search_mpr"

    invoke-static {v1, v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/nexuslauncher/c;->e:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags$FlagState;->ENABLED:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    invoke-static {v1}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getDebugFlag(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->f:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getDebugFlag(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->g:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v2, "ENABLE_NEXUS_LAUNCHER_STARTUP_LATENCY_LOGGING"

    invoke-static {v2, v1}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->h:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-static {}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getIntFlag()Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->i:Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    const-string v2, "ENABLE_QS_TILES"

    invoke-static {v2, v1}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->j:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getDebugFlag(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->k:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getDebugFlag(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->l:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v2, "ENABLE_RICH_SUGGEST_BUTTON_INFO"

    invoke-static {v2, v1}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->m:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v2, "ENABLE_SHOW_IME_SNACKBAR_AGAIN"

    invoke-static {v2, v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->n:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-static {v1}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getDebugFlag(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->o:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getDebugFlag(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->p:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-static {v1}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getDebugFlag(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->q:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v2, "USE_ACTIVITY_OVERLAY"

    invoke-static {v2, v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->r:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v2, "ENABLE_CONTACT_BIRTHDAY_ANIMATION"

    invoke-static {v2, v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->s:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v2, "ENABLE_AIAI_CORPUS_PREFERENCES"

    invoke-static {v2, v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->t:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getDebugFlag(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/nexuslauncher/c;->u:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-static {v1}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getDebugFlag(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/nexuslauncher/c;->v:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v1, "ENABLE_OSE_CUSTOMIZATIONS"

    invoke-static {v1, v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    return-void
.end method
