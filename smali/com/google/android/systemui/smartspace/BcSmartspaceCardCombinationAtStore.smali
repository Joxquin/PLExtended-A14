.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombinationAtStore;
.super Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final t(Landroid/app/smartspace/SmartspaceTarget;Ln1/d;LL2/d;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getActionChips()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/smartspace/SmartspaceAction;

    if-nez v5, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    instance-of v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    check-cast v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->t(Landroid/app/smartspace/SmartspaceTarget;Ln1/d;LL2/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v8

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_3

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->v(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ln1/d;LL2/d;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v8

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p2, 0x7f08021d

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_4
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    move v1, v8

    :cond_5
    :goto_2
    return v1
.end method
