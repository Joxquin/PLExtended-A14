.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCard;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public d:LK2/n;

.field public e:Landroid/app/smartspace/SmartspaceTarget;

.field public final f:LK2/F;

.field public final g:LK2/F;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Landroid/view/ViewGroup;

.field public k:Landroid/view/ViewGroup;

.field public l:Lcom/google/android/systemui/smartspace/IcuDateTextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

.field public p:Landroid/view/ViewGroup;

.field public q:Landroid/widget/ImageView;

.field public r:Landroid/widget/ImageView;

.field public s:Landroid/widget/TextView;

.field public t:LL2/d;

.field public u:Ljava/lang/String;

.field public v:F

.field public w:Ln1/d;

.field public x:Z

.field public y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->d:LK2/n;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v1, v0}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->i:I

    .line 6
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->j:Landroid/view/ViewGroup;

    .line 7
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    .line 8
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->l:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    .line 9
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    .line 10
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->n:Landroid/widget/TextView;

    .line 11
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    .line 12
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->p:Landroid/view/ViewGroup;

    .line 13
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->q:Landroid/widget/ImageView;

    .line 14
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->r:Landroid/widget/ImageView;

    .line 15
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->s:Landroid/widget/TextView;

    .line 16
    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->u:Ljava/lang/String;

    const-string p2, "persist.sysui.ss.dw_decoupled"

    const/4 v0, 0x1

    .line 17
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const v1, 0x7f1401ed

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const v1, 0x7f1401ec

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 20
    :goto_0
    new-instance p2, LK2/F;

    invoke-direct {p2, p1}, LK2/F;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->f:LK2/F;

    .line 21
    new-instance p2, LK2/F;

    invoke-direct {p2, p1}, LK2/F;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->g:LK2/F;

    .line 22
    new-instance p0, LK2/F;

    invoke-direct {p0, p1}, LK2/F;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p0, LK2/F;

    invoke-direct {p0, p1}, LK2/F;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static r(LL2/d;I)I
    .locals 3

    iget-object p0, p0, LL2/d;->h:LL2/h;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, LL2/h;->a:Ljava/util/List;

    if-eqz p0, :cond_1

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL2/f;

    if-eqz v2, :cond_0

    iget v2, v2, LL2/f;->b:I

    if-ne v2, p1, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static s(Landroid/app/smartspace/SmartspaceAction;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "subcardType"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
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

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->j:Landroid/view/ViewGroup;

    const v0, 0x7f0a02e7

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->l:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    const v0, 0x7f0a039e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    const v0, 0x7f0a033c

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->n:Landroid/widget/TextView;

    const v0, 0x7f0a00a5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const v0, 0x7f0a030d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->p:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v1, 0x7f0a0132

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->q:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->p:Landroid/view/ViewGroup;

    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->p:Landroid/view/ViewGroup;

    const v1, 0x7f0a0070

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->s:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public final t(F)V
    .locals 5

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->v:F

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const-string v2, "hide_title_on_aod"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    sub-float v3, v1, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->n:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const-string v2, "hide_subtitle_on_aod"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->n:Landroid/widget/TextView;

    sub-float p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->q:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->v:F

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->j:Landroid/view/ViewGroup;

    if-nez p1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->v:F

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->y:Z

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

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result p1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_a

    :cond_7
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v4, :cond_9

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->j:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, -0x1

    :goto_2
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Ly0/e;->a:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->v:F

    check-cast v3, Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->v:F

    sub-float p0, v1, p0

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr p0, v2

    const/high16 v2, 0x40c00000    # 6.0f

    sub-float/2addr p0, v2

    invoke-static {p0, v0, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->j:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final u(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;LL2/d;)V
    .locals 6

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->w:Ln1/d;

    const-string v4, "BcSmartspaceCard"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LK2/e;->g(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ln1/d;Ljava/lang/String;LL2/d;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->w:Ln1/d;

    const-string v4, "BcSmartspaceCard"

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LK2/e;->g(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ln1/d;Ljava/lang/String;LL2/d;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->w:Ln1/d;

    const-string v4, "BcSmartspaceCard"

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LK2/e;->g(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ln1/d;Ljava/lang/String;LL2/d;)V

    :cond_1
    return-void
.end method

.method public final v(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->l:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->setTextColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->d:LK2/n;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, LK2/n;->u(I)V

    :cond_4
    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->i:I

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->y()V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->s:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->i:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->r:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    :cond_6
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->q:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->i:I

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    :cond_7
    return-void
.end method

.method public final w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->n:Landroid/widget/TextView;

    const-string v1, "BcSmartspaceCard"

    if-nez v0, :cond_0

    const-string p0, "No subtitle view to update"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->n:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->f:LK2/F;

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    iget-boolean v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->x:Z

    if-nez v2, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->n:Landroid/widget/TextView;

    invoke-static {v1, v0, p1, p2}, LN2/a;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->n:Landroid/widget/TextView;

    if-eqz p3, :cond_4

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->f:LK2/F;

    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result p0

    invoke-static {p1, v3, p0}, LK2/t;->c(Landroid/widget/TextView;LK2/F;Z)V

    return-void
.end method

.method public final x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    const-string v1, "BcSmartspaceCard"

    if-nez v0, :cond_0

    const-string p0, "No title view to update"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    const-string v3, "titleEllipsize"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid TruncateAt value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_2
    const/4 v3, 0x0

    if-eqz v0, :cond_6

    const-string v4, "titleMaxLines"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_5
    const-string v4, "disableTitleIcon"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    if-eqz p3, :cond_7

    if-nez v0, :cond_7

    const/4 v3, 0x1

    :cond_7
    if-eqz v3, :cond_8

    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    invoke-static {v1, p3, p1, p2}, LN2/a;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->f:LK2/F;

    goto :goto_4

    :cond_9
    move-object p2, v2

    :goto_4
    invoke-virtual {p1, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->f:LK2/F;

    :cond_a
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result p0

    invoke-static {p1, v2, p0}, LK2/t;->c(Landroid/widget/TextView;LK2/F;Z)V

    return-void
.end method

.method public final y()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->f:LK2/F;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->i:I

    invoke-virtual {v1, v0}, LK2/F;->setTint(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->g:LK2/F;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->s(Landroid/app/smartspace/SmartspaceAction;)I

    move-result v1

    if-eq v1, v3, :cond_3

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->i:I

    invoke-virtual {v0, p0}, LK2/F;->setTint(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final z()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->p:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->q:Landroid/widget/ImageView;

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
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->r:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->x:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v0

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    if-nez v1, :cond_6

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->p:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-static {p0, v0}, LK2/t;->f(Landroid/view/View;I)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->p:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->i:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->i:I

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_9
    :goto_3
    return-void
.end method
