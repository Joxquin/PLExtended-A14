.class public Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;
.super Lcom/android/systemui/animation/view/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/A2;
.implements Lcom/android/launcher3/views/BubbleTextHolder;


# static fields
.field public static final synthetic m:I


# instance fields
.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/view/ViewGroup;

.field public j:Lcom/google/android/apps/nexuslauncher/allapps/s0;

.field public k:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object v3, v1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o(Landroid/app/search/SearchTarget;)Z

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->k:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->b:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->j:Lcom/google/android/apps/nexuslauncher/allapps/s0;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/allapps/s0;->close()V

    iput-object v6, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->j:Lcom/google/android/apps/nexuslauncher/allapps/s0;

    :cond_0
    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->e:Landroid/widget/TextView;

    const-string v8, "tall_card_header"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, "tall_card_header_content_description_override"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->e:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v7, "bitmap_url"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->i:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->i:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->i:Landroid/view/ViewGroup;

    const v10, 0x7f0a004d

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    iget-object v11, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->i:Landroid/view/ViewGroup;

    invoke-virtual {v11, v9, v9}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v11, v9

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/search/SearchTarget;

    const v13, 0x7f0d0131

    invoke-virtual {v10, v13, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v14, 0x7f0a0044

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/search/SearchAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0a00c1

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    new-instance v15, Lcom/google/android/apps/nexuslauncher/allapps/J2;

    const/4 v6, 0x1

    invoke-direct {v15, v13, v6}, Lcom/google/android/apps/nexuslauncher/allapps/J2;-><init>(Landroid/view/View;I)V

    iput-object v15, v14, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->f:Ljava/util/function/Consumer;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v12}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->o(Landroid/app/search/SearchTarget;)Z

    invoke-virtual {v14, v4}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->setVisibility(I)V

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-lez v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x7f0704ee

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v12, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v13, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-virtual {v2}, Landroid/app/search/SearchAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/search/SearchAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->f:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->f:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lz0/b;->a(Landroid/app/search/SearchAction;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "subtitle_content_description_override"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->h:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->h:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "webimage_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->k:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v6, Lcom/google/android/apps/nexuslauncher/allapps/K2;

    invoke-direct {v6, v0, v7}, Lcom/google/android/apps/nexuslauncher/allapps/K2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/apps/nexuslauncher/allapps/L2;

    invoke-direct {v7, v0, v5}, Lcom/google/android/apps/nexuslauncher/allapps/L2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;Landroid/os/Bundle;)V

    invoke-virtual {v3, v2, v4, v6, v7}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->h(Ljava/lang/String;Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/google/android/apps/nexuslauncher/allapps/u0;)Lcom/google/android/apps/nexuslauncher/allapps/s0;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->j:Lcom/google/android/apps/nexuslauncher/allapps/s0;

    :cond_7
    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->d:Lcom/google/android/apps/nexuslauncher/allapps/I2;

    invoke-interface {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->h(Lcom/google/android/apps/nexuslauncher/allapps/I2;)V

    return-void
.end method

.method public final getBubbleText()Lcom/android/launcher3/BubbleTextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01d7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->h:Landroid/widget/ImageView;

    const v0, 0x7f0a01af

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->e:Landroid/widget/TextView;

    const v0, 0x7f0a039b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->f:Landroid/widget/TextView;

    const v0, 0x7f0a033b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->g:Landroid/widget/TextView;

    const v0, 0x7f0a01c7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->l:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/J2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/J2;-><init>(Landroid/view/View;I)V

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->f:Ljava/util/function/Consumer;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->i:Landroid/view/ViewGroup;

    return-void
.end method
