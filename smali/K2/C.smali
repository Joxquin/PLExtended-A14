.class public final LK2/C;
.super Lj0/a;
.source "SourceFile"


# static fields
.field public static final y:LK2/z;


# instance fields
.field public final c:Landroid/view/View;

.field public final d:Landroid/util/SparseArray;

.field public final e:LK2/O;

.field public final f:LK2/O;

.field public final g:Landroid/util/SparseArray;

.field public final h:Landroid/util/SparseArray;

.field public i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:Ljava/util/List;

.field public final l:Ljava/util/List;

.field public m:Z

.field public n:Z

.field public final o:I

.field public p:I

.field public q:I

.field public r:Ln1/b;

.field public s:Ln1/f;

.field public t:Ljava/lang/String;

.field public u:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

.field public v:F

.field public w:F

.field public final x:LK2/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LK2/z;

    invoke-direct {v0}, LK2/z;-><init>()V

    sput-object v0, LK2/C;->y:LK2/z;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ln1/b;)V
    .locals 2

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lj0/a;-><init>()V

    iput-object p1, p0, LK2/C;->c:Landroid/view/View;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LK2/C;->d:Landroid/util/SparseArray;

    new-instance v0, LK2/O;

    const-string v1, "enable_card_recycling"

    invoke-direct {v0, v1}, LK2/O;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LK2/C;->e:LK2/O;

    new-instance v0, LK2/O;

    const-string v1, "enable_reduced_card_recycling"

    invoke-direct {v0, v1}, LK2/O;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LK2/C;->f:LK2/O;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LK2/C;->g:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LK2/C;->h:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LK2/C;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LK2/C;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LK2/C;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LK2/C;->l:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, LK2/C;->o:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x1010036

    invoke-static {v0, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p1

    iput p1, p0, LK2/C;->p:I

    iput p1, p0, LK2/C;->q:I

    iput-object p2, p0, LK2/C;->r:Ln1/b;

    sget-object p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->d:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    iput-object p1, p0, LK2/C;->u:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    new-instance p1, LK2/a;

    invoke-direct {p1}, LK2/a;-><init>()V

    iput-object p1, p0, LK2/C;->x:LK2/a;

    return-void
.end method

.method public static synthetic getAodTargets$annotations()V
    .locals 0

    return-void
.end method

.method public static final getBaseLegacyCardRes(I)I
    .locals 1

    sget-object v0, LK2/C;->y:LK2/z;

    invoke-virtual {v0, p0}, LK2/z;->getBaseLegacyCardRes(I)I

    move-result p0

    return p0
.end method

.method public static synthetic getConfigProvider$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDataProvider$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDozeAmount$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getHasAodLockscreenTransition$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getHasDifferentTargets$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getKeyguardBypassEnabled$annotations()V
    .locals 0

    return-void
.end method

.method public static final getLegacySecondaryCardRes(I)I
    .locals 1

    sget-object v0, LK2/C;->y:LK2/z;

    invoke-virtual {v0, p0}, LK2/z;->getLegacySecondaryCardRes(I)I

    move-result p0

    return p0
.end method

.method public static synthetic getLockscreenTargets$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getNextAlarmData$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPrimaryTextColor$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUiSurface$annotations()V
    .locals 0

    return-void
.end method

.method public static final useRecycledViewForNewTarget(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceTarget;)Z
    .locals 1

    sget-object v0, LK2/C;->y:LK2/z;

    invoke-virtual {v0, p0, p1}, LK2/z;->useRecycledViewForNewTarget(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceTarget;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;ILK2/A;)V
    .locals 4

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LK2/C;->e:LK2/O;

    iget-object v1, p3, LK2/A;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, LK2/O;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, LK2/C;->h:Landroid/util/SparseArray;

    invoke-static {v2}, LK2/z;->a(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v2

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p3, LK2/A;->d:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, LK2/O;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LK2/C;->g:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object p0, p0, LK2/C;->d:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p3, :cond_4

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    return-void
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, LK2/C;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final c(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/smartspace/SmartspaceTarget$Builder;

    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, LK2/C;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, LK2/C;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    const-string v2, "date_card_794317_92634"

    invoke-direct {v0, v2, v1, p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setFeatureType(I)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;

    invoke-direct {v1, p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;->build()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->setTemplateData(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Landroid/app/smartspace/SmartspaceTarget$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget$Builder;->build()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final d(I)Landroid/app/smartspace/SmartspaceTarget;
    .locals 1

    iget-object v0, p0, LK2/C;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, LK2/C;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LK2/C;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/smartspace/SmartspaceTarget;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final e(Ljava/util/List;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast p1, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result p1

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    :cond_1
    iget-object p0, p0, LK2/C;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final f(LK2/A;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LK2/C;->i:Ljava/util/List;

    iget v3, v1, LK2/A;->a:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v4

    invoke-static {v4}, LL2/b;->a(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    move-result v4

    new-instance v5, LL2/c;

    invoke-direct {v5}, LL2/c;-><init>()V

    invoke-static {v2}, LK2/K;->a(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v6

    iput v6, v5, LL2/c;->a:I

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v6

    iput v6, v5, LL2/c;->e:I

    iget-object v6, v0, LK2/C;->t:Ljava/lang/String;

    iget v7, v0, LK2/C;->w:F

    invoke-static {v6, v7}, LK2/e;->d(Ljava/lang/String;F)I

    move-result v6

    iput v6, v5, LL2/c;->b:I

    iput v3, v5, LL2/c;->c:I

    iget-object v3, v0, LK2/C;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v5, LL2/c;->d:I

    iget-object v3, v0, LK2/C;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const/4 v3, -0x1

    iput v3, v5, LL2/c;->g:I

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v6

    invoke-static {v6}, LL2/b;->d(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)LL2/h;

    move-result-object v6

    goto :goto_0

    :cond_0
    invoke-static {v2}, LL2/b;->c(Landroid/app/smartspace/SmartspaceTarget;)LL2/h;

    move-result-object v6

    :goto_0
    iput-object v6, v5, LL2/c;->h:LL2/h;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v6

    invoke-static {v6}, LL2/b;->b(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Ls1/a;

    move-result-object v6

    iput-object v6, v5, LL2/c;->i:Ls1/a;

    new-instance v14, LL2/d;

    invoke-direct {v14, v5}, LL2/d;-><init>(LL2/c;)V

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v6, 0x8

    const/4 v13, 0x1

    iget-object v12, v0, LK2/C;->x:LK2/a;

    const/4 v7, 0x0

    const-string v8, "SsCardPagerAdapter"

    if-eqz v4, :cond_18

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-static {v14, v3}, LL2/b;->g(LL2/d;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)V

    iget-object v1, v1, LK2/A;->d:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    if-nez v1, :cond_1

    const-string v0, "No ui-template card view can be binded"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, v0, LK2/C;->s:Ln1/f;

    if-nez v3, :cond_2

    move-object v3, v15

    goto :goto_1

    :cond_2
    new-instance v3, LK2/B;

    invoke-direct {v3, v0, v11}, LK2/B;-><init>(LK2/C;I)V

    :goto_1
    iget-object v4, v0, LK2/C;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v13, :cond_3

    move v4, v13

    goto :goto_2

    :cond_3
    move v4, v11

    :goto_2
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->j:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    iput-object v15, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    iput-object v15, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iput v11, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->g:I

    iput-object v15, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->h:LL2/d;

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->m:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v8, :cond_5

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->n:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v1, v8}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->p:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v1, v8}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->q:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v1, v8}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->v:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v1, v8}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->u:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v1, v8}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t:Landroid/widget/ImageView;

    if-eqz v8, :cond_6

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->n:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v8, v6}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->p:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v8, v6}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->q:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v8, v6}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    invoke-static {v8, v6}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->s:Landroid/widget/ImageView;

    invoke-static {v8, v6}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t:Landroid/widget/ImageView;

    invoke-static {v8, v6}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->u:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v8, v6}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->r:Landroid/view/ViewGroup;

    invoke-static {v8, v6}, LK2/t;->f(Landroid/view/View;I)V

    :goto_3
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v8

    iput v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->g:I

    iput-object v14, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->h:LL2/d;

    iput-boolean v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->y:Z

    iput-boolean v11, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->z:Z

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->k:Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_7
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    if-nez v4, :cond_8

    move v13, v6

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->r()LL2/d;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->h:LL2/d;

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->d:LK2/n;

    const-string v10, "SsBaseTemplateCard"

    if-eqz v4, :cond_9

    const-string v4, "Secondary card is not null"

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->d:LK2/n;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, LK2/n;->r(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->d:LK2/n;

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->h:LL2/d;

    invoke-virtual {v4, v2, v3, v7}, LK2/n;->t(Landroid/app/smartspace/SmartspaceTarget;Ln1/d;LL2/d;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->z:Z

    :cond_9
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    if-eqz v4, :cond_d

    iget v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->x:F

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_b

    iget-boolean v5, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->z:Z

    if-nez v5, :cond_a

    goto :goto_4

    :cond_a
    move v5, v11

    goto :goto_5

    :cond_b
    :goto_4
    move v5, v13

    :goto_5
    if-eqz v5, :cond_c

    move v11, v6

    :cond_c
    invoke-static {v4, v11}, LK2/t;->f(Landroid/view/View;I)V

    :cond_d
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->m:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-nez v5, :cond_e

    move-object/from16 v17, v10

    move-object/from16 v18, v12

    goto :goto_7

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/TapAction;->getId()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_f
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    new-instance v5, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;

    invoke-direct {v5, v4}, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, LK2/e;->e()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/smartspace/uitemplatedata/TapAction$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/TapAction$Builder;->build()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v4

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    const-string v11, "SsBaseTemplateCard"

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v7, v1

    move-object v9, v4

    move-object/from16 v17, v10

    move-object v10, v3

    move-object/from16 v18, v12

    move-object v12, v14

    move/from16 v13, v16

    invoke-static/range {v7 .. v13}, LK2/e;->i(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Ln1/d;Ljava/lang/String;LL2/d;I)V

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->m:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    const-string v11, "SsBaseTemplateCard"

    move-object v9, v4

    move-object v10, v3

    move-object v12, v14

    move v13, v5

    invoke-static/range {v7 .. v13}, LK2/e;->i(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Ln1/d;Ljava/lang/String;LL2/d;I)V

    :goto_7
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->n:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v5, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v5}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->w(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;LK2/B;)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->p:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v5, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v5}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->w(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;LK2/B;)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->q:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v5, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v5}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleSupplementalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->w(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;LK2/B;)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t:Landroid/widget/ImageView;

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->u:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-nez v4, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t:Landroid/widget/ImageView;

    invoke-static {v4, v6}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->u:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v4, v6}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->t:Landroid/widget/ImageView;

    invoke-static {v4, v15}, LK2/t;->b(Landroid/widget/ImageView;LK2/F;)V

    :cond_11
    :goto_8
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->v:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v5, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v5}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->w(Lcom/google/android/systemui/smartspace/DoubleShadowTextView;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;LK2/B;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->A()V

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_12

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->q:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-ne v4, v6, :cond_12

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->o:Landroid/view/ViewGroup;

    iget-object v5, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v5}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v7

    const-string v8, "SsBaseTemplateCard"

    iget-object v9, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->h:LL2/d;

    iget-object v5, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v5}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->s(Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;)I

    move-result v10

    move-object v5, v2

    move v13, v6

    move-object v6, v7

    move-object v7, v3

    invoke-static/range {v4 .. v10}, LK2/e;->i(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Ln1/d;Ljava/lang/String;LL2/d;I)V

    goto :goto_9

    :cond_12
    move v13, v6

    :goto_9
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v4

    if-ne v4, v12, :cond_13

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->q:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->p:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_13
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    if-eqz v4, :cond_14

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v4

    if-eqz v4, :cond_14

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->f:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getTapAction()Landroid/app/smartspace/uitemplatedata/TapAction;

    move-result-object v6

    const-string v8, "SsBaseTemplateCard"

    iget-object v9, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->h:LL2/d;

    const/4 v10, 0x0

    move-object v4, v1

    move-object v5, v2

    move-object v7, v3

    invoke-static/range {v4 .. v10}, LK2/e;->i(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/uitemplatedata/TapAction;Ln1/d;Ljava/lang/String;LL2/d;I)V

    :cond_14
    iget-object v2, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    if-nez v2, :cond_15

    const-string v2, "Secondary card pane is null"

    move-object/from16 v3, v17

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_15
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/d;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroidx/constraintlayout/widget/d;->P:I

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    iget-object v2, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->s:Landroid/widget/ImageView;

    if-nez v2, :cond_16

    goto :goto_b

    :cond_16
    invoke-static {v2, v13}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v2, v1, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->s:Landroid/widget/ImageView;

    invoke-static {v2, v15}, LK2/t;->b(Landroid/widget/ImageView;LK2/F;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->A()V

    :goto_b
    iget v2, v0, LK2/C;->q:I

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->v(I)V

    iget v0, v0, LK2/C;->w:F

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->u(F)V

    goto/16 :goto_25

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-object/from16 v18, v12

    move v12, v13

    move v13, v6

    invoke-static {v14, v2}, LL2/b;->f(LL2/d;Landroid/app/smartspace/SmartspaceTarget;)V

    iget-object v1, v1, LK2/A;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    if-nez v1, :cond_19

    const-string v0, "No legacy card view can be binded"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    iget-object v4, v0, LK2/C;->s:Ln1/f;

    if-nez v4, :cond_1a

    move-object v4, v15

    goto :goto_c

    :cond_1a
    new-instance v4, LK2/B;

    invoke-direct {v4, v0, v12}, LK2/B;-><init>(LK2/C;I)V

    :goto_c
    iget-object v6, v0, LK2/C;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v12, :cond_1b

    move v6, v12

    goto :goto_d

    :cond_1b
    move v6, v11

    :goto_d
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->h:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    goto :goto_e

    :cond_1c
    iput-object v8, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->h:Ljava/lang/String;

    iput-object v15, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->t:LL2/d;

    iput-object v15, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->w:Ln1/d;

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    invoke-static {v8, v13}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->f:LK2/F;

    invoke-virtual {v8, v15}, LK2/F;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->g:LK2/F;

    invoke-virtual {v8, v15}, LK2/F;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->z()V

    invoke-virtual {v1, v15, v15, v11}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v1, v15, v15, v11}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->y()V

    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->m:Landroid/widget/TextView;

    if-eqz v8, :cond_1d

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1d
    iget-object v8, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->n:Landroid/widget/TextView;

    if-eqz v8, :cond_1e

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1e
    iget-object v8, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    if-eqz v8, :cond_1f

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1f
    :goto_e
    iput-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    iput-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->w:Ln1/d;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getHeaderAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v10

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v9

    iput-object v14, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->t:LL2/d;

    iput-boolean v6, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->x:Z

    iput-boolean v11, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->y:Z

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->j:Landroid/view/ViewGroup;

    if-eqz v4, :cond_20

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_20
    if-eqz v10, :cond_2c

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->d:LK2/n;

    if-eqz v4, :cond_21

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, LK2/n;->r(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->d:LK2/n;

    iget-object v6, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->w:Ln1/d;

    invoke-virtual {v4, v2, v6, v14}, LK2/n;->t(Landroid/app/smartspace/SmartspaceTarget;Ln1/d;LL2/d;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->y:Z

    :cond_21
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    if-eqz v4, :cond_22

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_22
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    iget v6, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->v:F

    cmpl-float v5, v6, v5

    if-eqz v5, :cond_24

    iget-boolean v5, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->y:Z

    if-nez v5, :cond_23

    goto :goto_f

    :cond_23
    move v5, v11

    goto :goto_10

    :cond_24
    :goto_f
    move v5, v12

    :goto_10
    if-eqz v5, :cond_25

    move v6, v13

    goto :goto_11

    :cond_25
    move v6, v11

    :goto_11
    invoke-static {v4, v6}, LK2/t;->f(Landroid/view/View;I)V

    invoke-virtual {v10}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, LK2/e;->b(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_26

    move v5, v12

    goto :goto_12

    :cond_26
    move v5, v11

    :goto_12
    iget-object v6, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->f:LK2/F;

    invoke-virtual {v6, v4}, LK2/F;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v10}, Landroid/app/smartspace/SmartspaceAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v7

    if-eq v7, v12, :cond_28

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_27

    goto :goto_13

    :cond_27
    move v7, v11

    goto :goto_14

    :cond_28
    :goto_13
    move v7, v12

    :goto_14
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v12

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->z()V

    if-eqz v7, :cond_29

    goto :goto_15

    :cond_29
    move-object v4, v6

    :goto_15
    invoke-virtual {v10}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v13

    if-eq v7, v8, :cond_2a

    if-eqz v5, :cond_2a

    goto :goto_16

    :cond_2a
    move v12, v11

    :goto_16
    invoke-virtual {v1, v4, v13, v12}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    if-eqz v7, :cond_2b

    if-eqz v8, :cond_2b

    goto :goto_17

    :cond_2b
    move-object v6, v15

    :goto_17
    invoke-virtual {v10}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v6, v4, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_2c
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    const/4 v12, 0x4

    if-eqz v4, :cond_31

    if-eqz v9, :cond_2e

    invoke-virtual {v9}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-nez v4, :cond_2d

    goto :goto_18

    :cond_2d
    invoke-virtual {v9}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, LK2/e;->b(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_19

    :cond_2e
    :goto_18
    move-object v4, v15

    :goto_19
    iget-object v5, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->g:LK2/F;

    invoke-virtual {v5, v4}, LK2/F;->b(Landroid/graphics/drawable/Drawable;)V

    if-nez v4, :cond_2f

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v3, v12}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_2f
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual {v9}, Landroid/app/smartspace/SmartspaceAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v5, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->g:LK2/F;

    invoke-virtual {v4, v5, v15, v15, v15}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-static {v4, v11}, LK2/t;->f(Landroid/view/View;I)V

    invoke-static {v9}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->s(Landroid/app/smartspace/SmartspaceAction;)I

    move-result v4

    const-string v13, "BcSmartspaceCard"

    if-eq v4, v3, :cond_30

    invoke-static {v14, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->r(LL2/d;I)I

    move-result v3

    goto :goto_1a

    :cond_30
    invoke-virtual {v14}, LL2/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Landroid/app/smartspace/SmartspaceAction;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Subcard expected but missing type. loggingInfo=%s, baseAction=%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v11

    :goto_1a
    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->w:Ln1/d;

    const-string v8, "BcSmartspaceCard"

    move-object v5, v2

    move-object v6, v9

    move-object/from16 p1, v9

    move-object v9, v14

    move-object v11, v10

    move v10, v3

    invoke-static/range {v4 .. v10}, LK2/e;->h(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ln1/d;Ljava/lang/String;LL2/d;I)V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->o:Lcom/google/android/systemui/smartspace/DoubleShadowTextView;

    invoke-virtual/range {p1 .. p1}, Landroid/app/smartspace/SmartspaceAction;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/smartspace/SmartspaceAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v13, v3, v4, v5}, LN2/a;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_31
    :goto_1b
    move-object/from16 p1, v9

    move-object v11, v10

    :goto_1c
    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->y()V

    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->l:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v3, :cond_34

    if-eqz v11, :cond_32

    invoke-virtual {v11}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object/from16 v3, p1

    goto :goto_1d

    :cond_32
    move-object/from16 v3, p1

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    :cond_33
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1d
    new-instance v5, Landroid/app/smartspace/SmartspaceAction$Builder;

    const-string v6, "unusedTitle"

    invoke-direct {v5, v4, v6}, Landroid/app/smartspace/SmartspaceAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, LK2/e;->e()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/smartspace/SmartspaceAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/smartspace/SmartspaceAction$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceAction$Builder;->build()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v6

    iget-object v4, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->l:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    iget-object v7, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->w:Ln1/d;

    const-string v8, "BcSmartspaceCard"

    move-object v5, v2

    move-object v9, v14

    invoke-static/range {v4 .. v9}, LK2/e;->g(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ln1/d;Ljava/lang/String;LL2/d;)V

    goto :goto_1e

    :cond_34
    move-object/from16 v3, p1

    :goto_1e
    if-eqz v11, :cond_36

    invoke-virtual {v11}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_35

    invoke-virtual {v11}, Landroid/app/smartspace/SmartspaceAction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_36

    :cond_35
    const/4 v13, 0x1

    goto :goto_1f

    :cond_36
    const/4 v13, 0x0

    :goto_1f
    if-eqz v13, :cond_38

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_37

    iget v3, v14, LL2/d;->e:I

    const/16 v5, 0x27

    if-ne v3, v5, :cond_37

    invoke-static {v14, v4}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->r(LL2/d;I)I

    :cond_37
    invoke-virtual {v1, v2, v11, v14}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->u(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;LL2/d;)V

    goto :goto_21

    :cond_38
    const/4 v4, 0x1

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_39

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceAction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_3a

    :cond_39
    move/from16 v17, v4

    goto :goto_20

    :cond_3a
    const/16 v17, 0x0

    :goto_20
    if-eqz v17, :cond_3b

    invoke-virtual {v1, v2, v3, v14}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->u(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;LL2/d;)V

    goto :goto_21

    :cond_3b
    invoke-virtual {v1, v2, v11, v14}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->u(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;LL2/d;)V

    :goto_21
    iget-object v3, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    if-nez v3, :cond_3c

    goto :goto_23

    :cond_3c
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/d;

    invoke-static {v2}, LK2/z;->a(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_3d

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/2addr v2, v12

    iput v2, v3, Landroidx/constraintlayout/widget/d;->P:I

    goto :goto_22

    :cond_3d
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v3, Landroidx/constraintlayout/widget/d;->P:I

    :goto_22
    iget-object v2, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_23
    iget v2, v0, LK2/C;->q:I

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->v(I)V

    iget v0, v0, LK2/C;->w:F

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->t(F)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->q:Landroid/widget/ImageView;

    if-nez v0, :cond_3e

    goto :goto_24

    :cond_3e
    const/16 v2, 0x8

    invoke-static {v0, v2}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->q:Landroid/widget/ImageView;

    invoke-static {v0, v15}, LK2/t;->b(Landroid/widget/ImageView;LK2/F;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->z()V

    :goto_24
    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_40

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->s:Landroid/widget/TextView;

    if-nez v0, :cond_3f

    goto :goto_25

    :cond_3f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->r:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-static {v0, v2}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->s:Landroid/widget/TextView;

    invoke-static {v0, v2}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v0, v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->r:Landroid/widget/ImageView;

    invoke-static {v0, v15}, LK2/t;->b(Landroid/widget/ImageView;LK2/F;)V

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->z()V

    :cond_40
    :goto_25
    return-void
.end method

.method public final g()V
    .locals 6

    iget v0, p0, LK2/C;->p:I

    iget v1, p0, LK2/C;->o:I

    iget v2, p0, LK2/C;->w:F

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, LK2/C;->q:I

    iget-object v0, p0, LK2/C;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK2/A;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v3, LK2/A;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    if-eqz v4, :cond_1

    iget v5, p0, LK2/C;->q:I

    invoke-virtual {v4, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->v(I)V

    iget v5, p0, LK2/C;->w:F

    invoke-virtual {v4, v5}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->t(F)V

    :cond_1
    iget-object v3, v3, LK2/A;->d:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    if-eqz v3, :cond_2

    iget v4, p0, LK2/C;->q:I

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->v(I)V

    iget v4, p0, LK2/C;->w:F

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->u(F)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final h()V
    .locals 9

    iget-object v0, p0, LK2/C;->j:Ljava/util/List;

    invoke-virtual {p0, v0}, LK2/C;->e(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, LK2/C;->l:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, LK2/C;->m:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LK2/C;->k:Ljava/util/List;

    invoke-virtual {p0, v0}, LK2/C;->e(Ljava/util/List;)Z

    :goto_0
    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<android.app.smartspace.SmartspaceTarget>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, LK2/C;->k:Ljava/util/List;

    invoke-virtual {p0, v1}, LK2/C;->e(Ljava/util/List;)Z

    iget-object v2, p0, LK2/C;->i:Ljava/util/List;

    const v3, 0x3eb851ec    # 0.36f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v0, :cond_5

    iget v7, p0, LK2/C;->w:F

    cmpg-float v8, v7, v4

    if-nez v8, :cond_2

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    if-nez v8, :cond_4

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_3

    iget-object v7, p0, LK2/C;->u:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    sget-object v8, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->f:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    if-ne v7, v8, :cond_3

    goto :goto_2

    :cond_3
    move v7, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v5

    :goto_3
    if-eqz v7, :cond_5

    move v7, v5

    goto :goto_4

    :cond_5
    move v7, v6

    :goto_4
    if-eq v2, v1, :cond_9

    iget v2, p0, LK2/C;->w:F

    const/4 v8, 0x0

    cmpg-float v8, v2, v8

    if-nez v8, :cond_6

    move v8, v5

    goto :goto_5

    :cond_6
    move v8, v6

    :goto_5
    if-nez v8, :cond_8

    sub-float/2addr v4, v2

    cmpl-float v2, v4, v3

    if-ltz v2, :cond_7

    iget-object v2, p0, LK2/C;->u:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    sget-object v3, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->e:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    if-ne v2, v3, :cond_7

    goto :goto_6

    :cond_7
    move v2, v6

    goto :goto_7

    :cond_8
    :goto_6
    move v2, v5

    :goto_7
    if-eqz v2, :cond_9

    move v2, v5

    goto :goto_8

    :cond_9
    move v2, v6

    :goto_8
    if-nez v7, :cond_a

    if-eqz v2, :cond_d

    :cond_a
    if-eqz v7, :cond_b

    move-object v2, v0

    goto :goto_9

    :cond_b
    move-object v2, v1

    :goto_9
    iput-object v2, p0, LK2/C;->i:Ljava/util/List;

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lj0/a;->b:Landroid/database/DataSetObserver;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/database/DataSetObserver;->onChanged()V

    :cond_c
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lj0/a;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_d
    if-eq v0, v1, :cond_e

    goto :goto_a

    :cond_e
    move v5, v6

    :goto_a
    iput-boolean v5, p0, LK2/C;->n:Z

    iget-object v0, p0, LK2/C;->r:Ln1/b;

    invoke-interface {v0}, Ln1/b;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, LK2/C;->t:Ljava/lang/String;

    if-nez v0, :cond_f

    move v0, v6

    goto :goto_b

    :cond_f
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_b
    if-nez v0, :cond_11

    iget-object v0, p0, LK2/C;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v6, 0x8

    :cond_10
    iget-object p0, p0, LK2/C;->c:Landroid/view/View;

    invoke-static {p0, v6}, LK2/t;->f(Landroid/view/View;I)V

    :cond_11
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 2

    iget-object v0, p0, LK2/C;->l:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, LK2/C;->h()V

    return-void
.end method
