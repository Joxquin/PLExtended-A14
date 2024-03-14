.class public abstract Lcom/android/launcher3/LauncherState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/statemanager/BaseState;


# static fields
.field public static final ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

.field public static final BACKGROUND_APP:Lcom/android/launcher3/uioverrides/states/BackgroundAppState;

.field protected static final DEFAULT_ALPHA_PROVIDER:Lcom/android/launcher3/LauncherState$PageAlphaProvider;

.field protected static final DEFAULT_PAGE_TRANSLATION_PROVIDER:Lcom/android/launcher3/LauncherState$PageAlphaProvider;

.field public static final EDIT_MODE:Lcom/android/launcher3/states/EditModeState;

.field public static final HINT_STATE:Lcom/android/launcher3/states/HintState;

.field public static final HINT_STATE_TWO_BUTTON:Lcom/android/launcher3/states/HintState;

.field public static final NORMAL:Lcom/android/launcher3/LauncherState;

.field public static final OVERVIEW:Lcom/android/launcher3/uioverrides/states/OverviewState;

.field public static final OVERVIEW_MODAL_TASK:Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;

.field public static final OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;

.field public static final QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

.field public static final SPRING_LOADED:Lcom/android/launcher3/states/SpringLoadedState;

.field private static final sAllStates:[Lcom/android/launcher3/LauncherState;


# instance fields
.field private final mFlags:I

.field public final ordinal:I

.field public final overviewUi:Z

.field public final statsLogOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/launcher3/LauncherState$1;

    sget-object v1, Ly0/e;->x:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherState$1;-><init>(Landroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/android/launcher3/LauncherState;->DEFAULT_ALPHA_PROVIDER:Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    new-instance v0, Lcom/android/launcher3/LauncherState$1;

    sget-object v1, Ly0/e;->C:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherState$1;-><init>(Landroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/android/launcher3/LauncherState;->DEFAULT_PAGE_TRANSLATION_PROVIDER:Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/launcher3/LauncherState;

    sput-object v0, Lcom/android/launcher3/LauncherState;->sAllStates:[Lcom/android/launcher3/LauncherState;

    new-instance v0, Lcom/android/launcher3/LauncherState$3;

    const/16 v1, 0x52

    invoke-direct {v0, v1}, Lcom/android/launcher3/LauncherState$3;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v0, Lcom/android/launcher3/states/SpringLoadedState;

    invoke-direct {v0}, Lcom/android/launcher3/states/SpringLoadedState;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/states/SpringLoadedState;

    new-instance v0, Lcom/android/launcher3/states/EditModeState;

    invoke-direct {v0}, Lcom/android/launcher3/states/EditModeState;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/states/EditModeState;

    new-instance v0, Lcom/android/launcher3/uioverrides/states/AllAppsState;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/states/AllAppsState;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    new-instance v0, Lcom/android/launcher3/states/HintState;

    const/4 v1, 0x7

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/states/HintState;-><init>(II)V

    sput-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/states/HintState;

    new-instance v0, Lcom/android/launcher3/states/HintState;

    const/16 v1, 0x8

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/states/HintState;-><init>(II)V

    sput-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE_TWO_BUTTON:Lcom/android/launcher3/states/HintState;

    new-instance v0, Lcom/android/launcher3/uioverrides/states/OverviewState;

    invoke-direct {v0, v2}, Lcom/android/launcher3/uioverrides/states/OverviewState;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/uioverrides/states/OverviewState;

    new-instance v0, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW_MODAL_TASK:Lcom/android/launcher3/uioverrides/states/OverviewModalTaskState;

    new-instance v0, Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/states/QuickSwitchState;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH_FROM_HOME:Lcom/android/launcher3/uioverrides/states/QuickSwitchState;

    new-instance v0, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/uioverrides/states/BackgroundAppState;

    new-instance v0, Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;-><init>()V

    sput-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW_SPLIT_SELECT:Lcom/android/launcher3/uioverrides/states/SplitScreenSelectState;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/LauncherState;->statsLogOrdinal:I

    iput p3, p0, Lcom/android/launcher3/LauncherState;->mFlags:I

    const/16 p2, 0x100

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    iput p1, p0, Lcom/android/launcher3/LauncherState;->ordinal:I

    sget-object p2, Lcom/android/launcher3/LauncherState;->sAllStates:[Lcom/android/launcher3/LauncherState;

    aput-object p0, p2, p1

    return-void
.end method

.method public static values()[Lcom/android/launcher3/LauncherState;
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherState;->sAllStates:[Lcom/android/launcher3/LauncherState;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/LauncherState;

    return-object v0
.end method


# virtual methods
.method public allowTaskbarInitialSplitSelection()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final areElementsVisible(Lcom/android/launcher3/Launcher;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getVisibleElements(Lcom/android/launcher3/Launcher;)I

    move-result p0

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public disallowTaskbarGlobalDrag()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getDepth(Landroid/content/Context;)F
    .locals 1

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getDepthUnchecked(Landroid/content/Context;)F

    move-result p0

    :goto_0
    return p0
.end method

.method public getDepthUnchecked(Landroid/content/Context;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDescription(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 0

    iget-object p0, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFloatingSearchBarRestingMarginBottom(Lcom/android/launcher3/Launcher;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/LauncherState;->areElementsVisible(Lcom/android/launcher3/Launcher;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getQsbOffsetY()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbHeight:I

    neg-int p0, p0

    :goto_0
    return p0
.end method

.method public getFloatingSearchBarRestingMarginEnd(Lcom/android/launcher3/Launcher;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isQsbInline:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getFloatingSearchBarRestingMarginStart(Lcom/android/launcher3/Launcher;)I

    move-result p0

    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    sub-int/2addr p1, p0

    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->hotseatQsbWidth:I

    sub-int/2addr p1, p0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p1

    sub-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public getFloatingSearchBarRestingMarginStart(Lcom/android/launcher3/Launcher;)I
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getQsb()Landroid/view/View;

    move-result-object v0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p1

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getHistoryForState(Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;
    .locals 0

    .line 2
    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method public bridge synthetic getHistoryForState(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getHistoryForState(Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;

    move-result-object p0

    return-object p0
.end method

.method public getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public getOverviewFullscreenProgress()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOverviewModalness()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOverviewScaleAndOffset(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)[F
    .locals 0

    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getNormalOverviewScaleAndOffset()[F

    move-result-object p0

    return-object p0
.end method

.method public getSplitSelectTranslation(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVerticalProgress(Lcom/android/launcher3/Launcher;)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isPhone:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x25

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0xa5

    :goto_1
    return p0
.end method

.method public getWorkspaceBackgroundAlpha(Lcom/android/launcher3/Launcher;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/states/HintState;

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    sget-object p0, Lcom/android/launcher3/LauncherState;->DEFAULT_ALPHA_PROVIDER:Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    return-object p0

    :cond_2
    iget-object p0, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    new-instance p1, Lcom/android/launcher3/LauncherState$4;

    sget-object v0, Ly0/e;->x:Landroid/view/animation/Interpolator;

    invoke-direct {p1, v0, p0}, Lcom/android/launcher3/LauncherState$4;-><init>(Landroid/view/animation/Interpolator;I)V

    return-object p1
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .locals 1

    new-instance p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hasFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/LauncherState;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTaskbarAlignedWithHotseat()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTaskbarStashed(Lcom/android/launcher3/Launcher;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBackPressed(Lcom/android/launcher3/Launcher;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_0
    return-void
.end method

.method public onLeavingState()V
    .locals 0

    return-void
.end method

.method public shouldFloatingSearchBarUsePillWhenUnfocused(Lcom/android/launcher3/Launcher;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/LauncherState;->ordinal:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "Unknown"

    goto :goto_0

    :pswitch_0
    const-string p0, "EditMode"

    goto :goto_0

    :pswitch_1
    const-string p0, "OverviewSplitSelect"

    goto :goto_0

    :pswitch_2
    const-string p0, "Hint2Button"

    goto :goto_0

    :pswitch_3
    const-string p0, "Hint"

    goto :goto_0

    :pswitch_4
    const-string p0, "Background"

    goto :goto_0

    :pswitch_5
    const-string p0, "AllApps"

    goto :goto_0

    :pswitch_6
    const-string p0, "QuickSwitch"

    goto :goto_0

    :pswitch_7
    const-string p0, "OverviewModal"

    goto :goto_0

    :pswitch_8
    const-string p0, "Overview"

    goto :goto_0

    :pswitch_9
    const-string p0, "SpringLoaded"

    goto :goto_0

    :pswitch_a
    const-string p0, "Normal"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method
