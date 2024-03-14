.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;
.super Lcom/android/systemui/animation/view/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/A2;
.implements Lcom/android/launcher3/views/BubbleTextHolder;


# static fields
.field public static final synthetic n:I


# instance fields
.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/ImageView;

.field public i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public m:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/view/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o(Landroid/app/search/SearchTarget;)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->k(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/search/SearchAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->k(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "title_overwrite"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->j:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->reset()V

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v1, :cond_3

    const-string v2, "is_non_tappable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->b:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/search/SearchTarget;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o(Landroid/app/search/SearchTarget;)Z

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ICON_IN_TEXT_HEADER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p1, v3}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->setVisibility(I)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final getBubbleText()Lcom/android/launcher3/BubbleTextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    return-object p0
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->r:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->h(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->g:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->g:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->g:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0273

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->j:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->m:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->i:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const v0, 0x7f0a01c7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/E2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/E2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;)V

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->f:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a039b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->e:Landroid/widget/TextView;

    const v0, 0x7f0a011f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->f:Landroid/widget/TextView;

    const v0, 0x7f0a033b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a03fc

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080220

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchTextHeaderRow;->k:Landroid/graphics/drawable/Drawable;

    return-void
.end method
