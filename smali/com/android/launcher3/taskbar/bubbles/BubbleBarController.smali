.class public final Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;
.super Lcom/android/wm/shell/bubbles/IBubblesListener$Stub;
.source "SourceFile"


# static fields
.field public static final BUBBLE_BAR_ENABLED:Z

.field private static final BUBBLE_STATE_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private final mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

.field private mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

.field private mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

.field private mBubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

.field private final mBubbles:Landroid/util/ArrayMap;

.field private final mContext:Landroid/content/Context;

.field private final mIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mMainExecutor:Lcom/android/launcher3/util/LooperExecutor;

.field private mOverflowBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;

.field private mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    const-string v0, "persist.wm.debug.bubble_bar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_BAR_ENABLED:Z

    new-instance v0, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;

    const-string v1, "BubbleStateUpdates-"

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/Executors$SimpleThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_STATE_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    sget-object p2, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/quickstep/SystemUiProxy;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    sget-boolean v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_BAR_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/quickstep/SystemUiProxy;->setBubblesListener(Lcom/android/wm/shell/bubbles/IBubblesListener;)V

    :cond_0
    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mMainExecutor:Lcom/android/launcher3/util/LooperExecutor;

    const-class p2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherApps;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    new-instance p2, Lcom/android/launcher3/icons/BubbleIconFactory;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/icons/BubbleIconFactory;-><init>(Landroid/content/Context;IIII)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mOverflowBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->addBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mOverflowBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;

    :cond_0
    return-void
.end method

