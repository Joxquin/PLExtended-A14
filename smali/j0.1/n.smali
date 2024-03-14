.class public Lj0/n;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final Q:[I

.field public static final R:Lj0/b;

.field public static final S:Lj0/c;


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:F

.field public E:I

.field public F:Landroid/view/VelocityTracker;

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:Z

.field public L:Z

.field public M:I

.field public N:Ljava/util/List;

.field public final O:Lj0/d;

.field public P:I

.field public d:I

.field public final e:Ljava/util/ArrayList;

.field public final f:Lj0/g;

.field public final g:Landroid/graphics/Rect;

.field public h:Lj0/a;

.field public i:I

.field public j:I

.field public k:Landroid/os/Parcelable;

.field public l:Landroid/widget/Scroller;

.field public m:Z

.field public mLeftEdge:Landroid/widget/EdgeEffect;

.field public mRightEdge:Landroid/widget/EdgeEffect;

.field public n:Lj0/k;

.field public o:F

.field public p:F

.field public q:Z

.field public r:Z

.field public s:Z

.field public final t:I

.field public u:Z

.field public v:Z

.field public w:I

.field public x:I

.field public y:I

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lj0/n;->Q:[I

    new-instance v0, Lj0/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj0/b;-><init>(I)V

    sput-object v0, Lj0/n;->R:Lj0/b;

    new-instance v0, Lj0/c;

    invoke-direct {v0}, Lj0/c;-><init>()V

    sput-object v0, Lj0/n;->S:Lj0/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj0/n;->e:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lj0/g;

    invoke-direct {v0}, Lj0/g;-><init>()V

    iput-object v0, p0, Lj0/n;->f:Lj0/g;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lj0/n;->g:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lj0/n;->j:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lj0/n;->k:Landroid/os/Parcelable;

    const v1, -0x800001

    .line 7
    iput v1, p0, Lj0/n;->o:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    iput v1, p0, Lj0/n;->p:F

    const/4 v1, 0x1

    .line 9
    iput v1, p0, Lj0/n;->t:I

    .line 10
    iput-boolean v1, p0, Lj0/n;->z:Z

    .line 11
    iput v0, p0, Lj0/n;->E:I

    .line 12
    iput-boolean v1, p0, Lj0/n;->K:Z

    .line 13
    new-instance v0, Lj0/d;

    invoke-direct {v0, p0}, Lj0/d;-><init>(Lj0/n;)V

    iput-object v0, p0, Lj0/n;->O:Lj0/d;

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lj0/n;->P:I

    .line 15
    invoke-virtual {p0, p1}, Lj0/n;->l(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lj0/n;->e:Ljava/util/ArrayList;

    .line 18
    new-instance p2, Lj0/g;

    invoke-direct {p2}, Lj0/g;-><init>()V

    iput-object p2, p0, Lj0/n;->f:Lj0/g;

    .line 19
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lj0/n;->g:Landroid/graphics/Rect;

    const/4 p2, -0x1

    .line 20
    iput p2, p0, Lj0/n;->j:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lj0/n;->k:Landroid/os/Parcelable;

    const v0, -0x800001

    .line 22
    iput v0, p0, Lj0/n;->o:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 23
    iput v0, p0, Lj0/n;->p:F

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lj0/n;->t:I

    .line 25
    iput-boolean v0, p0, Lj0/n;->z:Z

    .line 26
    iput p2, p0, Lj0/n;->E:I

    .line 27
    iput-boolean v0, p0, Lj0/n;->K:Z

    .line 28
    new-instance p2, Lj0/d;

    invoke-direct {p2, p0}, Lj0/d;-><init>(Lj0/n;)V

    iput-object p2, p0, Lj0/n;->O:Lj0/d;

    const/4 p2, 0x0

    .line 29
    iput p2, p0, Lj0/n;->P:I

    .line 30
    invoke-virtual {p0, p1}, Lj0/n;->l(Landroid/content/Context;)V

    return-void
.end method

.method public static c(IIILandroid/view/View;Z)Z
    .locals 9

    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v6, p1, v2

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lt v6, v7, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v6, v7, :cond_0

    add-int v7, p2, v3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {p0, v6, v7, v5, v1}, Lj0/n;->c(IIILandroid/view/View;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    neg-int p0, p0

    invoke-virtual {p3, p0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public final a(II)Lj0/g;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Lj0/g;

    invoke-direct {v3}, Lj0/g;-><init>()V

    iput v1, v3, Lj0/g;->b:I

    iget-object v4, v0, Lj0/n;->h:Lj0/a;

    check-cast v4, LK2/C;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, LK2/C;->i:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v6

    invoke-static {v6}, LL2/b;->a(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    move-result v6

    sget-object v7, LK2/C;->y:LK2/z;

    const-string v13, "Must call before attaching view to window."

    iget-object v15, v4, LK2/C;->f:LK2/O;

    const-string v14, "null cannot be cast to non-null type com.google.android.systemui.smartspace.BcSmartspaceCardSecondary"

    const-string v8, "lockscreen"

    iget-object v10, v4, LK2/C;->e:LK2/O;

    const-string v11, "SsCardPagerAdapter"

    if-eqz v6, :cond_a

    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v9, "Use UI template for the feature: "

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, LK2/O;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v4, LK2/C;->g:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {v15}, LK2/O;->a()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v6, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v7, v5, v9}, LK2/z;->useRecycledViewForNewTarget(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceTarget;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v5}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    move-result-object v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getText()Landroid/app/smartspace/uitemplatedata/Text;

    move-result-object v9

    invoke-static {v9}, Landroid/app/smartspace/SmartspaceUtils;->isEmpty(Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->getIcon()Landroid/app/smartspace/uitemplatedata/Icon;

    move-result-object v7

    if-eqz v7, :cond_4

    :cond_3
    const v7, 0x7f0d0105

    goto :goto_2

    :cond_4
    const v7, 0x7f0d0106

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const-string v10, "null cannot be cast to non-null type com.google.android.systemui.smartspace.uitemplate.BaseTemplateCard"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    iget-object v10, v4, LK2/C;->t:Ljava/lang/String;

    iput-object v10, v7, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->w:Ljava/lang/String;

    iget-object v12, v7, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->m:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v12, :cond_6

    invoke-static {v10, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v7, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->m:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/google/android/systemui/smartspace/IcuDateTextView;->k:Z

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->getTemplateType()I

    move-result v6

    invoke-static {v6}, LK2/t;->a(I)I

    move-result v6

    if-eqz v6, :cond_8

    const/4 v8, 0x0

    invoke-virtual {v9, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, LK2/n;

    const-string v8, "Secondary card is found"

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v7, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    iput-object v6, v7, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->d:LK2/n;

    const/16 v9, 0x8

    invoke-static {v8, v9}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v8, v7, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v8, Landroidx/constraintlayout/widget/d;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070161

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v10, -0x2

    invoke-direct {v8, v10, v9}, Landroidx/constraintlayout/widget/d;-><init>(II)V

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07016c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/4 v9, 0x0

    iput v9, v8, Landroidx/constraintlayout/widget/d;->t:I

    iput v9, v8, Landroidx/constraintlayout/widget/d;->i:I

    iput v9, v8, Landroidx/constraintlayout/widget/d;->l:I

    iget-object v9, v7, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->l:Landroid/view/ViewGroup;

    invoke-virtual {v9, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_4
    move-object v6, v7

    :cond_9
    :goto_5
    new-instance v7, LK2/A;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8, v5, v6}, LK2/A;-><init>(ILcom/google/android/systemui/smartspace/BcSmartspaceCard;Landroid/app/smartspace/SmartspaceTarget;Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_b

    :cond_a
    invoke-virtual {v10}, LK2/O;->a()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v4, LK2/C;->h:Landroid/util/SparseArray;

    invoke-static {v5}, LK2/z;->a(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_c

    invoke-virtual {v15}, LK2/O;->a()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v7, v5, v9}, LK2/z;->useRecycledViewForNewTarget(Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceTarget;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto/16 :goto_a

    :cond_c
    invoke-static {v5}, LK2/z;->a(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-virtual {v7, v6}, LK2/z;->getBaseLegacyCardRes(I)I

    move-result v10

    if-nez v10, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "No legacy card can be created for feature type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto/16 :goto_9

    :cond_d
    const/4 v11, 0x0

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type com.google.android.systemui.smartspace.BcSmartspaceCard"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    iget-object v11, v4, LK2/C;->t:Ljava/lang/String;

    iput-object v11, v10, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->u:Ljava/lang/String;

    iget-object v12, v10, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->l:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    if-eqz v12, :cond_f

    invoke-static {v11, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v10, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->l:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v11

    if-nez v11, :cond_e

    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/google/android/systemui/smartspace/IcuDateTextView;->k:Z

    goto :goto_7

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_7
    invoke-virtual {v7, v6}, LK2/z;->getLegacySecondaryCardRes(I)I

    move-result v6

    if-eqz v6, :cond_11

    const/4 v7, 0x0

    invoke-virtual {v9, v6, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, LK2/n;

    iget-object v7, v10, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    if-nez v7, :cond_10

    goto :goto_8

    :cond_10
    iput-object v6, v10, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->d:LK2/n;

    const/16 v8, 0x8

    invoke-static {v7, v8}, LK2/t;->f(Landroid/view/View;I)V

    iget-object v7, v10, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v7, Landroidx/constraintlayout/widget/d;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070161

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v7, v9, v8}, Landroidx/constraintlayout/widget/d;-><init>(II)V

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07016c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/4 v8, 0x0

    iput v8, v7, Landroidx/constraintlayout/widget/d;->t:I

    iput v8, v7, Landroidx/constraintlayout/widget/d;->i:I

    iput v8, v7, Landroidx/constraintlayout/widget/d;->l:I

    iget-object v8, v10, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->k:Landroid/view/ViewGroup;

    invoke-virtual {v8, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_11
    :goto_8
    move-object v8, v10

    :goto_9
    move-object v6, v8

    :cond_12
    :goto_a
    new-instance v7, LK2/A;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v6, v5, v8}, LK2/A;-><init>(ILcom/google/android/systemui/smartspace/BcSmartspaceCard;Landroid/app/smartspace/SmartspaceTarget;Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;)V

    if-eqz v6, :cond_13

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_13
    :goto_b
    invoke-virtual {v4, v7}, LK2/C;->f(LK2/A;)V

    iget-object v4, v4, LK2/C;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v7, v3, Lj0/g;->a:LK2/A;

    iget-object v1, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v3, Lj0/g;->d:F

    if-ltz v2, :cond_15

    iget-object v1, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_14

    goto :goto_c

    :cond_14
    iget-object v0, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_d

    :cond_15
    :goto_c
    iget-object v0, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    return-object v3
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Lj0/n;->i(Landroid/view/View;)Lj0/g;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, v4, Lj0/g;->b:I

    iget v5, p0, Lj0/n;->i:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lj0/n;->i(Landroid/view/View;)Lj0/g;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lj0/g;->b:I

    iget v3, p0, Lj0/n;->i:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-virtual {p0, p3}, Lj0/n;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lj0/n;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Lj0/h;

    iget-boolean v1, v0, Lj0/h;->a:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lj0/f;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    or-int/2addr v1, v2

    iput-boolean v1, v0, Lj0/h;->a:Z

    iget-boolean v2, p0, Lj0/n;->q:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    iput-boolean v3, v0, Lj0/h;->d:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add pager decor view during layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public final b(I)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    if-ne v3, p0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_1
    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ViewPager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v0, 0x0

    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_8

    if-eq v3, v0, :cond_8

    if-ne p1, v5, :cond_6

    iget-object v4, p0, Lj0/n;->g:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lj0/n;->g(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lj0/n;->g:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lj0/n;->g(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v4, v5, :cond_5

    iget v0, p0, Lj0/n;->i:I

    if-lez v0, :cond_c

    sub-int/2addr v0, v1

    iput-boolean v2, p0, Lj0/n;->s:Z

    invoke-virtual {p0, v0, v2, v1, v2}, Lj0/n;->v(IIZZ)V

    goto :goto_6

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_4
    move v2, v0

    goto :goto_7

    :cond_6
    if-ne p1, v4, :cond_d

    iget-object v1, p0, Lj0/n;->g:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v1}, Lj0/n;->g(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lj0/n;->g:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lj0/n;->g(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-gt v1, v2, :cond_7

    invoke-virtual {p0}, Lj0/n;->o()Z

    move-result v0

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_4

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_5

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    :cond_a
    invoke-virtual {p0}, Lj0/n;->o()Z

    move-result v2

    goto :goto_7

    :cond_b
    :goto_5
    iget v0, p0, Lj0/n;->i:I

    if-lez v0, :cond_c

    sub-int/2addr v0, v1

    iput-boolean v2, p0, Lj0/n;->s:Z

    invoke-virtual {p0, v0, v2, v1, v2}, Lj0/n;->v(IIZZ)V

    goto :goto_6

    :cond_c
    move v1, v2

    :goto_6
    move v2, v1

    :cond_d
    :goto_7
    if-eqz v2, :cond_e

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_e
    return v2
.end method

.method public final canScrollHorizontally(I)Z
    .locals 4

    iget-object v0, p0, Lj0/n;->h:Lj0/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lj0/n;->h()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    iget p0, p0, Lj0/n;->o:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-le v2, p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    iget p0, p0, Lj0/n;->p:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-ge v2, p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lj0/h;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final computeScroll()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj0/n;->m:Z

    iget-object v1, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-virtual {p0, v2}, Lj0/n;->p(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_1
    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/x;->i(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lj0/n;->d(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 7

    iget v0, p0, Lj0/n;->P:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lj0/n;->x(Z)V

    iget-object v1, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_1

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    if-eq v5, v1, :cond_2

    invoke-virtual {p0, v5}, Lj0/n;->p(I)Z

    :cond_2
    iput-boolean v3, p0, Lj0/n;->s:Z

    move v1, v3

    :goto_1
    iget-object v4, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj0/g;

    iget-boolean v5, v4, Lj0/g;->c:Z

    if-eqz v5, :cond_3

    iput-boolean v3, v4, Lj0/g;->c:Z

    move v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p0, Lj0/n;->O:Lj0/d;

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, p1}, Landroidx/core/view/x;->j(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lj0/n;->O:Lj0/d;

    invoke-virtual {p0}, Lj0/d;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    const/4 v4, 0x2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x16

    if-eq v0, v3, :cond_2

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lj0/n;->b(I)Z

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v1}, Lj0/n;->b(I)Z

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lj0/n;->o()Z

    move-result p0

    goto :goto_1

    :cond_3
    const/16 p1, 0x42

    invoke-virtual {p0, p1}, Lj0/n;->b(I)Z

    move-result p0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lj0/n;->i:I

    if-lez p1, :cond_6

    sub-int/2addr p1, v1

    iput-boolean v2, p0, Lj0/n;->s:Z

    invoke-virtual {p0, p1, v2, v1, v2}, Lj0/n;->v(IIZZ)V

    move p0, v1

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lj0/n;->b(I)Z

    move-result p0

    goto :goto_1

    :cond_6
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :cond_8
    :goto_2
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lj0/n;->i(Landroid/view/View;)Lj0/g;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Lj0/g;->b:I

    iget v5, p0, Lj0/n;->i:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lj0/n;->h:Lj0/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj0/a;->b()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object p1, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    iget v5, p0, Lj0/n;->o:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v0, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lj0/n;->p:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    sget-object p1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/x;->i(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    return-void
.end method

.method public final e()V
    .locals 15

    iget-object v0, p0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v0}, Lj0/a;->b()I

    move-result v0

    iput v0, p0, Lj0/n;->d:I

    iget-object v1, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lj0/n;->t:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget v2, p0, Lj0/n;->i:I

    move v5, v4

    move v6, v5

    :goto_1
    iget-object v7, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_9

    iget-object v7, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj0/g;

    iget-object v8, p0, Lj0/n;->h:Lj0/a;

    iget-object v9, v7, Lj0/g;->a:LK2/A;

    check-cast v8, LK2/C;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "item"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v10, v9, LK2/A;->a:I

    invoke-virtual {v8, v10}, LK2/C;->d(I)Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v10

    iget-object v11, v9, LK2/A;->c:Landroid/app/smartspace/SmartspaceTarget;

    const/4 v12, -0x1

    const/4 v13, -0x2

    if-ne v11, v10, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v10, :cond_2

    invoke-static {v10}, LK2/z;->a(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v11

    iget-object v14, v9, LK2/A;->c:Landroid/app/smartspace/SmartspaceTarget;

    invoke-static {v14}, LK2/z;->a(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v14

    if-ne v11, v14, :cond_2

    invoke-virtual {v10}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v11

    iget-object v14, v9, LK2/A;->c:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v14}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iput-object v10, v9, LK2/A;->c:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v8, v9}, LK2/C;->f(LK2/A;)V

    :goto_2
    move v8, v12

    goto :goto_3

    :cond_2
    move v8, v13

    :goto_3
    if-ne v8, v12, :cond_3

    goto :goto_5

    :cond_3
    if-ne v8, v13, :cond_5

    iget-object v1, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_4

    iget-object v1, p0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v6, v3

    :cond_4
    iget-object v1, p0, Lj0/n;->h:Lj0/a;

    iget v8, v7, Lj0/g;->b:I

    iget-object v9, v7, Lj0/g;->a:LK2/A;

    invoke-virtual {v1, p0, v8, v9}, Lj0/a;->a(Landroid/view/ViewGroup;ILK2/A;)V

    iget v1, p0, Lj0/n;->i:I

    iget v7, v7, Lj0/g;->b:I

    if-ne v1, v7, :cond_7

    add-int/2addr v12, v0

    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_4

    :cond_5
    iget v9, v7, Lj0/g;->b:I

    if-eq v9, v8, :cond_8

    iget v1, p0, Lj0/n;->i:I

    if-ne v9, v1, :cond_6

    move v2, v8

    :cond_6
    iput v8, v7, Lj0/g;->b:I

    :cond_7
    :goto_4
    move v1, v3

    :cond_8
    :goto_5
    add-int/2addr v5, v3

    goto/16 :goto_1

    :cond_9
    if-eqz v6, :cond_a

    iget-object v0, p0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_a
    iget-object v0, p0, Lj0/n;->e:Ljava/util/ArrayList;

    sget-object v5, Lj0/n;->R:Lj0/b;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_6
    if-ge v1, v0, :cond_c

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lj0/h;

    iget-boolean v6, v5, Lj0/h;->a:Z

    if-nez v6, :cond_b

    const/4 v6, 0x0

    iput v6, v5, Lj0/h;->c:F

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {p0, v2, v4, v4, v3}, Lj0/n;->v(IIZZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_d
    return-void
.end method

.method public final f(I)V
    .locals 3

    iget-object v0, p0, Lj0/n;->N:Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lj0/n;->N:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/j;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lj0/j;->b(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p1, p0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Lj0/h;

    invoke-direct {p0}, Lj0/h;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lj0/h;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lj0/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj0/n;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final h()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final i(Landroid/view/View;)Lj0/g;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/g;

    iget-object v3, p0, Lj0/n;->h:Lj0/a;

    iget-object v4, v2, Lj0/g;->a:LK2/A;

    check-cast v3, LK2/C;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "view"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "item"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v4, LK2/A;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    if-eq p1, v3, :cond_1

    iget-object v3, v4, LK2/A;->d:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()Lj0/g;
    .locals 13

    invoke-virtual {p0}, Lj0/n;->h()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-lez v0, :cond_1

    int-to-float v4, v3

    int-to-float v0, v0

    div-float/2addr v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const/4 v0, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v8, v3

    move v9, v5

    move-object v7, v6

    move v6, v1

    :goto_2
    iget-object v10, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    iget-object v10, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lj0/g;

    if-nez v9, :cond_2

    iget v11, v10, Lj0/g;->b:I

    add-int/2addr v0, v5

    if-eq v11, v0, :cond_2

    iget-object v10, p0, Lj0/n;->f:Lj0/g;

    add-float/2addr v1, v6

    add-float/2addr v1, v4

    iput v1, v10, Lj0/g;->e:F

    iput v0, v10, Lj0/g;->b:I

    iget-object v0, p0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v10, Lj0/g;->d:F

    add-int/lit8 v8, v8, -0x1

    :cond_2
    move-object v6, v10

    iget v1, v6, Lj0/g;->e:F

    iget v0, v6, Lj0/g;->d:F

    add-float/2addr v0, v1

    add-float/2addr v0, v4

    if-nez v9, :cond_4

    cmpl-float v9, v2, v1

    if-ltz v9, :cond_3

    goto :goto_3

    :cond_3
    return-object v7

    :cond_4
    :goto_3
    cmpg-float v0, v2, v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    if-ne v8, v0, :cond_5

    goto :goto_4

    :cond_5
    iget v0, v6, Lj0/g;->b:I

    iget v7, v6, Lj0/g;->d:F

    add-int/lit8 v8, v8, 0x1

    move v9, v3

    move v12, v7

    move-object v7, v6

    move v6, v12

    goto :goto_2

    :cond_6
    :goto_4
    return-object v6

    :cond_7
    return-object v7
.end method

.method public final k(I)Lj0/g;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj0/g;

    iget v2, v1, Lj0/g;->b:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final l(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lj0/n;->S:Lj0/c;

    invoke-direct {v1, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lj0/n;->y:I

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lj0/n;->G:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lj0/n;->H:I

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    const/high16 p1, 0x41c80000    # 25.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lj0/n;->I:I

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lj0/n;->J:I

    const/high16 p1, 0x41800000    # 16.0f

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, p0, Lj0/n;->w:I

    new-instance p1, Lj0/i;

    invoke-direct {p1, p0}, Lj0/i;-><init>(Lj0/n;)V

    invoke-static {p0, p1}, Landroidx/core/view/J;->h(Landroid/view/View;Landroidx/core/view/b;)V

    invoke-static {p0}, Landroidx/core/view/x;->b(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0, v0}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    :cond_0
    new-instance p1, Lj0/e;

    invoke-direct {p1, p0}, Lj0/e;-><init>(Lj0/n;)V

    invoke-static {p0, p1}, Landroidx/core/view/D;->l(Landroid/view/View;Landroidx/core/view/r;)V

    return-void
.end method

.method public final m(IIF)V
    .locals 11

    iget p2, p0, Lj0/n;->M:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_5

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lj0/h;

    iget-boolean v9, v8, Lj0/h;->a:Z

    if-nez v9, :cond_0

    goto :goto_3

    :cond_0
    iget v8, v8, Lj0/h;->b:I

    and-int/lit8 v8, v8, 0x7

    if-eq v8, v1, :cond_3

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    sub-int v8, v4, v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_1
    move v10, v8

    move v8, v2

    move v2, v10

    :goto_2
    add-int/2addr v2, p2

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v2, v9

    if-eqz v2, :cond_4

    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v2, v8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lj0/n;->N:Ljava/util/List;

    if-eqz p2, :cond_7

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_4
    if-ge v0, p2, :cond_7

    iget-object v2, p0, Lj0/n;->N:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/j;

    if-eqz v2, :cond_6

    invoke-interface {v2, p1, p3}, Lj0/j;->c(IF)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iput-boolean v1, p0, Lj0/n;->L:Z

    return-void
.end method

.method public final n(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lj0/n;->E:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lj0/n;->A:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lj0/n;->E:I

    iget-object p0, p0, Lj0/n;->F:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public final o()Z
    .locals 4

    iget-object v0, p0, Lj0/n;->h:Lj0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lj0/n;->i:I

    invoke-virtual {v0}, Lj0/a;->b()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ge v2, v0, :cond_0

    iget v0, p0, Lj0/n;->i:I

    add-int/2addr v0, v3

    iput-boolean v1, p0, Lj0/n;->s:Z

    invoke-virtual {p0, v0, v1, v3, v1}, Lj0/n;->v(IIZZ)V

    return v3

    :cond_0
    return v1
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj0/n;->K:Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lj0/n;->O:Lj0/d;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lj0/n;->l:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lj0/n;->u:Z

    if-eqz v3, :cond_1

    return v1

    :cond_1
    iget-boolean v3, p0, Lj0/n;->v:Z

    if-eqz v3, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    if-eq v0, v3, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0, p1}, Lj0/n;->n(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    :cond_4
    iget v0, p0, Lj0/n;->E:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v5, p0, Lj0/n;->A:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v7, p0, Lj0/n;->D:F

    sub-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v8, v5, v4

    if-eqz v8, :cond_a

    iget v9, p0, Lj0/n;->A:F

    iget-boolean v10, p0, Lj0/n;->z:Z

    if-eqz v10, :cond_6

    goto :goto_0

    :cond_6
    iget v10, p0, Lj0/n;->x:I

    int-to-float v10, v10

    cmpg-float v10, v9, v10

    if-gez v10, :cond_7

    if-gtz v8, :cond_8

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    iget v11, p0, Lj0/n;->x:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    cmpg-float v4, v5, v4

    if-gez v4, :cond_9

    :cond_8
    move v4, v1

    goto :goto_1

    :cond_9
    :goto_0
    move v4, v2

    :goto_1
    if-nez v4, :cond_a

    float-to-int v4, v5

    float-to-int v5, v3

    float-to-int v9, v0

    invoke-static {v4, v5, v9, p0, v2}, Lj0/n;->c(IIILandroid/view/View;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    iput v3, p0, Lj0/n;->A:F

    iput v0, p0, Lj0/n;->B:F

    iput-boolean v1, p0, Lj0/n;->v:Z

    return v2

    :cond_a
    iget v2, p0, Lj0/n;->y:I

    int-to-float v2, v2

    cmpl-float v4, v6, v2

    if-lez v4, :cond_d

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v6, v4

    cmpl-float v4, v6, v7

    if-lez v4, :cond_d

    iput-boolean v1, p0, Lj0/n;->u:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_b
    invoke-virtual {p0, v1}, Lj0/n;->w(I)V

    if-lez v8, :cond_c

    iget v2, p0, Lj0/n;->C:F

    iget v4, p0, Lj0/n;->y:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    goto :goto_2

    :cond_c
    iget v2, p0, Lj0/n;->C:F

    iget v4, p0, Lj0/n;->y:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    :goto_2
    iput v2, p0, Lj0/n;->A:F

    iput v0, p0, Lj0/n;->B:F

    invoke-virtual {p0, v1}, Lj0/n;->x(Z)V

    goto :goto_3

    :cond_d
    cmpl-float v2, v7, v2

    if-lez v2, :cond_e

    iput-boolean v1, p0, Lj0/n;->v:Z

    :cond_e
    :goto_3
    iget-boolean v1, p0, Lj0/n;->u:Z

    if-eqz v1, :cond_15

    invoke-virtual {p0, v3, v0}, Lj0/n;->q(FF)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/x;->i(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lj0/n;->C:F

    iput v0, p0, Lj0/n;->A:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lj0/n;->D:F

    iput v0, p0, Lj0/n;->B:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lj0/n;->E:I

    iput-boolean v2, p0, Lj0/n;->v:Z

    iput-boolean v1, p0, Lj0/n;->m:Z

    iget-object v0, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, p0, Lj0/n;->P:I

    if-ne v0, v3, :cond_11

    iget-object v0, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v3, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lj0/n;->J:I

    if-le v0, v3, :cond_11

    iget-object v0, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Lj0/n;->s:Z

    invoke-virtual {p0}, Lj0/n;->r()V

    iput-boolean v1, p0, Lj0/n;->u:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_10
    invoke-virtual {p0, v1}, Lj0/n;->w(I)V

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v0}, LN/c;->b(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_13

    iget-object v0, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v0}, LN/c;->b(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_12

    goto :goto_4

    :cond_12
    invoke-virtual {p0, v2}, Lj0/n;->d(Z)V

    iput-boolean v2, p0, Lj0/n;->u:Z

    goto :goto_5

    :cond_13
    :goto_4
    iput-boolean v1, p0, Lj0/n;->u:Z

    invoke-virtual {p0, v1}, Lj0/n;->w(I)V

    iget-object v0, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v0}, LN/c;->b(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_14

    iget-object v0, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    iget v1, p0, Lj0/n;->B:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-static {v0, v4, v2}, LN/c;->c(Landroid/widget/EdgeEffect;FF)F

    :cond_14
    iget-object v0, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v0}, LN/c;->b(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_15

    iget-object v0, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    iget v1, p0, Lj0/n;->B:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v4, v1}, LN/c;->c(Landroid/widget/EdgeEffect;FF)F

    :cond_15
    :goto_5
    iget-object v0, p0, Lj0/n;->F:Landroid/view/VelocityTracker;

    if-nez v0, :cond_16

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lj0/n;->F:Landroid/view/VelocityTracker;

    :cond_16
    iget-object v0, p0, Lj0/n;->F:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean p0, p0, Lj0/n;->u:Z

    return p0

    :cond_17
    :goto_6
    invoke-virtual {p0}, Lj0/n;->t()Z

    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lj0/h;

    iget-boolean v14, v12, Lj0/h;->a:Z

    if-eqz v14, :cond_6

    iget v12, v12, Lj0/h;->b:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_3

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_4
    add-int/2addr v4, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v16, v5

    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_a

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lj0/h;

    iget-boolean v10, v9, Lj0/h;->a:Z

    if-nez v10, :cond_9

    invoke-virtual {v0, v8}, Lj0/n;->i(Landroid/view/View;)Lj0/g;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v2

    iget v10, v10, Lj0/g;->e:F

    mul-float/2addr v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v4

    iget-boolean v14, v9, Lj0/h;->d:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    iput-boolean v14, v9, Lj0/h;->d:Z

    iget v9, v9, Lj0/h;->c:F

    mul-float/2addr v13, v9

    float-to-int v9, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    iput v11, v0, Lj0/n;->M:I

    iget-boolean v1, v0, Lj0/n;->K:Z

    if-eqz v1, :cond_b

    iget v1, v0, Lj0/n;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lj0/n;->u(IIZZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v0, Lj0/n;->K:Z

    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0xa

    iget v1, p0, Lj0/n;->w:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lj0/n;->x:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lj0/h;

    if-eqz v3, :cond_b

    iget-boolean v7, v3, Lj0/h;->a:Z

    if-eqz v7, :cond_b

    iget v7, v3, Lj0/h;->b:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v4

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    move v4, v0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    move v9, v8

    move v8, v5

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    move v9, v5

    goto :goto_4

    :cond_5
    move v9, v8

    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_5

    :cond_6
    move v10, p1

    :goto_5
    move v8, v5

    goto :goto_6

    :cond_7
    move v10, p1

    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_7

    :cond_8
    move v3, p2

    goto :goto_7

    :cond_9
    move v3, p2

    move v5, v9

    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput-boolean v4, p0, Lj0/n;->q:Z

    invoke-virtual {p0}, Lj0/n;->r()V

    iput-boolean v0, p0, Lj0/n;->q:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_9
    if-ge v0, v1, :cond_f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lj0/h;

    if-eqz v4, :cond_d

    iget-boolean v6, v4, Lj0/h;->a:Z

    if-nez v6, :cond_e

    :cond_d
    int-to-float v6, p1

    iget v4, v4, Lj0/h;->c:F

    mul-float/2addr v6, v4

    float-to-int v4, v6

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v4, p2}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v0

    move v0, v2

    move v4, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    move v4, v1

    :goto_0
    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Lj0/n;->i(Landroid/view/View;)Lj0/g;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v6, Lj0/g;->b:I

    iget v7, p0, Lj0/n;->i:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lj0/m;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lj0/m;

    iget-object v0, p1, LP/c;->d:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lj0/n;->h:Lj0/a;

    if-eqz v0, :cond_1

    iget p1, p1, Lj0/m;->f:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Lj0/n;->v(IIZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lj0/m;->f:I

    iput v0, p0, Lj0/n;->j:I

    iget-object p1, p1, Lj0/m;->g:Landroid/os/Parcelable;

    iput-object p1, p0, Lj0/n;->k:Landroid/os/Parcelable;

    :goto_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lj0/m;

    invoke-direct {v1, v0}, Lj0/m;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lj0/n;->i:I

    iput v0, v1, Lj0/m;->f:I

    iget-object p0, p0, Lj0/n;->h:Lj0/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    iput-object p0, v1, Lj0/m;->g:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_3

    const/4 p2, 0x0

    if-lez p3, :cond_1

    iget-object p4, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {p4}, Landroid/widget/Scroller;->isFinished()Z

    move-result p4

    if-nez p4, :cond_0

    iget-object p1, p0, Lj0/n;->l:Landroid/widget/Scroller;

    iget p2, p0, Lj0/n;->i:I

    invoke-virtual {p0}, Lj0/n;->h()I

    move-result p0

    mul-int/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    add-int/2addr p3, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1

    :cond_1
    iget p3, p0, Lj0/n;->i:I

    invoke-virtual {p0, p3}, Lj0/n;->k(I)Lj0/g;

    move-result-object p3

    if-eqz p3, :cond_2

    iget p3, p3, Lj0/g;->e:F

    iget p4, p0, Lj0/n;->p:F

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    if-eq p1, p3, :cond_3

    invoke-virtual {p0, p2}, Lj0/n;->d(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lj0/n;->h:Lj0/a;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lj0/a;->b()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lj0/n;->F:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lj0/n;->F:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Lj0/n;->F:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_b

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0, p1}, Lj0/n;->n(Landroid/view/MotionEvent;)V

    iget v0, p0, Lj0/n;->E:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lj0/n;->A:F

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lj0/n;->A:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lj0/n;->E:I

    goto/16 :goto_3

    :cond_5
    iget-boolean p1, p0, Lj0/n;->u:Z

    if-eqz p1, :cond_12

    iget p1, p0, Lj0/n;->i:I

    invoke-virtual {p0, p1, v1, v2, v1}, Lj0/n;->u(IIZZ)V

    invoke-virtual {p0}, Lj0/n;->t()Z

    move-result v1

    goto/16 :goto_3

    :cond_6
    iget-boolean v0, p0, Lj0/n;->u:Z

    if-nez v0, :cond_a

    iget v0, p0, Lj0/n;->E:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, Lj0/n;->t()Z

    move-result v1

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v5, p0, Lj0/n;->A:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v6, p0, Lj0/n;->B:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lj0/n;->y:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_a

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    iput-boolean v2, p0, Lj0/n;->u:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_8
    iget v5, p0, Lj0/n;->C:F

    sub-float/2addr v3, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    iget v3, p0, Lj0/n;->y:I

    int-to-float v3, v3

    add-float/2addr v5, v3

    goto :goto_0

    :cond_9
    iget v3, p0, Lj0/n;->y:I

    int-to-float v3, v3

    sub-float/2addr v5, v3

    :goto_0
    iput v5, p0, Lj0/n;->A:F

    iput v0, p0, Lj0/n;->B:F

    invoke-virtual {p0, v2}, Lj0/n;->w(I)V

    invoke-virtual {p0, v2}, Lj0/n;->x(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    iget-boolean v0, p0, Lj0/n;->u:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lj0/n;->E:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v3, p1}, Lj0/n;->q(FF)Z

    move-result p1

    or-int/2addr v1, p1

    goto/16 :goto_3

    :cond_b
    iget-boolean v0, p0, Lj0/n;->u:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lj0/n;->F:Landroid/view/VelocityTracker;

    iget v5, p0, Lj0/n;->H:I

    int-to-float v5, v5

    const/16 v6, 0x3e8

    invoke-virtual {v0, v6, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v5, p0, Lj0/n;->E:I

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v2, p0, Lj0/n;->s:Z

    invoke-virtual {p0}, Lj0/n;->h()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lj0/n;->j()Lj0/g;

    move-result-object v7

    int-to-float v8, v1

    int-to-float v5, v5

    div-float/2addr v8, v5

    iget v9, v7, Lj0/g;->b:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget v5, v7, Lj0/g;->e:F

    sub-float/2addr v6, v5

    iget v5, v7, Lj0/g;->d:F

    add-float/2addr v5, v8

    div-float/2addr v6, v5

    iget v5, p0, Lj0/n;->E:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v5, p0, Lj0/n;->C:F

    sub-float/2addr p1, v5

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v5, p0, Lj0/n;->I:I

    if-le p1, v5, :cond_d

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v5, p0, Lj0/n;->G:I

    if-le p1, v5, :cond_d

    iget-object p1, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, LN/c;->b(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v4

    if-nez p1, :cond_d

    iget-object p1, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, LN/c;->b(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v4

    if-nez p1, :cond_d

    if-lez v0, :cond_c

    move p1, v9

    goto :goto_2

    :cond_c
    add-int/lit8 p1, v9, 0x1

    goto :goto_2

    :cond_d
    iget p1, p0, Lj0/n;->i:I

    if-lt v9, p1, :cond_e

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_e
    const p1, 0x3f19999a    # 0.6f

    :goto_1
    add-float/2addr v6, p1

    float-to-int p1, v6

    add-int/2addr p1, v9

    :goto_2
    iget-object v5, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    iget-object v5, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj0/g;

    iget-object v5, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj0/g;

    iget v1, v1, Lj0/g;->b:I

    iget v3, v3, Lj0/g;->b:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_f
    invoke-virtual {p0, p1, v0, v2, v2}, Lj0/n;->v(IIZZ)V

    invoke-virtual {p0}, Lj0/n;->t()Z

    move-result v1

    if-ne p1, v9, :cond_12

    if-eqz v1, :cond_12

    iget-object p1, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, LN/c;->b(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_10

    iget-object p1, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_3

    :cond_10
    iget-object p1, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, LN/c;->b(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_12

    iget-object p1, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_3

    :cond_11
    iget-object v0, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v1, p0, Lj0/n;->s:Z

    invoke-virtual {p0}, Lj0/n;->r()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lj0/n;->C:F

    iput v0, p0, Lj0/n;->A:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lj0/n;->D:F

    iput v0, p0, Lj0/n;->B:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lj0/n;->E:I

    :cond_12
    :goto_3
    if-eqz v1, :cond_13

    sget-object p1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/x;->i(Landroid/view/View;)V

    :cond_13
    return v2

    :cond_14
    :goto_4
    return v1
.end method

.method public final p(I)Z
    .locals 7

    iget-object v0, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lj0/n;->K:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    iput-boolean v2, p0, Lj0/n;->L:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v2, v2, p1}, Lj0/n;->m(IIF)V

    iget-boolean p0, p0, Lj0/n;->L:Z

    if-eqz p0, :cond_1

    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lj0/n;->j()Lj0/g;

    move-result-object v0

    invoke-virtual {p0}, Lj0/n;->h()I

    move-result v3

    add-int/lit8 v4, v3, 0x0

    int-to-float v5, v2

    int-to-float v3, v3

    div-float/2addr v5, v3

    iget v6, v0, Lj0/g;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    iget v3, v0, Lj0/g;->e:F

    sub-float/2addr p1, v3

    iget v0, v0, Lj0/g;->d:F

    add-float/2addr v0, v5

    div-float/2addr p1, v0

    int-to-float v0, v4

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput-boolean v2, p0, Lj0/n;->L:Z

    invoke-virtual {p0, v6, v0, p1}, Lj0/n;->m(IIF)V

    iget-boolean p0, p0, Lj0/n;->L:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q(FF)Z
    .locals 11

    iget v0, p0, Lj0/n;->A:F

    sub-float/2addr v0, p1

    iput p1, p0, Lj0/n;->A:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float p1, p2, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    iget-object v2, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v2}, LN/c;->b(Landroid/widget/EdgeEffect;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    iget-object v2, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    neg-float v1, v1

    sub-float p1, v4, p1

    invoke-static {v2, v1, p1}, LN/c;->c(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float p1, p1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v2}, LN/c;->b(Landroid/widget/EdgeEffect;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v2, v1, p1}, LN/c;->c(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    cmpl-float p1, p1, v3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    return p1

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lj0/n;->h()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lj0/n;->o:F

    mul-float/2addr v5, v0

    iget v6, p0, Lj0/n;->p:F

    mul-float/2addr v6, v0

    iget-object v7, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj0/g;

    iget-object v8, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj0/g;

    iget v9, v7, Lj0/g;->b:I

    if-eqz v9, :cond_4

    iget v5, v7, Lj0/g;->e:F

    mul-float/2addr v5, v0

    move v7, v2

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    iget v9, v8, Lj0/g;->b:I

    iget-object v10, p0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v10}, Lj0/a;->b()I

    move-result v10

    sub-int/2addr v10, v1

    if-eq v9, v10, :cond_5

    iget v6, v8, Lj0/g;->e:F

    mul-float/2addr v6, v0

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    cmpg-float v8, v3, v5

    if-gez v8, :cond_7

    if-eqz v7, :cond_6

    sub-float p1, v5, v3

    iget-object v2, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    sub-float/2addr v4, p2

    invoke-static {v2, p1, v4}, LN/c;->c(Landroid/widget/EdgeEffect;FF)F

    goto :goto_4

    :cond_6
    move v1, p1

    :goto_4
    move p1, v1

    move v3, v5

    goto :goto_6

    :cond_7
    cmpl-float v4, v3, v6

    if-lez v4, :cond_9

    if-eqz v2, :cond_8

    sub-float/2addr v3, v6

    iget-object p1, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    div-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, v3, p2}, LN/c;->c(Landroid/widget/EdgeEffect;FF)F

    goto :goto_5

    :cond_8
    move v1, p1

    :goto_5
    move p1, v1

    move v3, v6

    :cond_9
    :goto_6
    iget p2, p0, Lj0/n;->A:F

    float-to-int v0, v3

    int-to-float v1, v0

    sub-float/2addr v3, v1

    add-float/2addr v3, p2

    iput v3, p0, Lj0/n;->A:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-virtual {p0, v0}, Lj0/n;->p(I)Z

    return p1
.end method

.method public final r()V
    .locals 1

    iget v0, p0, Lj0/n;->i:I

    invoke-virtual {p0, v0}, Lj0/n;->s(I)V

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lj0/n;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public final s(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lj0/n;->i:I

    if-eq v2, v1, :cond_0

    invoke-virtual {v0, v2}, Lj0/n;->k(I)Lj0/g;

    move-result-object v2

    iput v1, v0, Lj0/n;->i:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, v0, Lj0/n;->h:Lj0/a;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, v0, Lj0/n;->s:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lj0/n;->t:I

    iget v4, v0, Lj0/n;->i:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v6}, Lj0/a;->b()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    iget v8, v0, Lj0/n;->i:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v7, v0, Lj0/n;->d:I

    if-ne v6, v7, :cond_30

    move v7, v5

    :goto_1
    iget-object v8, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget-object v8, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lj0/g;

    iget v9, v8, Lj0/g;->b:I

    iget v10, v0, Lj0/n;->i:I

    if-lt v9, v10, :cond_4

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    iget v8, v0, Lj0/n;->i:I

    invoke-virtual {v0, v8, v7}, Lj0/n;->a(II)Lj0/g;

    move-result-object v8

    :cond_6
    if-eqz v8, :cond_26

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_7

    iget-object v11, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lj0/g;

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lj0/n;->h()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8

    const/4 v15, 0x0

    goto :goto_4

    :cond_8
    iget v14, v8, Lj0/g;->d:F

    sub-float v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float/2addr v15, v14

    :goto_4
    iget v3, v0, Lj0/n;->i:I

    add-int/lit8 v3, v3, -0x1

    const/4 v14, 0x0

    :goto_5
    if-ltz v3, :cond_e

    cmpl-float v16, v14, v15

    if-ltz v16, :cond_a

    if-ge v3, v4, :cond_a

    if-nez v11, :cond_9

    goto :goto_7

    :cond_9
    iget v9, v11, Lj0/g;->b:I

    if-ne v3, v9, :cond_d

    iget-boolean v9, v11, Lj0/g;->c:Z

    if-nez v9, :cond_d

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, v0, Lj0/n;->h:Lj0/a;

    iget-object v11, v11, Lj0/g;->a:LK2/A;

    invoke-virtual {v9, v0, v3, v11}, Lj0/a;->a(Landroid/view/ViewGroup;ILK2/A;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v10, :cond_c

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj0/g;

    goto :goto_6

    :cond_a
    if-eqz v11, :cond_b

    iget v9, v11, Lj0/g;->b:I

    if-ne v3, v9, :cond_b

    iget v9, v11, Lj0/g;->d:F

    add-float/2addr v14, v9

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_c

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj0/g;

    goto :goto_6

    :cond_b
    add-int/lit8 v9, v10, 0x1

    invoke-virtual {v0, v3, v9}, Lj0/n;->a(II)Lj0/g;

    move-result-object v9

    iget v9, v9, Lj0/g;->d:F

    add-float/2addr v14, v9

    add-int/lit8 v7, v7, 0x1

    if-ltz v10, :cond_c

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj0/g;

    goto :goto_6

    :cond_c
    const/4 v9, 0x0

    :goto_6
    move-object v11, v9

    :cond_d
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_e
    :goto_7
    iget v3, v8, Lj0/g;->d:F

    add-int/lit8 v4, v7, 0x1

    cmpg-float v9, v3, v13

    if-gez v9, :cond_16

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_f

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj0/g;

    goto :goto_8

    :cond_f
    const/4 v9, 0x0

    :goto_8
    if-gtz v12, :cond_10

    const/4 v10, 0x0

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v12

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    :goto_9
    iget v11, v0, Lj0/n;->i:I

    add-int/lit8 v11, v11, 0x1

    move v12, v4

    :goto_a
    if-ge v11, v6, :cond_16

    cmpl-float v13, v3, v10

    if-ltz v13, :cond_12

    if-le v11, v1, :cond_12

    if-nez v9, :cond_11

    goto :goto_c

    :cond_11
    iget v13, v9, Lj0/g;->b:I

    if-ne v11, v13, :cond_15

    iget-boolean v13, v9, Lj0/g;->c:Z

    if-nez v13, :cond_15

    iget-object v13, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v13, v0, Lj0/n;->h:Lj0/a;

    iget-object v9, v9, Lj0/g;->a:LK2/A;

    invoke-virtual {v13, v0, v11, v9}, Lj0/a;->a(Landroid/view/ViewGroup;ILK2/A;)V

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v12, v9, :cond_14

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj0/g;

    goto :goto_b

    :cond_12
    if-eqz v9, :cond_13

    iget v13, v9, Lj0/g;->b:I

    if-ne v11, v13, :cond_13

    iget v9, v9, Lj0/g;->d:F

    add-float/2addr v3, v9

    add-int/lit8 v12, v12, 0x1

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v12, v9, :cond_14

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj0/g;

    goto :goto_b

    :cond_13
    invoke-virtual {v0, v11, v12}, Lj0/n;->a(II)Lj0/g;

    move-result-object v9

    add-int/lit8 v12, v12, 0x1

    iget v9, v9, Lj0/g;->d:F

    add-float/2addr v3, v9

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v12, v9, :cond_14

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj0/g;

    goto :goto_b

    :cond_14
    const/4 v9, 0x0

    :cond_15
    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_16
    :goto_c
    iget-object v1, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v1}, Lj0/a;->b()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lj0/n;->h()I

    move-result v3

    if-lez v3, :cond_17

    int-to-float v6, v5

    int-to-float v3, v3

    div-float/2addr v6, v3

    goto :goto_d

    :cond_17
    const/4 v6, 0x0

    :goto_d
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1d

    iget v9, v2, Lj0/g;->b:I

    iget v10, v8, Lj0/g;->b:I

    if-ge v9, v10, :cond_1a

    iget v10, v2, Lj0/g;->e:F

    iget v2, v2, Lj0/g;->d:F

    add-float/2addr v10, v2

    add-float/2addr v10, v6

    move v2, v5

    :goto_e
    add-int/lit8 v9, v9, 0x1

    iget v11, v8, Lj0/g;->b:I

    if-gt v9, v11, :cond_1d

    iget-object v11, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_1d

    iget-object v11, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lj0/g;

    :goto_f
    iget v12, v11, Lj0/g;->b:I

    if-le v9, v12, :cond_18

    iget-object v12, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v2, v12, :cond_18

    add-int/lit8 v2, v2, 0x1

    iget-object v11, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lj0/g;

    goto :goto_f

    :cond_18
    :goto_10
    iget v12, v11, Lj0/g;->b:I

    if-ge v9, v12, :cond_19

    iget-object v12, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v12, v3, v6

    add-float/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_19
    iput v10, v11, Lj0/g;->e:F

    iget v11, v11, Lj0/g;->d:F

    add-float/2addr v11, v6

    add-float/2addr v10, v11

    goto :goto_e

    :cond_1a
    if-le v9, v10, :cond_1d

    iget-object v10, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    iget v2, v2, Lj0/g;->e:F

    :goto_11
    add-int/lit8 v9, v9, -0x1

    iget v11, v8, Lj0/g;->b:I

    if-lt v9, v11, :cond_1d

    if-ltz v10, :cond_1d

    iget-object v11, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lj0/g;

    :goto_12
    iget v12, v11, Lj0/g;->b:I

    if-ge v9, v12, :cond_1b

    if-lez v10, :cond_1b

    add-int/lit8 v10, v10, -0x1

    iget-object v11, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lj0/g;

    goto :goto_12

    :cond_1b
    :goto_13
    iget v12, v11, Lj0/g;->b:I

    if-le v9, v12, :cond_1c

    iget-object v12, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v12, v3, v6

    sub-float/2addr v2, v12

    add-int/lit8 v9, v9, -0x1

    goto :goto_13

    :cond_1c
    iget v12, v11, Lj0/g;->d:F

    add-float/2addr v12, v6

    sub-float/2addr v2, v12

    iput v2, v11, Lj0/g;->e:F

    goto :goto_11

    :cond_1d
    iget-object v2, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v9, v8, Lj0/g;->e:F

    iget v10, v8, Lj0/g;->b:I

    add-int/lit8 v11, v10, -0x1

    if-nez v10, :cond_1e

    move v12, v9

    goto :goto_14

    :cond_1e
    const v12, -0x800001

    :goto_14
    iput v12, v0, Lj0/n;->o:F

    add-int/lit8 v1, v1, -0x1

    if-ne v10, v1, :cond_1f

    iget v10, v8, Lj0/g;->d:F

    add-float/2addr v10, v9

    sub-float/2addr v10, v3

    goto :goto_15

    :cond_1f
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    :goto_15
    iput v10, v0, Lj0/n;->p:F

    add-int/lit8 v7, v7, -0x1

    :goto_16
    if-ltz v7, :cond_22

    iget-object v10, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lj0/g;

    :goto_17
    iget v12, v10, Lj0/g;->b:I

    if-le v11, v12, :cond_20

    iget-object v12, v0, Lj0/n;->h:Lj0/a;

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v12, v3, v6

    sub-float/2addr v9, v12

    goto :goto_17

    :cond_20
    iget v13, v10, Lj0/g;->d:F

    add-float/2addr v13, v6

    sub-float/2addr v9, v13

    iput v9, v10, Lj0/g;->e:F

    if-nez v12, :cond_21

    iput v9, v0, Lj0/n;->o:F

    :cond_21
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_16

    :cond_22
    iget v7, v8, Lj0/g;->e:F

    iget v9, v8, Lj0/g;->d:F

    add-float/2addr v7, v9

    add-float/2addr v7, v6

    iget v8, v8, Lj0/g;->b:I

    :goto_18
    add-int/lit8 v8, v8, 0x1

    if-ge v4, v2, :cond_25

    iget-object v9, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj0/g;

    :goto_19
    iget v10, v9, Lj0/g;->b:I

    if-ge v8, v10, :cond_23

    iget-object v10, v0, Lj0/n;->h:Lj0/a;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-float v10, v3, v6

    add-float/2addr v7, v10

    goto :goto_19

    :cond_23
    if-ne v10, v1, :cond_24

    iget v10, v9, Lj0/g;->d:F

    add-float/2addr v10, v7

    sub-float/2addr v10, v3

    iput v10, v0, Lj0/n;->p:F

    :cond_24
    iput v7, v9, Lj0/g;->e:F

    iget v9, v9, Lj0/g;->d:F

    add-float/2addr v9, v6

    add-float/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_25
    iget-object v1, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_26
    iget-object v1, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v5

    :goto_1a
    if-ge v2, v1, :cond_29

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lj0/h;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v6, v4, Lj0/h;->a:Z

    if-nez v6, :cond_27

    iget v6, v4, Lj0/h;->c:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_28

    invoke-virtual {v0, v3}, Lj0/n;->i(Landroid/view/View;)Lj0/g;

    move-result-object v3

    if-eqz v3, :cond_28

    iget v6, v3, Lj0/g;->d:F

    iput v6, v4, Lj0/h;->c:F

    iget v3, v3, Lj0/g;->b:I

    iput v3, v4, Lj0/h;->e:I

    goto :goto_1b

    :cond_27
    const/4 v7, 0x0

    :cond_28
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_29
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2c

    :goto_1c
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, v0, :cond_2b

    instance-of v1, v2, Landroid/view/View;

    if-nez v1, :cond_2a

    goto :goto_1d

    :cond_2a
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_1c

    :cond_2b
    invoke-virtual {v0, v1}, Lj0/n;->i(Landroid/view/View;)Lj0/g;

    move-result-object v3

    goto :goto_1e

    :cond_2c
    :goto_1d
    const/4 v3, 0x0

    :goto_1e
    if-eqz v3, :cond_2d

    iget v1, v3, Lj0/g;->b:I

    iget v2, v0, Lj0/n;->i:I

    if-eq v1, v2, :cond_2f

    :cond_2d
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_2f

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj0/n;->i(Landroid/view/View;)Lj0/g;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget v2, v2, Lj0/g;->b:I

    iget v3, v0, Lj0/n;->i:I

    if-ne v2, v3, :cond_2e

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_20

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_2f
    :goto_20
    return-void

    :cond_30
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_21

    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_21
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lj0/n;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final t()Z
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lj0/n;->E:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj0/n;->u:Z

    iput-boolean v0, p0, Lj0/n;->v:Z

    iget-object v1, p0, Lj0/n;->F:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lj0/n;->F:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v1, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lj0/n;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lj0/n;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final u(IIZZ)V
    .locals 10

    invoke-virtual {p0, p1}, Lj0/n;->k(I)Lj0/g;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj0/n;->h()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lj0/n;->o:F

    iget v0, v0, Lj0/g;->e:F

    iget v4, p0, Lj0/n;->p:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p3, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0, v1}, Lj0/n;->x(Z)V

    goto/16 :goto_5

    :cond_1
    iget-object p3, p0, Lj0/n;->l:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/widget/Scroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_2

    move p3, v2

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lj0/n;->m:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getCurrX()I

    move-result p3

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getStartX()I

    move-result p3

    :goto_2
    iget-object v3, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0, v1}, Lj0/n;->x(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    :goto_3
    move v4, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    sub-int v6, v0, v4

    rsub-int/lit8 v7, v5, 0x0

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    invoke-virtual {p0, v1}, Lj0/n;->d(Z)V

    invoke-virtual {p0}, Lj0/n;->r()V

    invoke-virtual {p0, v1}, Lj0/n;->w(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v2}, Lj0/n;->x(Z)V

    const/4 p3, 0x2

    invoke-virtual {p0, p3}, Lj0/n;->w(I)V

    invoke-virtual {p0}, Lj0/n;->h()I

    move-result p3

    div-int/lit8 v0, p3, 0x2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float p3, p3

    div-float/2addr v2, p3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v0, v0

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v2, v8

    const v8, 0x3ef1463b

    mul-float/2addr v2, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float/2addr v2, v0

    add-float/2addr v2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_6

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lj0/n;->h:Lj0/a;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-float/2addr p3, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float v0, v1

    add-float/2addr p3, v0

    div-float/2addr p2, p3

    add-float/2addr p2, v3

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    :goto_4
    const/16 p3, 0x258

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput-boolean v1, p0, Lj0/n;->m:Z

    iget-object v3, p0, Lj0/n;->l:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    sget-object p2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/x;->i(Landroid/view/View;)V

    :goto_5
    if-eqz p4, :cond_9

    invoke-virtual {p0, p1}, Lj0/n;->f(I)V

    goto :goto_6

    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual {p0, p1}, Lj0/n;->f(I)V

    :cond_8
    invoke-virtual {p0, v1}, Lj0/n;->d(Z)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    invoke-virtual {p0, v0}, Lj0/n;->p(I)Z

    :cond_9
    :goto_6
    return-void
.end method

.method public final v(IIZZ)V
    .locals 4

    iget-object v0, p0, Lj0/n;->h:Lj0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lj0/a;->b()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p4, :cond_1

    iget p4, p0, Lj0/n;->i:I

    if-ne p4, p1, :cond_1

    iget-object p4, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0, v1}, Lj0/n;->x(Z)V

    return-void

    :cond_1
    const/4 p4, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v0}, Lj0/a;->b()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lj0/n;->h:Lj0/a;

    invoke-virtual {p1}, Lj0/a;->b()I

    move-result p1

    sub-int/2addr p1, p4

    :cond_3
    :goto_0
    iget v0, p0, Lj0/n;->t:I

    iget v2, p0, Lj0/n;->i:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    :goto_1
    iget-object v2, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/g;

    iput-boolean p4, v2, Lj0/g;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Lj0/n;->i:I

    if-eq v0, p1, :cond_6

    move v1, p4

    :cond_6
    iget-boolean p4, p0, Lj0/n;->K:Z

    if-eqz p4, :cond_8

    iput p1, p0, Lj0/n;->i:I

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lj0/n;->f(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1}, Lj0/n;->s(I)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lj0/n;->u(IIZZ)V

    :goto_2
    return-void

    :cond_9
    :goto_3
    invoke-virtual {p0, v1}, Lj0/n;->x(Z)V

    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final w(I)V
    .locals 3

    iget v0, p0, Lj0/n;->P:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lj0/n;->P:I

    iget-object v0, p0, Lj0/n;->N:Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lj0/n;->N:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/j;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lj0/j;->a(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final x(Z)V
    .locals 1

    iget-boolean v0, p0, Lj0/n;->r:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lj0/n;->r:Z

    :cond_0
    return-void
.end method
