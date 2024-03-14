.class public Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;
.super LK2/n;
.source "SourceFile"


# instance fields
.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/ImageView;


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

    const v0, 0x7f0a01ae

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->e:Landroid/widget/TextView;

    const v0, 0x7f0a016c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->f:Landroid/widget/TextView;

    const v0, 0x7f0a02e4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0169

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->h:Landroid/widget/ImageView;

    const v0, 0x7f0a02e1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->i:Landroid/widget/ImageView;

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->f:Landroid/widget/TextView;

    invoke-static {v0, v1}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->g:Landroid/widget/TextView;

    invoke-static {v0, v1}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->h:Landroid/widget/ImageView;

    invoke-static {v0, v1}, LK2/t;->f(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->i:Landroid/widget/ImageView;

    invoke-static {p0, v1}, LK2/t;->f(Landroid/view/View;I)V

    return-void
.end method

.method public final t(Landroid/app/smartspace/SmartspaceTarget;Ln1/d;LL2/d;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;

    invoke-static {v0}, LL2/b;->a(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    move-result v1

    const-string v2, "HeadToHeadTemplateCard"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p0, "HeadToHeadTemplateData is null or invalid template type"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->getHeadToHeadTitle()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->getHeadToHeadTitle()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->e:Landroid/widget/TextView;

    if-nez v5, :cond_1

    const-string v1, "No head-to-head title view to update"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-static {v5, v1}, LK2/t;->e(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->e:Landroid/widget/TextView;

    invoke-static {v1, v3}, LK2/t;->f(Landroid/view/View;I)V

    move v1, v4

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    :goto_2
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->getHeadToHeadFirstCompetitorText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->getHeadToHeadFirstCompetitorText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->f:Landroid/widget/TextView;

    if-nez v6, :cond_4

    const-string v5, "No first competitor text view to update"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    goto :goto_3

    :cond_4
    invoke-static {v6, v5}, LK2/t;->e(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V

    iget-object v5, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->f:Landroid/widget/TextView;

    invoke-static {v5, v3}, LK2/t;->f(Landroid/view/View;I)V

    move v5, v4

    :goto_3
    if-nez v5, :cond_6

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v4

    :cond_7
    :goto_5
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->getHeadToHeadSecondCompetitorText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->getHeadToHeadSecondCompetitorText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->g:Landroid/widget/TextView;

    if-nez v6, :cond_8

    const-string v5, "No second competitor text view to update"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    goto :goto_6

    :cond_8
    invoke-static {v6, v5}, LK2/t;->e(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V

    iget-object v5, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->g:Landroid/widget/TextView;

    invoke-static {v5, v3}, LK2/t;->f(Landroid/view/View;I)V

    move v5, v4

    :goto_6
    if-nez v5, :cond_a

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    move v1, v3

    goto :goto_8

    :cond_a
    :goto_7
    move v1, v4

    :cond_b
    :goto_8
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->getHeadToHeadFirstCompetitorIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->getHeadToHeadFirstCompetitorIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->h:Landroid/widget/ImageView;

    if-nez v6, :cond_c

    const-string v5, "No first competitor icon view to update"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    goto :goto_9

    :cond_c
    invoke-static {v6, v5}, LK2/t;->d(Landroid/widget/ImageView;Landroid/app/smartspace/uitemplatedata/Icon;)V

    iget-object v5, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->h:Landroid/widget/ImageView;

    invoke-static {v5, v3}, LK2/t;->f(Landroid/view/View;I)V

    move v5, v4

    :goto_9
    if-nez v5, :cond_e

    if-eqz v1, :cond_d

    goto :goto_a

    :cond_d
    move v1, v3

    goto :goto_b

    :cond_e
    :goto_a
    move v1, v4

    :cond_f
    :goto_b
    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->getHeadToHeadSecondCompetitorIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->getHeadToHeadSecondCompetitorIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->i:Landroid/widget/ImageView;

    if-nez v6, :cond_10

    const-string v5, "No second competitor icon view to update"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_c

    :cond_10
    invoke-static {v6, v5}, LK2/t;->d(Landroid/widget/ImageView;Landroid/app/smartspace/uitemplatedata/Icon;)V

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->i:Landroid/widget/ImageView;

    invoke-static {v2, v3}, LK2/t;->f(Landroid/view/View;I)V

    move v2, v4

    :goto_c
    if-nez v2, :cond_11

    if-eqz v1, :cond_12

    :cond_11
    move v3, v4

    :cond_12
    move v1, v3

    :cond_13
    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->getHeadToHeadAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->getHeadToHeadAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v5

    const-string v7, "HeadToHeadTemplateCard"

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, LK2/e;->f(LK2/n;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Ln1/d;Ljava/lang/String;LL2/d;)V

    :cond_14
    return v1
.end method

.method public final u(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/HeadToHeadTemplateCard;->g:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
