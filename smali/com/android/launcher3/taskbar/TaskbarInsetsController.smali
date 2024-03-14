.class public final Lcom/android/launcher3/taskbar/TaskbarInsetsController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# instance fields
.field private final context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final deviceProfileChangeListener:Lm3/l;

.field private final gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field private final insetsOwner:Landroid/os/IBinder;

.field private final taskbarHeightForIme:I

.field private final touchableRegion:Landroid/graphics/Region;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07052e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->taskbarHeightForIme:I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->deviceProfileChangeListener:Lm3/l;

    new-instance v0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarInsetsController$gestureNavSettingsObserver$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController$gestureNavSettingsObserver$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    return-void
.end method

.method private static getInsetsForGravity(II)Landroid/graphics/Insets;
    .locals 3

    and-int/lit8 v0, p1, 0x50

    const/16 v1, 0x50

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {v2, v2, v2, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    const-string p1, "of(0, 0, 0, inset)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const v0, 0x800003

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p1, :cond_2

    move v0, p0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz p1, :cond_3

    move p0, v2

    :cond_3
    invoke-static {v0, v2, p0, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    const-string p1, "of(leftInset , 0, rightInset, 0)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getProvidedInsets(I)[Landroid/view/InsetsFrameProvider;
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isGestureNav()Z

    move-result v0

    or-int/2addr p1, v0

    new-instance v0, Landroid/view/InsetsFrameProvider;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->insetsOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/view/InsetsFrameProvider;->setFlags(II)Landroid/view/InsetsFrameProvider;

    move-result-object p1

    const-string v0, "InsetsFrameProvider(inse\u2026                        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/InsetsFrameProvider;

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v1

    invoke-direct {v0, p0, v2, v1}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    new-instance v1, Landroid/view/InsetsFrameProvider;

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    new-instance v3, Landroid/view/InsetsFrameProvider;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v4

    invoke-direct {v3, p0, v2, v4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v3, v2}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v3

    const-string v4, "InsetsFrameProvider(inse\u2026setSource(SOURCE_DISPLAY)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroid/view/InsetsFrameProvider;

    const/4 v6, 0x1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v5, v2}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p1, v0, v1, v3, p0}, [Landroid/view/InsetsFrameProvider;

    move-result-object p0

    return-object p0
.end method

.method private final setProviderInsets(Landroid/view/InsetsFrameProvider;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    const/4 v1, 0x0

    const-string v2, "controllers"

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getContentHeightToReportToApps()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTappableHeightToReportToApps()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    const/4 v8, 0x0

    if-eq v6, v7, :cond_5

    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v7

    if-ne v6, v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v6

    if-ne v0, v6, :cond_1

    invoke-static {v3, p2}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsForGravity(II)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    if-ne v0, v6, :cond_3

    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getIndex()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v8

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v5}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivityForCallingUser(Landroid/content/res/Resources;)I

    move-result v0

    :goto_0
    invoke-static {v0, v8, v8, v8}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v6

    if-ne v0, v6, :cond_6

    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getIndex()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isThreeButtonNav()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v8

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v5}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivityForCallingUser(Landroid/content/res/Resources;)I

    move-result v0

    :goto_1
    invoke-static {v8, v8, v0, v8}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {v0, p2}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsForGravity(II)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/InsetsFrameProvider;->setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;

    :cond_6
    :goto_3
    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isGestureNav()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStashedHeight()I

    move-result p0

    invoke-static {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsForGravity(II)Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_4

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v1

    :cond_8
    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->taskbarHeightForIme:I

    invoke-static {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsForGravity(II)Landroid/graphics/Insets;

    move-result-object p0

    :goto_4
    new-instance v0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    const/16 v1, 0x7db

    invoke-direct {v0, v1, p0}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    filled-new-array {v0}, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isGestureNav()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v8, p2}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsForGravity(II)Landroid/graphics/Insets;

    move-result-object p2

    goto :goto_5

    :cond_9
    invoke-static {v3, p2}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getInsetsForGravity(II)Landroid/graphics/Insets;

    move-result-object p2

    :goto_5
    new-instance v2, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    invoke-direct {v2, v1, p0}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    new-instance p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    const/16 v1, 0x7ef

    invoke-direct {p0, v1, p2}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;-><init>(ILandroid/graphics/Insets;)V

    filled-new-array {v2, p0}, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object p0

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isGestureNav()Z

    move-result p2

    if-nez p2, :cond_a

    sget-boolean p2, Lcom/android/launcher3/taskbar/TaskbarManager;->FLAG_HIDE_NAVBAR_WINDOW:Z

    if-eqz p2, :cond_b

    :cond_a
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v1

    if-ne p2, v1, :cond_b

    invoke-virtual {p1, p0}, Landroid/view/InsetsFrameProvider;->setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result p2

    if-eq p0, p2, :cond_c

    invoke-virtual {p1, v0}, Landroid/view/InsetsFrameProvider;->setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;

    :cond_c
    :goto_6
    return-void

    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TaskbarInsetsController:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const-string v2, "windowLayoutParams"

    if-eqz v0, :cond_5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\twindowHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_4

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    const-string v0, "windowLayoutParams.providedInsets"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getInsetsSize()Landroid/graphics/Insets;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\tprovidedInsets: (type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " insetsSize="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v4, " insetsSizeOverrides={"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object v3

    const-string v4, "provider.insetsSizeOverrides"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    if-lez v5, :cond_0

    const-string v7, ", "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "})"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v1
.end method

.method public final getTaskbarHeightForIme()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->taskbarHeightForIme:I

    return p0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 2

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "context.windowLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarOrBubblebarWindowHeightOrInsetsChanged()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->deviceProfileChangeListener:Lm3/l;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0;

    invoke-direct {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0;-><init>(Lm3/l;)V

    invoke-interface {p1, v1}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->registerForCallingUser()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->deviceProfileChangeListener:Lm3/l;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0;

    invoke-direct {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0;-><init>(Lm3/l;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-interface {v0, v1}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->gestureNavSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->unregister()V

    return-void
.end method

.method public final onTaskbarOrBubblebarWindowHeightOrInsetsChanged()V
    .locals 12

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    const-string v1, "controllers"

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTappableHeightToReportToApps()I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v5, "windowLayoutParams"

    if-eqz v4, :cond_15

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getProvidedInsets(I)[Landroid/view/InsetsFrameProvider;

    move-result-object v6

    iput-object v6, v4, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isGestureNav()Z

    move-result v6

    const-string v7, "windowLayoutParams.paramsForRotation"

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_2

    iget-object v8, v6, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_3

    if-eqz v6, :cond_1

    invoke-static {v8, v7}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v6, v8

    move v9, v3

    :goto_1
    if-ge v9, v6, :cond_3

    aget-object v10, v8, v9

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getProvidedInsets(I)[Landroid/view/InsetsFrameProvider;

    move-result-object v11

    iput-object v11, v10, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v5}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTouchableHeight()I

    move-result v0

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v6, :cond_13

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarControllers;->bubbleControllers:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarControllers;->bubbleControllers:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;

    iget-object v6, v6, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->getTouchableHeight()I

    move-result v6

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_5
    move v6, v3

    :goto_2
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v6, :cond_12

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarControllers;->bubbleControllers:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v6, :cond_7

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarControllers;->bubbleControllers:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;

    iget-object v6, v6, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->isBubblesShowingOnHome()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->bubbleControllers:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->getBubbleBarBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v1, v6, v9, v0}, Landroid/graphics/Region;->set(IIII)Z

    goto :goto_3

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_8
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_11

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v1, v0

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_10

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v8, v3, v1, v0, v6}, Landroid/graphics/Region;->set(IIII)Z

    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_f

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    const-string v6, "windowLayoutParams.providedInsets"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v6, v0

    move v8, v3

    :goto_4
    const-string v9, "provider"

    if-ge v8, v6, :cond_9

    aget-object v10, v0, v8

    invoke-static {v10, v9}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v10, v1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->setProviderInsets(Landroid/view/InsetsFrameProvider;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_c

    if-eqz v0, :cond_b

    invoke-static {v1, v7}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v1

    move v2, v3

    :goto_5
    if-ge v2, v0, :cond_c

    aget-object v5, v1, v2

    iget-object v6, v5, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    const-string v7, "layoutParams.providedInsets"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v7, v6

    move v8, v3

    :goto_6
    if-ge v8, v7, :cond_a

    aget-object v10, v6, v8

    invoke-static {v10, v9}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v11, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {p0, v10, v11}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->setProviderInsets(Landroid/view/InsetsFrameProvider;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->notifyUpdateLayoutParams()V

    return-void

    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-static {v5}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_f
    invoke-static {v5}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_10
    invoke-static {v5}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-static {v5}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_12
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_13
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_14
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_15
    invoke-static {v5}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_16
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2
.end method

.method public final updateInsetsTouchability(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 8

    const-string v0, "insetsInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    const-string v1, "controllers"

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v4

    iget-object v5, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addVisibleButtonsRegion(Lcom/android/launcher3/views/BaseDragLayer;Landroid/graphics/Region;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->bubbleControllers:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->bubbleControllers:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->isBubbleBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v0, v5

    :goto_0
    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v6, v6, v7

    const/4 v7, 0x3

    if-gez v6, :cond_2

    invoke-virtual {p1, v7}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto/16 :goto_5

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v6, :cond_15

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isImeVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isStashed()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1, v7}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto/16 :goto_5

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v6, :cond_14

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isTaskbarTouchable()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1, v7}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto/16 :goto_5

    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v6, :cond_13

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isSystemDragInProgress()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1, v7}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isTaskbarWindowFullscreen()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1, v5}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    :goto_1
    move v4, v5

    goto/16 :goto_5

    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v6, :cond_12

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/TaskbarViewController;->areIconsVisible()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v6

    if-nez v6, :cond_9

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v7}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto/16 :goto_5

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isInOverview()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v3}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->getLastDrawnTransientRect()Landroid/graphics/RectF;

    move-result-object v0

    const-string v4, "controllers.taskbarActiv\u2026er.lastDrawnTransientRect"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/Region;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-direct {v4, v6}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p0, :cond_e

    const-string v0, "controllers.bubbleControllers"

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->bubbleControllers:Ljava/util/Optional;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;

    if-eqz p0, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->isBubblesShowingOnOverview()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->isBubbleBarVisible()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->getBubbleBarBounds()Landroid/graphics/Rect;

    move-result-object p0

    move-object v2, p0

    :cond_c
    :goto_3
    if-eqz v2, :cond_d

    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v2, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_d
    iget-object p0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_4

    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_10
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :goto_4
    invoke-virtual {p1, v7}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto/16 :goto_1

    :goto_5
    invoke-virtual {v3, v4}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->excludeFromMagnificationRegion(Z)V

    return-void

    :cond_11
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_12
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_13
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_14
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_15
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_16
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2

    :cond_17
    invoke-static {v1}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v2
.end method
