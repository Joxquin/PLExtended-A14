.class public final LO1/l;
.super Landroid/view/ContextThemeWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/views/ActivityContext;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final d:Ljava/util/List;

.field public final e:Landroid/app/Application;

.field public final f:Lcom/android/launcher3/DeviceProfile;

.field public final g:LO1/h;

.field public final h:LO1/k;

.field public final i:Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;

.field public final j:Landroid/view/ViewGroup;

.field public final k:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

.field public final l:I

.field public final m:LO1/j;

.field public n:Lcom/android/launcher3/Launcher;

.field public final o:LO1/E;

.field public final p:LO1/e;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;Ljava/util/List;)V
    .locals 10

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x7f6

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/Application;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LO1/l;->d:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, LO1/l;->e:Landroid/app/Application;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, LO1/l;->f:Lcom/android/launcher3/DeviceProfile;

    iput-object p1, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    new-instance p1, LO1/h;

    invoke-direct {p1, p0, p0}, LO1/h;-><init>(LO1/l;Landroid/content/Context;)V

    iput-object p1, p0, LO1/l;->g:LO1/h;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    const v4, 0x106000d

    invoke-virtual {v1, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x700

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v1, LO1/j;

    invoke-direct {v1, p0}, LO1/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LO1/l;->m:LO1/j;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d014d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;

    iput-object v0, p0, LO1/l;->i:Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;

    new-instance v1, LO1/c;

    invoke-direct {v1, p1, v4}, LO1/c;-><init>(LO1/h;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->addOnCloseCallback(Ljava/lang/Runnable;)V

    const p1, 0x7f0a03d2

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, LO1/l;->j:Landroid/view/ViewGroup;

    const p1, 0x7f0a03d1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    iput-object p1, p0, LO1/l;->k:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LO1/u;

    invoke-direct {v0, p1}, LO1/u;-><init>(Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO1/m;

    new-instance v3, LO1/w;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v1}, LO1/w;-><init>(Landroid/content/Context;LO1/m;)V

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x101030e

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    sget-object v6, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v6}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, LO1/o;

    invoke-direct {v8, p1, v1}, LO1/o;-><init>(Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;LO1/m;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v9, LO1/p;

    invoke-direct {v9, p1, v3}, LO1/p;-><init>(Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;LO1/w;)V

    invoke-direct {v5, v7, v8, v1, v9}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->d:Lcom/android/launcher3/util/RunnableList;

    new-instance v7, LO1/q;

    invoke-direct {v7, v4, v5}, LO1/q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v7}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v5}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v1, LO1/r;

    invoke-direct {v1, p1}, LO1/r;-><init>(Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-gtz p2, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, LO1/w;

    iput-object p2, p1, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->j:LO1/w;

    const/4 v0, 0x2

    invoke-static {p2, v0}, LO1/w;->a(LO1/w;I)V

    iget-object p2, p1, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->j:LO1/w;

    iput-object p2, p1, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->i:LO1/w;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->b()V

    :goto_1
    iget-object p1, p0, LO1/l;->k:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    new-instance p2, LO1/d;

    invoke-direct {p2, p0}, LO1/d;-><init>(LO1/l;)V

    iput-object p2, p1, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->m:Ljava/util/function/Consumer;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070418

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, LO1/l;->l:I

    new-instance p1, LO1/k;

    invoke-direct {p1, p0, p0}, LO1/k;-><init>(LO1/l;Landroid/content/Context;)V

    iput-object p1, p0, LO1/l;->h:LO1/k;

    new-instance p1, LO1/E;

    invoke-direct {p1, p0}, LO1/E;-><init>(LO1/l;)V

    iput-object p1, p0, LO1/l;->o:LO1/E;

    new-instance p1, LO1/e;

    invoke-direct {p1, v4, p0}, LO1/e;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LO1/l;->p:LO1/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, LO1/l;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, LO1/l;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    iget-object v0, p0, LO1/l;->i:Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, LO1/l;->i:Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->removeViewsInLayout(II)V

    :cond_1
    iget-object v0, p0, LO1/l;->i:Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/views/OptionsPopupView;->getOptions(Lcom/android/launcher3/Launcher;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    if-nez v3, :cond_2

    iget-object v5, p0, LO1/l;->j:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    iget-object v5, p0, LO1/l;->i:Lcom/google/android/apps/nexuslauncher/customize/OptionsPopupDialog$PopupView;

    :goto_1
    const v6, 0x7f0d014e

    invoke-virtual {v0, v6, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v6}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v5

    iget-object v7, v4, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v5

    iget-object v7, v4, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, LO1/f;

    invoke-direct {v5, p0, v4}, LO1/f;-><init>(LO1/l;Lcom/android/launcher3/views/OptionsPopupView$OptionItem;)V

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v5, LO1/g;

    invoke-direct {v5, p0, v4}, LO1/g;-><init>(LO1/l;Lcom/android/launcher3/views/OptionsPopupView$OptionItem;)V

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, LO1/l;->l:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final b(Landroid/view/View;Lcom/android/launcher3/views/OptionsPopupView$OptionItem;)Z
    .locals 6

    iget-object v0, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {v0}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v2, p2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->eventId:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-interface {v0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, LO1/l;->m:LO1/j;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance v2, LO1/i;

    iget-object v3, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v3, v0}, LO1/i;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Rect;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    iget-object p2, p2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;->clickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {p2, v2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, LO1/l;->g:LO1/h;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, LO1/c;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LO1/c;-><init>(LO1/h;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v0

    :cond_2
    return v1
.end method

.method public final c()Z
    .locals 4

    iget-object v0, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getThemeResId()I

    move-result v0

    iget-object p0, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result p0

    if-eq v0, p0, :cond_1

    move p0, v3

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-eqz p0, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    return v1
.end method

.method public final getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 0

    iget-object p0, p0, LO1/l;->f:Lcom/android/launcher3/DeviceProfile;

    return-object p0
.end method

.method public final getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, LO1/l;->m:LO1/j;

    return-object p0
.end method

.method public final getOnDeviceProfileChangeListeners()Ljava/util/List;
    .locals 0

    iget-object p0, p0, LO1/l;->d:Ljava/util/List;

    return-object p0
.end method

.method public final getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;
    .locals 2

    iget-object v0, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LO1/a;

    invoke-direct {v1}, LO1/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LO1/b;

    invoke-direct {v1, p0}, LO1/b;-><init>(LO1/l;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logging/StatsLogManager;

    return-object p0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    instance-of p2, p1, Lcom/android/launcher3/Launcher;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    :cond_0
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, LO1/l;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LO1/l;->g:LO1/h;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    :cond_1
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    instance-of p1, p1, Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, ":options_popup_dialog:popup_open"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LO1/l;->h:LO1/k;

    invoke-static {p1}, LO1/k;->a(LO1/k;)V

    :cond_1
    const-string p1, ":options_popup_dialog:wallpaper_loaded"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LO1/l;->m:LO1/j;

    iget-object p2, p0, LO1/l;->p:LO1/e;

    iget-object p0, p0, LO1/l;->k:Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/customize/WallpaperCarouselView;->i:LO1/w;

    iget-object p0, p0, LO1/w;->i:LO1/m;

    iget-object p0, p0, LO1/m;->g:Landroid/content/ComponentName;

    if-eqz p0, :cond_2

    const/16 p0, 0x4e2

    goto :goto_0

    :cond_2
    const/16 p0, 0x2ee

    :goto_0
    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, LO1/l;->c()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ":options_popup_dialog:popup_open"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, LO1/l;->m:LO1/j;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p0, LO1/l;->p:LO1/e;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LO1/l;->m:LO1/j;

    iget-object p0, p0, LO1/l;->p:LO1/e;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-string p0, ":options_popup_dialog:wallpaper_loaded"

    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, LO1/l;->n:Lcom/android/launcher3/Launcher;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, LO1/l;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, LO1/l;->g:LO1/h;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, LO1/l;->e:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p1, p0, LO1/l;->h:LO1/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    invoke-static {v0, p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(ILandroid/content/Context;)V

    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, LO1/l;->h:LO1/k;

    invoke-static {p0}, LO1/k;->a(LO1/k;)V

    return-void
.end method
