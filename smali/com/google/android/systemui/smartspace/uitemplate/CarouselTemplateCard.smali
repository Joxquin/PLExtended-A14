.class public Lcom/google/android/systemui/smartspace/uitemplate/CarouselTemplateCard;
.super LK2/n;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LK2/n;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LK2/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 10

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0114

    invoke-static {v5, v6, v4}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setId(I)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    new-instance v5, Landroidx/constraintlayout/widget/r;

    invoke-direct {v5, v2}, Landroidx/constraintlayout/widget/r;-><init>(I)V

    aget-object v6, v1, v3

    if-lez v3, :cond_1

    add-int/lit8 v7, v3, -0x1

    aget-object v7, v1, v7

    goto :goto_2

    :cond_1
    move-object v7, v4

    :goto_2
    const/4 v8, 0x3

    if-ge v3, v8, :cond_2

    add-int/lit8 v9, v3, 0x1

    aget-object v9, v1, v9

    goto :goto_3

    :cond_2
    move-object v9, v4

    :goto_3
    if-nez v3, :cond_3

    iput v2, v5, Landroidx/constraintlayout/widget/d;->t:I

    const/4 v7, 0x1

    iput v7, v5, Landroidx/constraintlayout/widget/d;->J:I

    goto :goto_4

    :cond_3
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    iput v7, v5, Landroidx/constraintlayout/widget/d;->s:I

    :goto_4
    if-ne v3, v8, :cond_4

    iput v2, v5, Landroidx/constraintlayout/widget/d;->v:I

    goto :goto_5

    :cond_4
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    iput v7, v5, Landroidx/constraintlayout/widget/d;->u:I

    :goto_5
    iput v2, v5, Landroidx/constraintlayout/widget/d;->i:I

    iput v2, v5, Landroidx/constraintlayout/widget/d;->l:I

    invoke-virtual {p0, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final s()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a03bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, LK2/t;->f(Landroid/view/View;I)V

    const v2, 0x7f0a01c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v3}, LK2/t;->f(Landroid/view/View;I)V

    const v2, 0x7f0a01ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3}, LK2/t;->f(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t(Landroid/app/smartspace/SmartspaceTarget;Ln1/d;LL2/d;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;

    invoke-static {v6}, LL2/b;->a(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CarouselTemplateCard"

    if-eqz v0, :cond_9

    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->getCarouselItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->getCarouselItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, LM2/a;

    invoke-direct {v4}, LM2/a;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->count()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result v3

    const/4 v4, 0x4

    const/4 v7, 0x1

    if-ge v3, v4, :cond_4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    rsub-int/lit8 v8, v3, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Hiding %d incomplete column(s)."

    invoke-static {v5, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    rsub-int/lit8 v2, v8, 0x3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-gt v5, v2, :cond_1

    move v10, v1

    goto :goto_1

    :cond_1
    const/16 v10, 0x8

    :goto_1
    invoke-static {v9, v10}, LK2/t;->f(Landroid/view/View;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/d;

    if-nez v8, :cond_3

    move v4, v7

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    iput v4, v2, Landroidx/constraintlayout/widget/d;->J:I

    :cond_4
    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a03bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v8, 0x7f0a01c7

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a01ff

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    invoke-virtual {v9}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->getUpperText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v9

    invoke-static {v4, v9}, LK2/t;->e(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V

    invoke-static {v4, v1}, LK2/t;->f(Landroid/view/View;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->getImage()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v4

    invoke-static {v5, v4}, LK2/t;->d(Landroid/widget/ImageView;Landroid/app/smartspace/uitemplatedata/Icon;)V

    invoke-static {v5, v1}, LK2/t;->f(Landroid/view/View;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->getLowerText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v4

    invoke-static {v8, v4}, LK2/t;->e(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V

    invoke-static {v8, v1}, LK2/t;->f(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->getCarouselAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->getCarouselAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v2

    const-string v4, "CarouselTemplateCard"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LK2/e;->f(LK2/n;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Ln1/d;Ljava/lang/String;LL2/d;)V

    :cond_6
    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData;->getCarouselItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/CarouselTemplateData$CarouselItem;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v2

    const-string v4, "CarouselTemplateCard"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LK2/e;->f(LK2/n;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Ln1/d;Ljava/lang/String;LL2/d;)V

    goto :goto_4

    :cond_8
    return v7

    :cond_9
    :goto_5
    const-string v0, "CarouselTemplateData is null or has no CarouselItem or invalid template type"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final u(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a03bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
