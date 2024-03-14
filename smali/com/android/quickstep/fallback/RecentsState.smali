.class public Lcom/android/quickstep/fallback/RecentsState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/statemanager/BaseState;


# static fields
.field public static final BACKGROUND_APP:Lcom/android/quickstep/fallback/RecentsState;

.field public static final BG_LAUNCHER:Lcom/android/quickstep/fallback/RecentsState;

.field public static final DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

.field private static final FLAG_CLEAR_ALL_BUTTON:I = 0x8

.field private static final FLAG_FULL_SCREEN:I = 0x10

.field private static final FLAG_LIVE_TILE:I = 0x100

.field private static final FLAG_MODAL:I = 0x4

.field private static final FLAG_OVERVIEW_ACTIONS:I = 0x20

.field private static final FLAG_OVERVIEW_UI:I = 0x200

.field private static final FLAG_SCRIM:I = 0x80

.field private static final FLAG_SHOW_AS_GRID:I = 0x40

.field private static final FLAG_TASK_THUMBNAIL_SPLASH:I = 0x400

.field public static final HOME:Lcom/android/quickstep/fallback/RecentsState;

.field public static final MODAL_TASK:Lcom/android/quickstep/fallback/RecentsState;

.field private static final NO_OFFSET:F = 0.0f

.field private static final NO_SCALE:F = 1.0f

.field public static final OVERVIEW_SPLIT_SELECT:Lcom/android/quickstep/fallback/RecentsState;


# instance fields
.field private final mFlags:I

.field public final ordinal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/quickstep/fallback/RecentsState;

    const/16 v1, 0x8

    const/4 v2, 0x2

    or-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x20

    or-int/lit8 v1, v1, 0x40

    or-int/lit16 v1, v1, 0x80

    or-int/lit16 v1, v1, 0x100

    or-int/lit16 v1, v1, 0x200

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Lcom/android/quickstep/fallback/RecentsState;-><init>(II)V

    sput-object v0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    new-instance v0, Lcom/android/quickstep/fallback/RecentsState$ModalState;

    const/16 v1, 0x8

    or-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x20

    const/4 v4, 0x4

    or-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x40

    or-int/lit16 v1, v1, 0x80

    or-int/lit16 v1, v1, 0x100

    or-int/lit16 v1, v1, 0x200

    const/4 v5, 0x1

    invoke-direct {v0, v5, v1}, Lcom/android/quickstep/fallback/RecentsState$ModalState;-><init>(II)V

    sput-object v0, Lcom/android/quickstep/fallback/RecentsState;->MODAL_TASK:Lcom/android/quickstep/fallback/RecentsState;

    new-instance v0, Lcom/android/quickstep/fallback/RecentsState$BackgroundAppState;

    const/16 v1, 0x10

    const/4 v5, 0x3

    or-int/2addr v1, v5

    or-int/lit16 v1, v1, 0x200

    or-int/lit16 v1, v1, 0x400

    invoke-direct {v0, v2, v1}, Lcom/android/quickstep/fallback/RecentsState$BackgroundAppState;-><init>(II)V

    sput-object v0, Lcom/android/quickstep/fallback/RecentsState;->BACKGROUND_APP:Lcom/android/quickstep/fallback/RecentsState;

    new-instance v0, Lcom/android/quickstep/fallback/RecentsState;

    invoke-direct {v0, v5, v3}, Lcom/android/quickstep/fallback/RecentsState;-><init>(II)V

    sput-object v0, Lcom/android/quickstep/fallback/RecentsState;->HOME:Lcom/android/quickstep/fallback/RecentsState;

    new-instance v0, Lcom/android/quickstep/fallback/RecentsState$LauncherState;

    invoke-direct {v0, v4, v3}, Lcom/android/quickstep/fallback/RecentsState$LauncherState;-><init>(II)V

    sput-object v0, Lcom/android/quickstep/fallback/RecentsState;->BG_LAUNCHER:Lcom/android/quickstep/fallback/RecentsState;

    new-instance v0, Lcom/android/quickstep/fallback/RecentsState;

    const/16 v1, 0x40

    or-int/lit16 v1, v1, 0x80

    or-int/lit16 v1, v1, 0x200

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    or-int/lit16 v1, v1, 0x80

    or-int/2addr v1, v2

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lcom/android/quickstep/fallback/RecentsState;-><init>(II)V

    sput-object v0, Lcom/android/quickstep/fallback/RecentsState;->OVERVIEW_SPLIT_SELECT:Lcom/android/quickstep/fallback/RecentsState;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/fallback/RecentsState;->ordinal:I

    iput p2, p0, Lcom/android/quickstep/fallback/RecentsState;->mFlags:I

    return-void
.end method


# virtual methods
.method public displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1

    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_SHOW_AS_GRID:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getHistoryForState(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/fallback/RecentsState;->getHistoryForState(Lcom/android/quickstep/fallback/RecentsState;)Lcom/android/quickstep/fallback/RecentsState;

    move-result-object p0

    return-object p0
.end method

.method public getHistoryForState(Lcom/android/quickstep/fallback/RecentsState;)Lcom/android/quickstep/fallback/RecentsState;
    .locals 0

    .line 2
    sget-object p0, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    return-object p0
.end method

.method public getOverviewModalness()F
    .locals 1

    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_MODAL:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getOverviewScaleAndOffset(Lcom/android/quickstep/RecentsActivity;)[F
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getScrimColor(Lcom/android/quickstep/RecentsActivity;)I
    .locals 1

    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_SCRIM:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f04044e

    invoke-static {p0, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .locals 0

    const/16 p0, 0xfa

    return p0
.end method

.method public hasClearAllButton()Z
    .locals 1

    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_CLEAR_ALL_BUTTON:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result p0

    return p0
.end method

.method public final hasFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/android/quickstep/fallback/RecentsState;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasLiveTile()Z
    .locals 1

    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_LIVE_TILE:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result p0

    return p0
.end method

.method public hasOverviewActions()Z
    .locals 1

    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_OVERVIEW_ACTIONS:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result p0

    return p0
.end method

.method public isFullScreen()Z
    .locals 1

    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_FULL_SCREEN:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result p0

    return p0
.end method

.method public overviewUi()Z
    .locals 1

    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_OVERVIEW_UI:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result p0

    return p0
.end method

.method public shouldDisableRestore()Z
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/launcher3/statemanager/BaseState;->hasFlag(I)Z

    move-result p0

    return p0
.end method

.method public shouldPreserveDataStateOnReapply()Z
    .locals 0

    instance-of p0, p0, Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;

    return p0
.end method

.method public showTaskThumbnailSplash()Z
    .locals 1

    sget v0, Lcom/android/quickstep/fallback/RecentsState;->FLAG_TASK_THUMBNAIL_SPLASH:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/fallback/RecentsState;->hasFlag(I)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ordinal-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/quickstep/fallback/RecentsState;->ordinal:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