.method private applyViewChanges(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 10

    iget-boolean v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expandedChanged:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v3, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expanded:Z

    if-eqz v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    iget-object v4, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->removedBubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "BubbleBarController"

    if-nez v4, :cond_4

    :goto_1
    iget-object v4, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->removedBubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->removedBubbles:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/common/bubbles/j;

    iget-object v6, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    iget-object v7, v4, Lcom/android/wm/shell/common/bubbles/j;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-eqz v6, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->removeBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "trying to remove bubble that doesn\'t exist: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/wm/shell/common/bubbles/j;->d:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {v6, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iget-object v6, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->addBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;)V

    if-eqz v0, :cond_5

    iget-object v1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    goto :goto_3

    :cond_5
    move-object v1, v4

    :goto_3
    iget-object v6, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->currentBubbles:Ljava/util/List;

    if-eqz v6, :cond_8

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->currentBubbles:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_4
    if-ltz v6, :cond_8

    iget-object v7, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->currentBubbles:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-eqz v7, :cond_6

    iget-object v8, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v8, v7}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->addBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;)V

    if-eqz v0, :cond_7

    move-object v1, v7

    goto :goto_5

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "trying to add bubble but null after loading! "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {v8}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iget-object v6, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setHiddenForBubbles(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    iget-object v6, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->setHiddenForBubbles(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    :cond_9
    iget-object v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->updatedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-eqz v0, :cond_a

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->isStashed()Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->updateDotVisibility(Z)V

    :cond_a
    iget-object v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->bubbleKeysInOrder:Ljava/util/List;

    if-eqz v0, :cond_b

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->bubbleKeysInOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, LZ0/c;

    invoke-direct {v4, v2}, LZ0/c;-><init>(Landroid/util/ArrayMap;)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, LZ0/d;

    invoke-direct {v2}, LZ0/d;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->reorderBubbles(Ljava/util/List;)V

    :cond_b
    iget-object v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->selectedBubbleKey:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->selectedBubbleKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-eqz v0, :cond_d

    move-object v1, v0

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "trying to select bubble that doesn\'t exist:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->selectedBubbleKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iput-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->updateSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;)V

    :cond_f
    if-nez v3, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iget-boolean v1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expanded:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->animateToInitialState(Z)V

    :cond_10
    iget-boolean v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expandedChanged:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expanded:Z

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->isExpanded()Z

    move-result v1

    if-eq v0, v1, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iget-boolean p1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expanded:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setExpandedFromSysui(Z)V

    goto :goto_7

    :cond_11
    const-string p0, "expansion was changed but is the same"

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_7
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->applyViewChanges(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void
.end method

.method public static c(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/wm/shell/common/bubbles/b;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mOverflowBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f080234

    invoke-static {v3, v0}, Lf/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mContext:Landroid/content/Context;

    const v5, 0x1120094

    const v6, 0x11200a5

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/high16 v6, -0x1000000

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v5, v3, v4}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    new-instance v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v3

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0d0049

    iget-object v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    new-instance v4, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;

    invoke-direct {v4, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleView;)V

    iget-object v3, v3, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v3}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->setOverflow(Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mMainExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher3/taskbar/bubbles/b;

    const/4 v5, 0x3

    invoke-direct {v3, p0, v4, v5}, Lcom/android/launcher3/taskbar/bubbles/b;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/b;->g:Lcom/android/wm/shell/common/bubbles/d;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-direct {p0, v3, v0, v4, v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->populateBubble(Landroid/content/Context;Lcom/android/wm/shell/common/bubbles/d;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    :cond_1
    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/b;->h:Lcom/android/wm/shell/common/bubbles/d;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    iget-object v0, v0, Lcom/android/wm/shell/common/bubbles/d;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/wm/shell/common/bubbles/b;->h:Lcom/android/wm/shell/common/bubbles/d;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->populateBubble(Landroid/content/Context;Lcom/android/wm/shell/common/bubbles/d;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    move-result-object v0

    iput-object v0, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->updatedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    :cond_2
    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/b;->m:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v3, p1, Lcom/android/wm/shell/common/bubbles/b;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/wm/shell/common/bubbles/b;->m:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/common/bubbles/d;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->populateBubble(Landroid/content/Context;Lcom/android/wm/shell/common/bubbles/d;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p2, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->currentBubbles:Ljava/util/List;

    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mMainExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, Lcom/android/launcher3/taskbar/bubbles/b;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static d(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->updateSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mMainExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher3/taskbar/bubbles/b;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->applyViewChanges(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    sget-boolean v1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_BAR_ENABLED:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setHiddenForBubbles(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->setHiddenForBubbles(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    new-instance v1, LZ0/b;

    invoke-direct {v1, p0}, LZ0/b;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setUpdateSelectedBubbleAfterCollapse(LZ0/b;)V

    return-void
.end method

.method private populateBubble(Landroid/content/Context;Lcom/android/wm/shell/common/bubbles/d;Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-boolean v4, v2, Lcom/android/wm/shell/common/bubbles/d;->k:Z

    new-instance v5, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, v2, Lcom/android/wm/shell/common/bubbles/d;->g:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v5, p1, v6}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iget-object v6, v2, Lcom/android/wm/shell/common/bubbles/d;->h:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/wm/shell/common/bubbles/d;->f:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;Ljava/util/List;)V

    const/16 v6, 0xc11

    invoke-virtual {v5, v6}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-lez v6, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    goto :goto_0

    :cond_0
    move-object v5, v8

    :goto_0
    const-string v6, "BubbleBarController"

    if-nez v5, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "No shortcutInfo found for bubble: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v2, Lcom/android/wm/shell/common/bubbles/d;->d:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " with shortcutId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/wm/shell/common/bubbles/d;->f:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v9, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v10, v2, Lcom/android/wm/shell/common/bubbles/d;->h:Ljava/lang/String;

    new-instance v11, Landroid/os/UserHandle;

    iget v12, v2, Lcom/android/wm/shell/common/bubbles/d;->g:I

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v10, v7, v11}, Landroid/content/pm/LauncherApps;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v9, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to find appInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    new-instance v11, Landroid/os/UserHandle;

    iget v12, v2, Lcom/android/wm/shell/common/bubbles/d;->g:I

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v9, v11}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v11, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    iget-object v12, v2, Lcom/android/wm/shell/common/bubbles/d;->i:Landroid/graphics/drawable/Icon;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x1

    if-eqz v5, :cond_3

    const-class v12, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v12, v5, v13}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v5

    const/4 v13, 0x4

    if-eq v5, v13, :cond_4

    invoke-virtual {v12}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v5

    const/4 v13, 0x6

    if-ne v5, v13, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {p1, v5, v13, v11}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_5
    invoke-virtual {v12, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    :cond_6
    move-object v5, v8

    :goto_1
    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    move-object v9, v5

    :goto_2
    iget-object v5, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    invoke-virtual {v5, v6, v4}, Lcom/android/launcher3/icons/BubbleIconFactory;->getBadgeBitmap(Landroid/graphics/drawable/Drawable;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v4

    iget-object v5, v4, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    new-array v6, v11, [F

    iget-object v0, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mIconFactory:Lcom/android/launcher3/icons/BubbleIconFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v9, v11, v8, v6}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aget v9, v6, v7

    const/4 v11, 0x2

    invoke-virtual {v0, v8, v9, v11}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x1040257

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v9

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    aget v6, v6, v7

    const/high16 v11, 0x42480000    # 50.0f

    invoke-virtual {v0, v6, v6, v11, v11}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v9, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    const v0, 0x3f0a8a8b

    iget v4, v4, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    const/4 v6, -0x1

    invoke-static {v4, v6, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v6

    if-nez v3, :cond_8

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0049

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    new-instance v12, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    move-object v0, v12

    move-object/from16 v1, p2

    move-object v2, v11

    move-object v3, v5

    move-object v4, v8

    move v5, v6

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;-><init>(Lcom/android/wm/shell/common/bubbles/d;Lcom/android/launcher3/taskbar/bubbles/BubbleView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILandroid/graphics/Path;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->setBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;)V

    return-object v12

    :cond_8
    invoke-virtual {v3, v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->setInfo(Lcom/android/wm/shell/common/bubbles/d;)V

    invoke-virtual {v3, v5}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->setBadge(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v8}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->setIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v6}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->setDotColor(I)V

    invoke-virtual {v3, v9}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->setDotPath(Landroid/graphics/Path;)V

    invoke-virtual {v3, v10}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->setAppName(Ljava/lang/String;)V

    return-object v3

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to find packageName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method


# virtual methods
.method public final getSelectedBubbleKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;)V
    .locals 1

    iget-object v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    iget-object v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iget-object v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    new-instance v0, LZ0/a;

    invoke-direct {v0, p0}, LZ0/a;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->runAfterInit(LZ0/a;)V

    return-void
.end method

.method public final onBubbleStateChange(Landroid/os/Bundle;)V
    .locals 3

    const-class v0, Lcom/android/wm/shell/common/bubbles/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "update"

    const-class v1, Lcom/android/wm/shell/common/bubbles/b;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/bubbles/b;

    new-instance v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;

    invoke-direct {v0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;-><init>(Lcom/android/wm/shell/common/bubbles/b;)V

    iget-object v1, p1, Lcom/android/wm/shell/common/bubbles/b;->g:Lcom/android/wm/shell/common/bubbles/d;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/wm/shell/common/bubbles/b;->h:Lcom/android/wm/shell/common/bubbles/d;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/wm/shell/common/bubbles/b;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_STATE_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/launcher3/taskbar/bubbles/b;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->BUBBLE_STATE_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/taskbar/bubbles/a;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/taskbar/bubbles/a;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/wm/shell/common/bubbles/b;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SystemUiProxy;->setBubblesListener(Lcom/android/wm/shell/bubbles/IBubblesListener;)V

    return-void
.end method

.method public final showAndSelectBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->updateSelectedBubble(Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->showSelectedBubble()V

    return-void
.end method

.method public final showSelectedBubble()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->getSelectedBubbleKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    instance-of v1, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;->getInfo()Lcom/android/wm/shell/common/bubbles/d;

    move-result-object v0

    iget v1, v0, Lcom/android/wm/shell/common/bubbles/d;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/wm/shell/common/bubbles/d;->e:I

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSelectedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarItem;->getView()Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->updateDotVisibility(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->getSelectedBubbleKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->getBubbleBarTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBarView:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {v0, v1, v3, p0}, Lcom/android/quickstep/SystemUiProxy;->showBubble(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const-string p0, "BubbleBarController"

    const-string v0, "Trying to show the selected bubble but it\'s null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final updateStateForSysuiFlags(I)V
    .locals 4

    const v0, 0x140a4c

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setHiddenForSysui(Z)V

    and-int/lit16 p1, p1, 0x248

    if-eqz p1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->setHiddenForSysui(Z)V

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->mBubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->onSysuiLockedStateChange(Z)V

    return-void
.end method
