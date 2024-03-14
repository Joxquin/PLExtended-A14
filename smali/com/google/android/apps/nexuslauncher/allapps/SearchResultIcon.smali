.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;
.super Lcom/android/launcher3/BubbleTextView;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/A2;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final D:Lcom/google/android/apps/nexuslauncher/allapps/E1;

.field public static final E:Landroid/graphics/Point;

.field public static final F:Lcom/google/android/apps/nexuslauncher/allapps/F1;

.field public static final G:Landroid/graphics/Rect;

.field public static final H:Landroid/graphics/drawable/AdaptiveIconDrawable;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Z

.field public final C:Lcom/android/systemui/animation/u;

.field public final d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final e:Z

.field public f:Ljava/util/function/Consumer;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:Lcom/android/launcher3/util/SafeCloseable;

.field public n:Lcom/google/android/apps/nexuslauncher/allapps/s0;

.field public o:Landroid/app/search/SearchTarget;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public final s:Landroid/graphics/Point;

.field public final t:Landroid/graphics/Paint;

.field public u:Z

.field public final v:I

.field public final w:I

.field public x:Ljava/lang/String;

.field public y:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/E1;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/allapps/E1;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->D:Lcom/google/android/apps/nexuslauncher/allapps/E1;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->E:Landroid/graphics/Point;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/F1;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/allapps/F1;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->F:Lcom/google/android/apps/nexuslauncher/allapps/F1;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->G:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->H:Landroid/graphics/drawable/AdaptiveIconDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->D:Lcom/google/android/apps/nexuslauncher/allapps/E1;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->f:Ljava/util/function/Consumer;

    .line 5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->s:Landroid/graphics/Point;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->t:Landroid/graphics/Paint;

    .line 7
    new-instance v1, Lcom/android/systemui/animation/u;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/D1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/D1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;)V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/animation/u;-><init>(Landroid/view/View;Lm3/l;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->C:Lcom/android/systemui/animation/u;

    .line 8
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06032c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->v:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070483

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->w:I

    .line 12
    sget-object v0, Lcom/android/launcher3/R$styleable;->SearchResultIcon:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->e:Z

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic l(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Ljava/lang/Integer;)Le3/f;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method

.method public static t(Lcom/android/launcher3/LauncherAppState;Landroid/app/search/SearchTarget;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 3

    new-instance v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const/4 v2, -0x1

    invoke-direct {v0, v2, p1, v1}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(ILandroid/os/UserHandle;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/data/PackageItemInfo;Z)V

    iget-object p0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    return-object p0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->r:I

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->h(II)Z

    move-result p0

    return p0
.end method

.method public final canShowLongPressPopup()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->s()Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/launcher3/BubbleTextView;->canShowLongPressPopup()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final d()Z
    .locals 1

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->r:I

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->h(II)Z

    move-result p0

    return p0
.end method

.method public final e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 13

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->p:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->q:I

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "response_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->u()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->f(Landroid/os/Bundle;)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->r:I

    const-string v2, "decorate_together"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->i:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->reset()V

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "icon"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setLayoutHorizontal(Z)V

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    const/16 v6, -0xc8

    const-string v7, "badge_with_package"

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setHideBadge(Z)V

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v1

    invoke-static {v1}, Lz0/b;->a(Landroid/app/search/SearchAction;)Landroid/os/Bundle;

    move-result-object v1

    const-string v7, "title_content_description_override"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/search/SearchAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->e(Landroid/app/search/SearchTarget;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/google/android/apps/nexuslauncher/allapps/O1;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, p0, v2, v11, v9}, Lcom/google/android/apps/nexuslauncher/allapps/O1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Landroid/content/pm/ShortcutInfo;Landroid/content/Context;Ljava/util/List;)V

    iput v6, v10, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, v10, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, v10, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_1
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {v6}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->K()Z

    move-result v4

    if-eqz v4, :cond_2

    iput v5, v10, Lcom/android/launcher3/model/data/ItemInfo;->animationType:I

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->p:Ljava/lang/String;

    sget-object v11, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v11}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lcom/google/android/apps/nexuslauncher/allapps/K1;

    invoke-direct {v12, p0, v4, v10, v2}, Lcom/google/android/apps/nexuslauncher/allapps/K1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Lcom/android/launcher3/LauncherAppState;Lcom/google/android/apps/nexuslauncher/allapps/O1;Landroid/content/pm/ShortcutInfo;)V

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/L1;

    invoke-direct {v4, p0, v10, v7, v1}, Lcom/google/android/apps/nexuslauncher/allapps/L1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Lcom/google/android/apps/nexuslauncher/allapps/O1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v11, v12, v4}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h(Ljava/lang/String;Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/google/android/apps/nexuslauncher/allapps/u0;)Lcom/google/android/apps/nexuslauncher/allapps/s0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->m:Lcom/android/launcher3/util/SafeCloseable;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isDeclaredInManifest()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v8

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v5

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->g:Z

    goto/16 :goto_9

    :cond_5
    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v2

    const/16 v9, 0x8

    if-eqz v2, :cond_16

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->e(Landroid/app/search/SearchTarget;)Lcom/google/android/apps/nexuslauncher/allapps/q0;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/search/SearchAction;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {v6}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v6

    const/16 v10, 0x10

    if-ne v6, v10, :cond_6

    move v6, v5

    goto :goto_3

    :cond_6
    move v6, v8

    :goto_3
    const/4 v11, 0x2

    if-eqz v4, :cond_7

    const-string v12, "should_start_for_result"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    :cond_7
    if-eqz v6, :cond_9

    :cond_8
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->v(I)V

    goto :goto_4

    :cond_9
    if-eqz v4, :cond_a

    const-string v6, "should_start"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v2, v11}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->v(I)V

    :cond_a
    :goto_4
    if-eqz v4, :cond_b

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v2, v9}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->v(I)V

    :cond_b
    if-eqz v4, :cond_c

    const-string v6, "badge_with_component_name"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->v(I)V

    :cond_c
    if-eqz v4, :cond_d

    const-string v6, "primary_icon_from_title"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v2, v10}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->v(I)V

    :cond_d
    const/16 v6, 0x40

    if-eqz v4, :cond_e

    const-string v7, "allow_pinning"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v2, v6}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->v(I)V

    :cond_e
    if-eqz v4, :cond_f

    const-string v7, "suggestion_action_text"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->x:Ljava/lang/String;

    const-string v7, "suggestion_action_rpc"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;->a(I)Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->y:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;

    const-string v7, "learn_more_url"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->A:Ljava/lang/String;

    :cond_f
    if-eqz v4, :cond_10

    const-string v7, "is_search_in_app"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v7, 0x80

    invoke-virtual {v2, v7}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->v(I)V

    :cond_10
    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->applyFromItemInfoWithIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {v1}, Landroid/app/search/SearchAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v2, v10}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->u(I)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-static {v1, v4}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->k(Landroid/graphics/drawable/Icon;Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    sget-object v9, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v9}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/google/android/apps/nexuslauncher/allapps/H1;

    invoke-direct {v10, p0, v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/H1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Landroid/graphics/drawable/Icon;Lcom/google/android/apps/nexuslauncher/allapps/q0;)V

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/I1;

    invoke-direct {v1, v8, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/I1;-><init>(ILcom/google/android/apps/nexuslauncher/allapps/g1;Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;)V

    invoke-virtual {v7, v4, v9, v10, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h(Ljava/lang/String;Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/google/android/apps/nexuslauncher/allapps/u0;)Lcom/google/android/apps/nexuslauncher/allapps/s0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->n:Lcom/google/android/apps/nexuslauncher/allapps/s0;

    goto :goto_5

    :cond_11
    const-string v1, "icon_integer"

    invoke-virtual {v4, v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {v7}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->j()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/google/android/apps/nexuslauncher/allapps/J1;

    invoke-direct {v10, v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/J1;-><init>(ILcom/google/android/apps/nexuslauncher/allapps/q0;Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;)V

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/I1;

    invoke-direct {v1, v5, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/I1;-><init>(ILcom/google/android/apps/nexuslauncher/allapps/g1;Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;)V

    invoke-virtual {v7, v4, v9, v10, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h(Ljava/lang/String;Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/google/android/apps/nexuslauncher/allapps/u0;)Lcom/google/android/apps/nexuslauncher/allapps/s0;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->n:Lcom/google/android/apps/nexuslauncher/allapps/s0;

    goto :goto_5

    :cond_12
    invoke-virtual {p0, v3, v2}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->p(Lcom/android/launcher3/icons/BitmapInfo;Lcom/google/android/apps/nexuslauncher/allapps/g1;)V

    :goto_5
    invoke-virtual {v2, v6}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->u(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v2, Lcom/google/android/apps/nexuslauncher/allapps/g1;->h:Landroid/content/Intent;

    if-eqz v1, :cond_13

    iget-object v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_13

    move v1, v5

    goto :goto_6

    :cond_13
    move v1, v8

    :goto_6
    if-nez v1, :cond_14

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, v2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    :cond_14
    if-eqz v1, :cond_15

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->r:I

    invoke-static {v1, v11}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->h(II)Z

    move-result v1

    if-nez v1, :cond_15

    move v1, v5

    goto :goto_7

    :cond_15
    move v1, v8

    :goto_7
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->g:Z

    goto/16 :goto_9

    :cond_16
    const-string v2, "class"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-nez v1, :cond_17

    const-string v1, ""

    :cond_17
    invoke-direct {v2, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->e(Landroid/app/search/SearchTarget;)Ljava/util/List;

    move-result-object v7

    iget-object v10, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v10, v10, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v10, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v10}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v10

    new-instance v11, Lcom/android/launcher3/util/ComponentKey;

    invoke-direct {v11, v2, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher3/allapps/AllAppsStore;->getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v1

    if-nez v1, :cond_18

    invoke-virtual {p0, v9}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unable to retrieve componentName from launcher app store. "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchResultIcon"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_18
    invoke-virtual {p0, v8}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->setVisibility(I)V

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/N1;

    invoke-direct {v2, p0, v1, v7}, Lcom/google/android/apps/nexuslauncher/allapps/N1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Lcom/android/launcher3/model/data/AppInfo;Ljava/util/List;)V

    iput v6, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->K()Z

    move-result v1

    if-eqz v1, :cond_19

    iput v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->animationType:I

    :cond_19
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "text_header_row"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, -0x1

    iput v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    :cond_1a
    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    :goto_8
    iput-boolean v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->g:Z

    :goto_9
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-static {v1}, Lz0/f;->e(Landroid/app/search/SearchTarget;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->h:Z

    if-eqz v1, :cond_1b

    iput-boolean v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->g:Z

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const v2, 0x7f13012b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->x:Ljava/lang/String;

    sget-object v1, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;->e:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->y:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;

    invoke-virtual {p0, v5}, Lcom/android/launcher3/BubbleTextView;->setHideBadge(Z)V

    :cond_1b
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->e:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->g:Z

    if-nez v1, :cond_1e

    :cond_1c
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->h:Z

    if-eqz v1, :cond_1d

    goto :goto_a

    :cond_1d
    move v5, v8

    :cond_1e
    :goto_a
    if-eqz v5, :cond_1f

    move-object v3, p0

    :cond_1f
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setLongClickable(Z)V

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->d:Lcom/google/android/apps/nexuslauncher/allapps/I2;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->h(Lcom/google/android/apps/nexuslauncher/allapps/I2;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getParentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->shouldUseTwoLine()Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->k:I

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->j:I

    add-int/2addr v0, v1

    goto :goto_b

    :cond_20
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->k:I

    :goto_b
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->l:I

    if-eq p1, v0, :cond_22

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->l:I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->requestLayout()V

    goto :goto_c

    :cond_21
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_22

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->k:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->requestLayout()V

    :cond_22
    :goto_c
    return-void
.end method

.method public final h(Lcom/google/android/apps/nexuslauncher/allapps/I2;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->L()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/j2;->a(Landroid/view/View;Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/allapps/I2;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->B:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    return v0
.end method

.method public final o(Landroid/app/search/SearchTarget;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a(Landroid/app/search/SearchTarget;)Lcom/google/android/apps/nexuslauncher/allapps/h1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->r:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->h(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->setVisibility(I)V

    invoke-virtual {p0, v1, v1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->x(III)V

    return v1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "LayoutType.ICON_SINGLE_VERTICAL_TEXT and flag HIDE_ICON are incompatible"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v0

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->v:I

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->w:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->x(III)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->q:I

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->q:I

    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    const/4 v2, 0x6

    invoke-static {v0, v2, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->m(Lcom/google/android/apps/nexuslauncher/allapps/y0;ILandroid/view/View;Landroid/app/search/SearchTarget;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    const/4 v2, 0x5

    invoke-static {v0, v2, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->m(Lcom/google/android/apps/nexuslauncher/allapps/y0;ILandroid/view/View;Landroid/app/search/SearchTarget;)V

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->E()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->u:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->G:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->H:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeoutFactor()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->j:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07008a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->j:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->k:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->l:I

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->k:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->g:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->q:I

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->C:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->g(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/app/search/SearchTarget;I)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getAllAppsItemLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final p(Lcom/android/launcher3/icons/BitmapInfo;Lcom/google/android/apps/nexuslauncher/allapps/g1;)V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->u()Landroid/os/Bundle;

    move-result-object v6

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "class"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->u(I)Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v5, :cond_1

    if-eqz p1, :cond_1

    iput-object p1, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->applyFromItemInfoWithIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lz0/b;->a(Landroid/app/search/SearchAction;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "icon_cache_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v9, v0

    goto :goto_1

    :cond_2
    move-object v9, v1

    :goto_1
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/google/android/apps/nexuslauncher/allapps/M1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/nexuslauncher/allapps/M1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;Lcom/android/launcher3/icons/BitmapInfo;Lcom/android/launcher3/LauncherAppState;Lcom/google/android/apps/nexuslauncher/allapps/g1;ZLandroid/os/Bundle;Z)V

    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/I1;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/I1;-><init>(ILcom/google/android/apps/nexuslauncher/allapps/g1;Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;)V

    invoke-virtual {v8, v9, v10, v11, p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h(Ljava/lang/String;Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/google/android/apps/nexuslauncher/allapps/u0;)Lcom/google/android/apps/nexuslauncher/allapps/s0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->m:Lcom/android/launcher3/util/SafeCloseable;

    return-void
.end method

.method public final q()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->s:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->r()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->s:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public final r()Landroid/graphics/Point;
    .locals 2

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->E:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p0

    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Point;->x:I

    :cond_0
    return-object v0
.end method

.method public final reset()V
    .locals 4

    invoke-super {p0}, Lcom/android/launcher3/BubbleTextView;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setLayoutHorizontal(Z)V

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->u:Z

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->g:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setHideBadge(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->y:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->m:Lcom/android/launcher3/util/SafeCloseable;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->m:Lcom/android/launcher3/util/SafeCloseable;

    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->n:Lcom/google/android/apps/nexuslauncher/allapps/s0;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/s0;->close()V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->n:Lcom/google/android/apps/nexuslauncher/allapps/s0;

    :cond_3
    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->B:Z

    return-void
.end method

.method public final s()Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->y:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->A:Ljava/lang/String;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/G1;

    invoke-direct {v0, p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/G1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;I)V

    const v1, 0x7f080290

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->p:Ljava/lang/String;

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/G1;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/G1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;I)V

    const v1, 0x7f08028b

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->p:Ljava/lang/String;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/G1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/G1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;I)V

    const v1, 0x7f080283

    :goto_0
    new-instance v2, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->x:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {v2, v3, p0, v1, v0}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    return-object v2
.end method

.method public final setItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->f:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->C:Lcom/android/systemui/animation/u;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/u;->setShouldBlockVisibilityChanges(Z)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->C:Lcom/android/systemui/animation/u;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/u;->i(I)V

    return-void
.end method

.method public final shouldUseTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getParentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->q:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldUseTwoLine()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->i:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TWOLINE_DEVICESEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->w()Lcom/android/launcher3/views/OptionsPopupView;

    move-result-object v0

    const v1, 0x7f0700f6

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->s:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-nez v2, :cond_1

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-super {p0}, Lcom/android/launcher3/BubbleTextView;->startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->q()Landroid/graphics/Point;

    move-result-object p0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/P1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/P1;-><init>(FLcom/android/launcher3/views/OptionsPopupView;Landroid/graphics/Point;)V

    move-object p0, v1

    :goto_2
    return-object p0

    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->q()Landroid/graphics/Point;

    move-result-object p0

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/P1;

    invoke-direct {v2, v1, v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/P1;-><init>(FLcom/android/launcher3/views/OptionsPopupView;Landroid/graphics/Point;)V

    return-object v2
.end method

.method public final u()Landroid/os/Bundle;
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o:Landroid/app/search/SearchTarget;

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->F:Lcom/google/android/apps/nexuslauncher/allapps/F1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->F:Lcom/google/android/apps/nexuslauncher/allapps/F1;

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public final v(Landroid/graphics/drawable/Icon;Lcom/google/android/apps/nexuslauncher/allapps/g1;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;

    invoke-direct {v1}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;-><init>()V

    iget-object p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setUser(Landroid/os/UserHandle;)V

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setShrinkNonAdaptiveIcons()V

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    instance-of p2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    const v3, 0x1120032

    invoke-static {v3, v2}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    const v2, 0x1010036

    invoke-static {v2, p2}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setBitmapGenerationMode()V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    const p2, 0x1010435

    invoke-static {p2, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->setExtractedColor(I)V

    :cond_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-static {p0}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public final w()Lcom/android/launcher3/views/OptionsPopupView;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->s()Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->r()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->r()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    iput v1, v2, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    move-result-object p0

    return-object p0
.end method

.method public final x(III)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p3, p1

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-void
.end method
