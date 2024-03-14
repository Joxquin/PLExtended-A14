.class public Lcom/android/quickstep/TaskOverlayFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# static fields
.field private static final MENU_OPTIONS:[Lcom/android/quickstep/TaskShortcutFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    sget-object v0, Lcom/android/quickstep/TaskShortcutFactory;->APP_INFO:Lcom/android/quickstep/TaskShortcutFactory;

    sget-object v1, Lcom/android/quickstep/TaskShortcutFactory;->SPLIT_SELECT:Lcom/android/quickstep/TaskShortcutFactory;

    sget-object v2, Lcom/android/quickstep/TaskShortcutFactory;->PIN:Lcom/android/quickstep/TaskShortcutFactory;

    sget-object v3, Lcom/android/quickstep/TaskShortcutFactory;->INSTALL:Lcom/android/quickstep/TaskShortcutFactory;

    sget-object v4, Lcom/android/quickstep/TaskShortcutFactory;->FREE_FORM:Lcom/android/quickstep/TaskShortcutFactory;

    sget-object v5, Lcom/android/quickstep/TaskShortcutFactory;->WELLBEING:Lcom/android/quickstep/TaskShortcutFactory;

    sget-object v6, Lcom/android/quickstep/TaskShortcutFactory;->SAVE_APP_PAIR:Lcom/android/quickstep/TaskShortcutFactory;

    filled-new-array/range {v0 .. v6}, [Lcom/android/quickstep/TaskShortcutFactory;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/TaskOverlayFactory;->MENU_OPTIONS:[Lcom/android/quickstep/TaskShortcutFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnabledShortcuts(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    sget-object v4, Lcom/android/quickstep/TaskOverlayFactory;->MENU_OPTIONS:[Lcom/android/quickstep/TaskShortcutFactory;

    array-length v6, v4

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v4, v7

    if-eqz v2, :cond_1

    invoke-interface {v8}, Lcom/android/quickstep/TaskShortcutFactory;->showForSplitscreen()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v8, v1, p1}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcuts(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_3
    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_GRID_ONLY_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v6}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    move v3, v5

    :goto_4
    if-nez v2, :cond_6

    if-nez v4, :cond_7

    :cond_6
    if-eqz v3, :cond_a

    :cond_7
    sget-object v2, Lcom/android/quickstep/TaskShortcutFactory;->SCREENSHOT:Lcom/android/quickstep/TaskShortcutFactory;

    invoke-interface {v2, v1, p1}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcuts(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result p0

    if-eqz p0, :cond_9

    if-eqz v3, :cond_a

    :cond_9
    sget-object p0, Lcom/android/quickstep/TaskShortcutFactory;->MODAL:Lcom/android/quickstep/TaskShortcutFactory;

    invoke-interface {p0, v1, p1}, Lcom/android/quickstep/TaskShortcutFactory;->getShortcuts(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    return-object v0
.end method


# virtual methods
.method public clearAllActiveState()V
    .locals 0

    return-void
.end method

.method public createOverlay(Lcom/android/quickstep/views/TaskThumbnailView;)Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
    .locals 0

    new-instance p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-direct {p0, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;-><init>(Lcom/android/quickstep/views/TaskThumbnailView;)V

    return-object p0
.end method

.method public initListeners()V
    .locals 0

    return-void
.end method

.method public removeListeners()V
    .locals 0

    return-void
.end method
