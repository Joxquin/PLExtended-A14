.class public final Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;
.super Landroid/widget/TableLayout;
.source "SourceFile"


# instance fields
.field private mRecommendationTableMaxHeight:F

.field private mWidgetCellOnClickListener:Landroid/view/View$OnClickListener;

.field private mWidgetCellOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mWidgetCellTextViewsHeight:F

.field private final mWidgetCellVerticalPadding:F

.field private final mWidgetsRecommendationTableVerticalPadding:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mRecommendationTableMaxHeight:F

    .line 4
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070464

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetsRecommendationTableVerticalPadding:F

    .line 6
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070563

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellVerticalPadding:F

    .line 8
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070561

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellTextViewsHeight:F

    return-void
.end method

.method private fitRecommendedWidgetsToTableSpace(FLjava/util/List;)Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;
    .locals 9

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Hide recommended widgets. Can\'t down scale previews to "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "WidgetsRecommendationTableLayout"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;-><init>(Ljava/util/List;F)V

    return-object p0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetsRecommendationTableVerticalPadding:F

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    move v6, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v1, v7}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetItemSizePx(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/model/WidgetItem;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    iget v8, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellTextViewsHeight:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellVerticalPadding:F

    add-float/2addr v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-float/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mRecommendationTableMaxHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    new-instance p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;-><init>(Ljava/util/List;F)V

    return-object p0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->fitRecommendedWidgetsToTableSpace(FLjava/util/List;)Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    move-result-object p0

    return-object p0

    :cond_4
    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p1, v0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->fitRecommendedWidgetsToTableSpace(FLjava/util/List;)Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final setRecommendedWidgets(FLjava/util/List;)V
    .locals 8

    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mRecommendationTableMaxHeight:F

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->fitRecommendedWidgetsToTableSpace(FLjava/util/List;)Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->b(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->b(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->b(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Landroid/widget/TableRow;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->setGravity(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0151

    invoke-virtual {v4, v5, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/widget/WidgetCell;

    const v5, 0x7f0a03e0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v4}, Lcom/android/launcher3/widget/WidgetCell;->setAnimatePreview()V

    const/16 v5, -0x6f

    invoke-virtual {v4, v5}, Lcom/android/launcher3/widget/WidgetCell;->setSourceContainer(I)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;->a(Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout$RecommendationTableData;)F

    move-result v5

    new-instance v6, Lf1/g;

    invoke-direct {v6, v4}, Lf1/g;-><init>(Lcom/android/launcher3/widget/WidgetCell;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;FLjava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Lcom/android/launcher3/widget/WidgetCell;->showBadge()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Landroid/widget/TableLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final setWidgetCellLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public final setWidgetCellOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->mWidgetCellOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
