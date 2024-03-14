.class public Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public d:LK2/n;

.field public e:Landroid/app/smartspace/SmartspaceTarget;

.field public f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

.field public g:I

.field public h:LL2/d;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Landroid/view/ViewGroup;

.field public l:Landroid/view/ViewGroup;

.field public m:Lcom/google/android/systemui/smartspace/IcuDateTextView;

.field public n:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public o:Landroid/view/ViewGroup;

.field public p:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public q:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public r:Landroid/view/ViewGroup;

.field public s:Landroid/widget/ImageView;

.field public t:Landroid/widget/ImageView;

.field public u:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public v:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public w:Ljava/lang/String;

.field public x:F

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->d:LK2/n;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->g:I

    .line 5
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->h:LL2/d;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010036

    invoke-static {v2, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->i:I

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->j:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->k:Landroid/view/ViewGroup;

    .line 9
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    .line 10
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->m:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 11
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->n:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 12
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->o:Landroid/view/ViewGroup;

    .line 13
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->p:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 14
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->q:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 15
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->r:Landroid/view/ViewGroup;

    .line 16
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->s:Landroid/widget/ImageView;

    .line 17
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t:Landroid/widget/ImageView;

    .line 18
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->u:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 19
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->v:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const-string p0, "persist.sysui.ss.dw_decoupled"

    const/4 p2, 0x1

    .line 20
    invoke-static {p0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const p1, 0x7f1401ed

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const p1, 0x7f1401ec

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_0
    return-void
.end method

.method public static x(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/smartspace/uitemplatedata/Icon;->shouldTint()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final A()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->r:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->s:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->v:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->y:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->m:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :cond_6
    :goto_3
    if-nez v1, :cond_7

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->r:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-static {p0, v0}, LK2/t;->f(Landroid/view/View;I)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->r:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, LK2/t;->f(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->z()V

    :goto_4
    return-void
.end method

.method public final createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AccessibilityNodeInfo.roleDescription"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a037c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->k:Landroid/view/ViewGroup;

    const v0, 0x7f0a02e7

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->m:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    const v0, 0x7f0a039e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->n:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const v0, 0x7f0a030f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->o:Landroid/view/ViewGroup;

    const v0, 0x7f0a033c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->p:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const v0, 0x7f0a00a5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->q:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const v0, 0x7f0a030d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->r:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v1, 0x7f0a0132

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->s:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->r:Landroid/view/ViewGroup;

    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->r:Landroid/view/ViewGroup;

    const v1, 0x7f0a0070

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->u:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->r:Landroid/view/ViewGroup;

    const v1, 0x7f0a0341

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->v:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    :cond_0
    return-void
.end method

.method public final r()LL2/d;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->h:LL2/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LL2/c;

    invoke-direct {v0}, LL2/c;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->w:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->x:F

    invoke-static {v1, v2}, LK2/e;->d(Ljava/lang/String;F)I

    move-result v1

    iput v1, v0, LL2/c;->b:I

    iget v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->g:I

    iput v1, v0, LL2/c;->e:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    const/4 v1, -0x1

    iput v1, v0, LL2/c;->g:I

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object p0

    invoke-static {p0}, LL2/b;->b(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Ls1/a;

    move-result-object p0

    iput-object p0, v0, LL2/c;->i:Ls1/a;

    invoke-virtual {v0}, LL2/c;->a()LL2/d;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final s(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->h:LL2/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, LL2/d;->h:LL2/h;

    if-eqz v0, :cond_2

    iget-object v0, v0, LL2/h;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getFeatureType()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->h:LL2/d;

    iget v2, p0, LL2/d;->e:I

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, LL2/d;->h:LL2/h;

    iget-object p0, p0, LL2/h;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getLoggingInfo()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL2/f;

    iget v3, v2, LL2/f;->a:I

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getInstanceId()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->getFeatureType()I

    move-result v3

    iget v2, v2, LL2/f;->b:I

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final t(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result p0

    invoke-static {p1, v0, p0}, LK2/t;->c(Landroid/widget/TextView;LK2/F;Z)V

    return-void
.end method

.method public final u(F)V
    .locals 5

    iput p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->x:F

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->n:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v2, :cond_0

    const-string v2, "hide_title_on_aod"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->n:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    sub-float v3, v1, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->p:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v2, :cond_1

    const-string v2, "hide_subtitle_on_aod"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->p:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    sub-float p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->s:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->x:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->k:Landroid/view/ViewGroup;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->x:F

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->z:Z

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v3

    :goto_1
    const/16 v4, 0x8

    if-eqz v0, :cond_6

    move v2, v4

    :cond_6
    invoke-static {p1, v2}, LK2/t;->f(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v4, :cond_8

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->k:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, -0x1

    :goto_2
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Ly0/e;->a:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->x:F

    check-cast v3, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    iget p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->x:F

    sub-float p0, v1, p0

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr p0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    sub-float/2addr p0, v2

    invoke-static {p0, v0, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->k:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :goto_3
    return-void
.end method

.method public final v(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->i:I

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->n:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->n:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->x(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->y(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->m:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->p:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->p:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->x(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->y(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->q:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->q:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleSupplementalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->x(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->y(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->z()V

    return-void
.end method

.method public final w(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;LK2/B;)V
    .locals 8

    const-string v0, "SsBaseTemplateCard"

    if-nez p1, :cond_0

    const-string p0, "No text view can be set up"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    if-nez p2, :cond_1

    const-string p0, "Passed-in item info is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    invoke-static {p1, p0}, LK2/t;->f(Landroid/view/View;I)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v2

    invoke-static {p1, v2}, LK2/t;->e(Landroid/widget/TextView;Landroid/app/smartspace/uitemplatedata/Text;)V

    invoke-static {v1}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->i:I

    invoke-virtual {p1, v2}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    :cond_2
    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, LK2/F;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, LK2/F;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/Icon;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, LK2/e;->b(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, LK2/F;->b(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/Text;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/Icon;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, p1, v1, v4}, LN2/a;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/app/smartspace/uitemplatedata/Icon;->shouldTint()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->y(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v0

    invoke-static {p1, v3, v0}, LK2/t;->c(Landroid/widget/TextView;LK2/F;Z)V

    :cond_4
    const/4 v0, 0x0

    invoke-static {p1, v0}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v3

    const-string v5, "SsBaseTemplateCard"

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->h:LL2/d;

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->s(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)I

    move-result v7

    move-object v1, p1

    move-object v4, p3

    invoke-static/range {v1 .. v7}, LK2/e;->i(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Ln1/d;Ljava/lang/String;LL2/d;I)V

    return-void
.end method

.method public final y(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    iget v3, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->i:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final z()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->i:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->u:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->i:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->v:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-static {v0}, LL2/b;->a(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->v:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->x(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->y(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Z)V

    :cond_3
    return-void
.end method
