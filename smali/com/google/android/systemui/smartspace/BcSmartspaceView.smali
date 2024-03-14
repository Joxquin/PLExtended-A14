.class public Lcom/google/android/systemui/smartspace/BcSmartspaceView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Ln1/e;


# static fields
.field public static final t:Z


# instance fields
.field public d:Ln1/f;

.field public e:Ln1/b;

.field public final f:Landroid/util/ArraySet;

.field public g:Z

.field public h:Lj0/n;

.field public i:Lcom/google/android/systemui/smartspace/PageIndicator;

.field public j:I

.field public k:F

.field public l:Landroid/animation/Animator;

.field public m:Z

.field public n:I

.field public o:Ljava/util/List;

.field public p:Z

.field public final q:LK2/v;

.field public final r:LK2/C;

.field public final s:LK2/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "BcSmartspaceView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->t:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, LK2/E;

    invoke-direct {p1}, LK2/E;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->e:Ln1/b;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->f:Landroid/util/ArraySet;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->g:Z

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->j:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->k:F

    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->m:Z

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->n:I

    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->p:Z

    new-instance p1, LK2/v;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, LK2/v;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->q:LK2/v;

    new-instance p1, LK2/C;

    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->e:Ln1/b;

    invoke-direct {p1, p0, p2}, LK2/C;-><init>(Landroid/view/View;Ln1/b;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    new-instance p1, LK2/w;

    invoke-direct {p1, p0}, LK2/w;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->s:LK2/w;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->t:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", onTargetsAvailable called. Callers = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BcSmartspaceView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    targets.size() = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    targets = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->p:Z

    if-nez v2, :cond_15

    iget v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    invoke-virtual {v2}, LK2/C;->b()I

    move-result v2

    if-le v2, v3, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->o:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v4

    iget-object v5, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    iget v5, v5, Lj0/n;->i:I

    if-eqz v4, :cond_2

    iget-object v6, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    invoke-virtual {v6}, LK2/C;->b()I

    move-result v6

    sub-int/2addr v6, v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move-object v1, v7

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    iget-object v7, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v7, v7, LK2/C;->d:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LK2/A;

    if-eqz v7, :cond_3

    iget-object v7, v7, LK2/A;->d:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    goto :goto_1

    :cond_3
    move-object v7, v2

    :goto_1
    iget-object v8, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v8, v8, LK2/C;->d:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LK2/A;

    if-eqz v5, :cond_4

    iget-object v2, v5, LK2/A;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    :cond_4
    iget-object v5, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "targets"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v5, LK2/C;->j:Ljava/util/List;

    move-object v9, v8

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v10, v5, LK2/C;->k:Ljava/util/List;

    move-object v11, v10

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v12, 0x0

    iput-boolean v12, v5, LK2/C;->m:Z

    iget-object v13, v5, LK2/C;->x:LK2/a;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Parcelable;

    check-cast v13, Landroid/app/smartspace/SmartspaceTarget;

    invoke-static {v13}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v13}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v14

    const/16 v15, 0x22

    if-ne v14, v15, :cond_5

    move v14, v3

    goto :goto_3

    :cond_5
    move v14, v12

    :goto_3
    if-eqz v14, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v13}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v14

    const/4 v15, 0x3

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_7

    const-string v12, "SCREEN_EXTRA"

    invoke-virtual {v14, v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    goto :goto_4

    :cond_7
    move v12, v15

    :goto_4
    and-int/lit8 v14, v12, 0x2

    if-eqz v14, :cond_8

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_9

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eq v12, v15, :cond_a

    iput-boolean v3, v5, LK2/C;->m:Z

    :cond_a
    :goto_5
    const/4 v12, 0x0

    goto :goto_2

    :cond_b
    iget-object v1, v5, LK2/C;->r:Ln1/b;

    invoke-interface {v1}, Ln1/b;->a()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v5, v8}, LK2/C;->c(Ljava/util/List;)V

    invoke-virtual {v5, v10}, LK2/C;->c(Ljava/util/List;)V

    :cond_c
    invoke-virtual {v5}, LK2/C;->h()V

    monitor-enter v5

    :try_start_0
    iget-object v1, v5, Lj0/a;->b:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    :cond_d
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v5, Lj0/a;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    invoke-virtual {v1}, LK2/C;->b()I

    move-result v1

    iget-object v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->i:Lcom/google/android/systemui/smartspace/PageIndicator;

    if-eqz v3, :cond_e

    invoke-virtual {v3, v1, v4}, Lcom/google/android/systemui/smartspace/PageIndicator;->a(IZ)V

    :cond_e
    if-eqz v4, :cond_f

    add-int/lit8 v3, v1, -0x1

    sub-int v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->g(I)V

    :cond_f
    iget-boolean v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->m:Z

    if-eqz v3, :cond_11

    if-eqz v7, :cond_10

    invoke-virtual {v0, v7}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_6

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v0, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_11
    :goto_6
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v1, :cond_14

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    invoke-virtual {v2, v4}, LK2/C;->d(I)Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->f:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    sget-object v3, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->d:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    new-instance v3, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    const/16 v5, 0x8

    invoke-direct {v3, v5}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    invoke-virtual {v3, v2}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    :cond_12
    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d:Ln1/f;

    invoke-virtual {v3}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Ln1/f;->a(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_14
    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->f:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->f:Landroid/util/ArraySet;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v0, v0, LK2/C;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, LK2/u;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LK2/u;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_15
    :goto_8
    iput-object v1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->o:Ljava/util/List;

    return-void
.end method

.method public final b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->l:Landroid/animation/Animator;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070164

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    const/4 v9, 0x1

    aput v8, v5, v9

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    aput v8, v4, v6

    aput v7, v4, v9

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, LK2/x;

    invoke-direct {v2, p0, v0, p1}, LK2/x;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/view/ViewGroup;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->l:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->j:I

    invoke-virtual {v0, v1}, LK2/C;->d(I)Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BcSmartspaceView"

    const-string v1, "Current card is not present in the Adapter; cannot log."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->j:I

    sget-object v2, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->g:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object p0, p0, LK2/C;->x:LK2/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final d(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V
    .locals 6

    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->d:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const/4 v1, -0x1

    if-ne p3, v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getCreationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "BcSmartspaceView"

    const-string v3, "received_latency_millis will be -1 due to exception "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object v2

    invoke-static {v2}, LL2/b;->a(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Z

    move-result v2

    new-instance v3, LL2/c;

    invoke-direct {v3}, LL2/c;-><init>()V

    invoke-static {p1}, LK2/K;->a(Landroid/app/smartspace/SmartspaceTarget;)I

    move-result v4

    iput v4, v3, LL2/c;->a:I

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v4

    iput v4, v3, LL2/c;->e:I

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v5, v4, LK2/C;->t:Ljava/lang/String;

    iget v4, v4, LK2/C;->w:F

    invoke-static {v5, v4}, LK2/e;->d(Ljava/lang/String;F)I

    move-result v4

    iput v4, v3, LL2/c;->b:I

    iput p2, v3, LL2/c;->c:I

    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    invoke-virtual {p2}, LK2/C;->b()I

    move-result p2

    iput p2, v3, LL2/c;->d:I

    iput v0, v3, LL2/c;->f:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    iput v1, v3, LL2/c;->g:I

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object p0

    invoke-static {p0}, LL2/b;->d(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)LL2/h;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p1}, LL2/b;->c(Landroid/app/smartspace/SmartspaceTarget;)LL2/h;

    move-result-object p0

    :goto_1
    iput-object p0, v3, LL2/c;->h:LL2/h;

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object p0

    invoke-static {p0}, LL2/b;->b(Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)Ls1/a;

    move-result-object p0

    iput-object p0, v3, LL2/c;->i:Ls1/a;

    new-instance p0, LL2/d;

    invoke-direct {p0, v3}, LL2/d;-><init>(LL2/c;)V

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-result-object p1

    invoke-static {p0, p1}, LL2/b;->g(LL2/d;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;)V

    goto :goto_2

    :cond_2
    invoke-static {p0, p1}, LL2/b;->f(LL2/d;Landroid/app/smartspace/SmartspaceTarget;)V

    :goto_2
    invoke-static {p3, p0}, LL2/a;->a(LK2/G;LL2/d;)V

    return-void
.end method

.method public final e(Ln1/f;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d:Ln1/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ln1/f;->p(Ln1/e;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d:Ln1/f;

    invoke-interface {p1, p0}, Ln1/f;->d(Ln1/e;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d:Ln1/f;

    iput-object p0, p1, LK2/C;->s:Ln1/f;

    return-void
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iput p1, v0, LK2/C;->p:I

    invoke-virtual {v0}, LK2/C;->g()V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->i:Lcom/google/android/systemui/smartspace/PageIndicator;

    iput p1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->d:I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/smartspace/PageIndicator;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj0/n;->s:Z

    invoke-virtual {v0, p1, v1, v1, v1}, Lj0/n;->v(IIZZ)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->i:Lcom/google/android/systemui/smartspace/PageIndicator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->b(FI)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v2, v0, Lj0/n;->h:Lj0/a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    monitor-enter v2

    :try_start_0
    iput-object v5, v2, Lj0/a;->b:Landroid/database/DataSetObserver;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v3

    :goto_0
    iget-object v6, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    iget-object v6, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj0/g;

    iget-object v7, v0, Lj0/n;->h:Lj0/a;

    iget v8, v6, Lj0/g;->b:I

    iget-object v6, v6, Lj0/g;->a:LK2/A;

    invoke-virtual {v7, v0, v8, v6}, Lj0/a;->a(Landroid/view/ViewGroup;ILK2/A;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lj0/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v3

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lj0/h;

    iget-boolean v6, v6, Lj0/h;->a:Z

    if-nez v6, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_1
    add-int/2addr v2, v4

    goto :goto_1

    :cond_2
    iput v3, v0, Lj0/n;->i:I

    invoke-virtual {v0, v3, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    iput-object v1, v0, Lj0/n;->h:Lj0/a;

    iput v3, v0, Lj0/n;->d:I

    const/4 v2, -0x1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lj0/n;->n:Lj0/k;

    if-nez v1, :cond_4

    new-instance v1, Lj0/k;

    invoke-direct {v1, v0}, Lj0/k;-><init>(Lj0/n;)V

    iput-object v1, v0, Lj0/n;->n:Lj0/k;

    :cond_4
    iget-object v1, v0, Lj0/n;->h:Lj0/a;

    iget-object v6, v0, Lj0/n;->n:Lj0/k;

    monitor-enter v1

    :try_start_2
    iput-object v6, v1, Lj0/a;->b:Landroid/database/DataSetObserver;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v3, v0, Lj0/n;->s:Z

    iget-boolean v1, v0, Lj0/n;->K:Z

    iput-boolean v4, v0, Lj0/n;->K:Z

    iget-object v6, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v6}, Lj0/a;->b()I

    move-result v6

    iput v6, v0, Lj0/n;->d:I

    iget v6, v0, Lj0/n;->j:I

    if-ltz v6, :cond_5

    iget-object v1, v0, Lj0/n;->h:Lj0/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lj0/n;->j:I

    invoke-virtual {v0, v1, v3, v3, v4}, Lj0/n;->v(IIZZ)V

    iput v2, v0, Lj0/n;->j:I

    iput-object v5, v0, Lj0/n;->k:Landroid/os/Parcelable;

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    invoke-virtual {v0}, Lj0/n;->r()V

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->s:LK2/w;

    iget-object v5, v0, Lj0/n;->N:Ljava/util/List;

    if-nez v5, :cond_8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lj0/n;->N:Ljava/util/List;

    :cond_8
    iget-object v0, v0, Lj0/n;->N:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->i:Lcom/google/android/systemui/smartspace/PageIndicator;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    invoke-virtual {v1}, LK2/C;->b()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/google/android/systemui/smartspace/PageIndicator;->a(IZ)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v0, v0, LK2/C;->t:Ljava/lang/String;

    const-string v1, "lockscreen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->q:LK2/v;

    invoke-virtual {v0, v1, v3, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const-string v2, "doze_always_on"

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_9

    move v3, v4

    :cond_9
    iput-boolean v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->g:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "BcSmartspaceView"

    const-string v2, "Unable to register Doze Always on content observer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d:Ln1/f;

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->e(Ln1/f;)V

    :cond_b
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->q:LK2/v;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d:Ln1/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ln1/f;->p(Ln1/e;)V

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a030c

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lj0/n;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    const v0, 0x7f0a030e

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/PageIndicator;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->i:Lcom/google/android/systemui/smartspace/PageIndicator;

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lez v0, :cond_0

    if-ge v0, v1, :cond_0

    int-to-float p2, v0

    int-to-float v0, v1

    div-float/2addr p2, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, p1, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->resetPivot()V

    :goto_0
    return-void
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d:Ln1/f;

    if-eqz p0, :cond_1

    new-instance v0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    invoke-direct {v0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ln1/f;->a(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :cond_1
    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
