.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;
.super LK2/n;
.source "SourceFile"


# instance fields
.field public e:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public f:Landroidx/constraintlayout/widget/ConstraintLayout;


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
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a016d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a02e5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, LK2/t;->f(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p0, v1}, LK2/t;->f(Landroid/view/View;I)V

    return-void
.end method

.method public t(Landroid/app/smartspace/SmartspaceTarget;Ln1/d;LL2/d;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getActionChips()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/app/smartspace/SmartspaceAction;

    if-nez v7, :cond_1

    return v1

    :cond_1
    iget-object v5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_2

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->v(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ln1/d;LL2/d;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eqz v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/smartspace/SmartspaceAction;

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v5, p0

    move-object v7, p1

    move-object v9, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->v(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ln1/d;LL2/d;)Z

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v3

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    const/high16 p3, 0x40400000    # 3.0f

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    :cond_5
    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_3
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    move v1, v3

    :cond_7
    :goto_4
    return v1
.end method

.method public final u(I)V
    .locals 0

    return-void
.end method

.method public final v(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ln1/d;LL2/d;)Z
    .locals 10

    const v0, 0x7f0a0337

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0336

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "BcSmartspaceCardCombination"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p0, "No sub-card text field to update"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    if-nez v1, :cond_1

    const-string p0, "No sub-card image field to update"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string v8, "BcSmartspaceCardCombination"

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, LK2/e;->g(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ln1/d;Ljava/lang/String;LL2/d;)V

    invoke-virtual {p3}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, LK2/e;->b(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p2, 0x1

    const/16 p4, 0x8

    if-nez p0, :cond_2

    invoke-static {v1, p4}, LK2/t;->f(Landroid/view/View;I)V

    move p0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v3}, LK2/t;->f(Landroid/view/View;I)V

    move p0, p2

    :goto_0
    invoke-virtual {p3}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, p4}, LK2/t;->f(Landroid/view/View;I)V

    move p2, p0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0, v3}, LK2/t;->f(Landroid/view/View;I)V

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p3}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_5

    invoke-static {p1, v3}, LK2/t;->f(Landroid/view/View;I)V

    goto :goto_3

    :cond_5
    invoke-static {p1, p4}, LK2/t;->f(Landroid/view/View;I)V

    :goto_3
    return p2
.end method
