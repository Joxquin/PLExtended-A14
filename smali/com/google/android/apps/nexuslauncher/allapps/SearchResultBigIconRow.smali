.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;
.super Lcom/android/systemui/animation/view/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/A2;
.implements Lcom/android/launcher3/views/BubbleTextHolder;


# static fields
.field public static final synthetic r:I


# instance fields
.field public final e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public final g:Lcom/android/launcher3/LauncherAppState;

.field public final h:I

.field public i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Lcom/android/launcher3/icons/cache/HandlerRunnable;

.field public final m:I

.field public final n:I

.field public final o:I

.field public p:Lcom/airbnb/lottie/a;

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/view/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    new-array p2, p2, [Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    .line 4
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->q:Z

    .line 6
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->g:Lcom/android/launcher3/LauncherAppState;

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070484

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->h:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->m:I

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07047e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->o:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070483

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->n:I

    .line 12
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->initLottieDrawable()V

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d()Z

    move-result p0

    return p0
.end method

.method public final e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->l:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->cancel()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->l:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o(Landroid/app/search/SearchTarget;)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    const v4, 0x7f0a0381

    const/4 v5, 0x0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->h:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3, v5, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->h:I

    invoke-virtual {v0, v3, v5, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    const-string v0, "big_icon_medium_row"

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070491

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->n:I

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->o:I

    invoke-virtual {p0, v0, v3, v5, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070490

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->n:I

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->m:I

    invoke-virtual {p0, v0, v3, v5, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->k(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v0

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    new-instance v6, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v8, -0x1

    invoke-direct {v6, v8, v3, v7}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(ILandroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v3, v6, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->k(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    sget-object v7, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v7}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/google/android/apps/nexuslauncher/allapps/B1;

    invoke-direct {v9, p0, v6}, Lcom/google/android/apps/nexuslauncher/allapps/B1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;Lcom/android/launcher3/model/data/PackageItemInfo;)V

    sget-object v6, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v10, Lcom/google/android/apps/nexuslauncher/allapps/A1;

    invoke-direct {v10, p0, v4}, Lcom/google/android/apps/nexuslauncher/allapps/A1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;I)V

    invoke-direct {v3, v8, v9, v6, v10}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/function/Consumer;)V

    iput-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->l:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-virtual {v7}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->l:Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-static {v3, v6}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/search/SearchAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->k(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object v6, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->b:Ljava/util/List;

    invoke-static {v3, v6}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->b([Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Ljava/util/List;)V

    const v3, 0x7f0a02f6

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f0a02f5

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "com.android.settings"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v2

    if-ne v2, v4, :cond_5

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/C1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/C1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->d:Lcom/google/android/apps/nexuslauncher/allapps/I2;

    invoke-interface {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->h(Lcom/google/android/apps/nexuslauncher/allapps/I2;)V

    sget-object p1, Lcom/google/android/apps/nexuslauncher/c;->s:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/search/SearchAction;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, "show_bday_animation"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->q:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->p:Lcom/airbnb/lottie/a;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getBubbleText()Lcom/android/launcher3/BubbleTextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    return-object p0
.end method

.method public initLottieDrawable()V
    .locals 5

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->s:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/airbnb/lottie/a;

    invoke-direct {v0}, Lcom/airbnb/lottie/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->p:Lcom/airbnb/lottie/a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120004

    invoke-static {v1, v0}, Lk0/s;->h(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lk0/r;

    invoke-direct {v4, v3, v0, v1, v2}, Lk0/r;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {v2, v4}, Lk0/s;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lk0/K;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->p:Lcom/airbnb/lottie/a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/z1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/z1;-><init>(Lcom/airbnb/lottie/a;)V

    invoke-virtual {v0, v1}, Lk0/K;->a(Lk0/E;)V

    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->r:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->h(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->k:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->k:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->B:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result p0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->s:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->p:Lcom/airbnb/lottie/a;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->p:Lcom/airbnb/lottie/a;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->p:Lcom/airbnb/lottie/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->start()V

    :cond_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/c;->s:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->p:Lcom/airbnb/lottie/a;

    invoke-virtual {v0}, Lcom/airbnb/lottie/a;->stop()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->p:Lcom/airbnb/lottie/a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01c7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/A1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/A1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;I)V

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->f:Ljava/util/function/Consumer;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v0

    const v2, 0x7f0a039b

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->j:Landroid/widget/TextView;

    const v2, 0x7f0a033b

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->k:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const v2, 0x7f0a02fc

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    aput-object v2, v0, v3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const v2, 0x7f0a02fd

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->f:[Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const v2, 0x7f0a02fe

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->s:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
