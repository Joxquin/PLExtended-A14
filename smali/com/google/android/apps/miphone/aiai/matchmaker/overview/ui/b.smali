.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:LL1/w;

.field public final a:Landroid/content/Context;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroid/widget/FrameLayout;

.field public final d:Landroid/widget/FrameLayout;

.field public final e:Landroid/widget/FrameLayout;

.field public final f:Landroid/widget/FrameLayout;

.field public final g:Landroid/os/Handler;

.field public final h:LL1/a0;

.field public final i:Ljava/lang/String;

.field public final j:LK1/a;

.field public final k:LV1/u;

.field public final l:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;

.field public final m:LX1/f;

.field public final n:Landroid/graphics/RectF;

.field public final o:I

.field public final p:Z

.field public q:LL1/j0;

.field public r:LL1/o;

.field public s:LL1/B;

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Z

.field public w:Ljava/util/List;

.field public x:LX1/u;

.field public y:F

.field public final z:LV1/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Landroid/widget/FrameLayout;LL1/a0;Landroid/os/Handler;LX1/f;LL1/j0;LK1/a;LV1/u;LV1/c;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v0, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    iput-object v9, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->n:Landroid/graphics/RectF;

    const/4 v1, -0x1

    iput v1, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->o:I

    const-string v1, "null_session_id"

    iput-object v1, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->t:Ljava/lang/String;

    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->v:Z

    iput-object v7, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a:Landroid/content/Context;

    iput-object v8, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02ef

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->c:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02f0

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->d:Landroid/widget/FrameLayout;

    const v1, 0x7f0a01a4

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->e:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0115

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/FrameLayout;

    iput-object v11, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->f:Landroid/widget/FrameLayout;

    move-object/from16 v1, p5

    iput-object v1, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->g:Landroid/os/Handler;

    move-object/from16 v15, p4

    iput-object v15, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    move-object/from16 v4, p6

    iput-object v4, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->m:LX1/f;

    move-object/from16 v5, p8

    iput-object v5, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->j:LK1/a;

    move-object/from16 v1, p9

    iput-object v1, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->k:LV1/u;

    move-object/from16 v1, p10

    iput-object v1, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->z:LV1/c;

    iput-object v0, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->q:LL1/j0;

    iget-object v13, v0, LL1/j0;->a:Ljava/lang/String;

    new-instance v17, LL1/q;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, LL1/q;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;LX1/f;LK1/a;)V

    new-instance v0, LL1/o;

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/16 v18, -0x1

    move-object v12, v0

    move-object v15, v1

    move-object/from16 v16, p4

    invoke-direct/range {v12 .. v18}, LL1/o;-><init>(Ljava/lang/String;LJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;LL1/a0;LL1/q;I)V

    iput-object v0, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    invoke-virtual/range {p3 .. p3}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const v2, 0x7f07022d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    neg-float v2, v2

    const v3, 0x7f07022e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v9, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v10, v2

    :cond_0
    iput-boolean v10, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->p:Z

    const v1, 0x7f070188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->o:I

    sget-boolean v0, LL1/r;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;

    invoke-direct {v0, v7, v11}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->l:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->l:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;

    :goto_0
    sget v0, LM1/c;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "session_overview"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "Clearing suggestions."

    invoke-static {v0}, LM1/b;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->w:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iput-object v0, v1, LL1/o;->j:LJ1/e;

    iput-object v0, v1, LL1/o;->k:LJ1/A;

    iput-object v0, v1, LL1/o;->n:Landroid/graphics/RectF;

    iget-object v2, v1, LL1/o;->c:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v1, LL1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->u:Z

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LL1/a0;->k(Z)V

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iget-object v2, v2, LL1/o;->b:LL1/q;

    invoke-virtual {v2}, LL1/q;->c()V

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    monitor-enter v1

    :try_start_0
    iget-object p0, v1, LL1/a0;->j:LL1/P;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-interface {p0}, LL1/P;->c()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final b(ZZ)V
    .locals 2

    const-string v0, "Complete suggest interaction"

    invoke-static {v0}, LM1/b;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LL1/a0;->k(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->u:Z

    sget v0, LM1/c;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "interaction_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->onLongPressedTaskSnapshotSession(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->d(ZZ)V

    return-void
.end method

.method public final c(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;Landroid/graphics/RectF;)LJ1/t;
    .locals 6

    new-instance v0, LJ1/t;

    invoke-direct {v0}, LJ1/t;-><init>()V

    if-eqz p2, :cond_0

    sget-object p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    iput-object p1, v0, LJ1/t;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    new-instance p1, LJ1/H;

    invoke-direct {p1}, LJ1/H;-><init>()V

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iput v1, p1, LJ1/H;->a:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    iput v1, p1, LJ1/H;->b:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iput v1, p1, LJ1/H;->c:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iput p2, p1, LJ1/H;->d:F

    iput-object p1, v0, LJ1/t;->a:LJ1/H;

    goto :goto_0

    :cond_0
    iput-object p1, v0, LJ1/t;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->w:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->w:Ljava/util/List;

    sget v1, LM1/c;->a:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LJ1/u;

    invoke-direct {v3}, LJ1/u;-><init>()V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    iput v4, v3, LJ1/u;->a:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v4

    iput v4, v3, LJ1/u;->b:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    iput v4, v3, LJ1/u;->c:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    iput v4, v3, LJ1/u;->d:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    iput v4, v3, LJ1/u;->e:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    iput v4, v3, LJ1/u;->f:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, v3, LJ1/u;->g:J

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v3, LJ1/u;->w:J

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    iput v4, v3, LJ1/u;->h:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    iput v4, v3, LJ1/u;->i:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getOrientation()F

    move-result v4

    iput v4, v3, LJ1/u;->j:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, LJ1/u;->k:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, LJ1/u;->l:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    iput v4, v3, LJ1/u;->m:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getToolMajor()F

    move-result v4

    iput v4, v3, LJ1/u;->n:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getToolMinor()F

    move-result v4

    iput v4, v3, LJ1/u;->o:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v3, LJ1/u;->p:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v3, LJ1/u;->q:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v4

    iput v4, v3, LJ1/u;->r:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v1

    iput v1, v3, LJ1/u;->s:F

    new-instance v1, LJ1/H;

    invoke-direct {v1}, LJ1/H;-><init>()V

    iput-object v1, v3, LJ1/u;->t:LJ1/H;

    new-instance v1, LJ1/H;

    invoke-direct {v1}, LJ1/H;-><init>()V

    iget-object v4, v2, LL1/a0;->f:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iput v5, v1, LJ1/H;->a:F

    iget v5, v4, Landroid/graphics/RectF;->top:F

    iput v5, v1, LJ1/H;->b:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    iput v5, v1, LJ1/H;->c:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iput v4, v1, LJ1/H;->d:F

    iput-object v1, v3, LJ1/u;->t:LJ1/H;

    iget-object v1, v2, LL1/a0;->g:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v3, LJ1/u;->u:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v3, LJ1/u;->v:F

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    iput-object p1, v0, LJ1/t;->g:Ljava/util/List;

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->p:Z

    iput-boolean p1, v0, LJ1/t;->d:Z

    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->q:LL1/j0;

    iget-boolean p1, p1, LL1/j0;->c:Z

    iput-boolean p1, v0, LJ1/t;->i:Z

    iget-boolean p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->v:Z

    iput-boolean p1, v0, LJ1/t;->e:Z

    const/4 p1, 0x1

    iput p1, v0, LJ1/t;->f:I

    iget p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->o:I

    if-lez p0, :cond_3

    iput-boolean p1, v0, LJ1/t;->b:Z

    iput p0, v0, LJ1/t;->c:I

    :cond_3
    return-object v0
.end method

.method public final d(ZZ)V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->u:Z

    if-eqz v1, :cond_30

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    invoke-virtual {v1}, LL1/o;->j()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    invoke-virtual {v1}, LL1/o;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "displayEntities: No content present."

    invoke-static {v0, v2}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->t:Ljava/lang/String;

    iput-object v3, v1, LL1/o;->h:Ljava/lang/String;

    invoke-virtual {v1}, LL1/o;->c()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "Displaying entities for long-press."

    invoke-static {v3}, LM1/b;->f(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, -0x1

    const/4 v14, 0x1

    if-ge v11, v1, :cond_26

    iget-object v15, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    new-instance v10, LL1/o;

    iget-object v5, v15, LL1/o;->e:Ljava/lang/String;

    iget-object v6, v15, LL1/o;->j:LJ1/e;

    iget-object v7, v15, LL1/o;->l:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

    iget-object v8, v15, LL1/o;->a:LL1/a0;

    iget-object v9, v15, LL1/o;->b:LL1/q;

    move-object v4, v10

    move-object/from16 v16, v10

    move v10, v11

    invoke-direct/range {v4 .. v10}, LL1/o;-><init>(Ljava/lang/String;LJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;LL1/a0;LL1/q;I)V

    invoke-virtual/range {v16 .. v16}, LL1/o;->b()V

    iget-object v4, v15, LL1/o;->h:Ljava/lang/String;

    move-object/from16 v7, v16

    iput-object v4, v7, LL1/o;->h:Ljava/lang/String;

    iget-object v4, v15, LL1/o;->m:LJ1/t;

    sget v5, LM1/c;->a:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v7, LL1/o;->m:LJ1/t;

    iget-object v4, v7, LL1/o;->n:Landroid/graphics/RectF;

    if-nez v4, :cond_2

    :cond_1
    move/from16 v17, v1

    goto/16 :goto_11

    :cond_2
    invoke-virtual {v7}, LL1/o;->k()Z

    move-result v4

    if-eqz p1, :cond_3

    if-eqz v4, :cond_3

    iget-object v5, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->k:LV1/u;

    iget-object v5, v5, LV1/u;->a:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v5}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SELECT_MODE_IMAGE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v5, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_3
    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a:Landroid/content/Context;

    const v5, 0x7f0d0082

    invoke-static {v4, v5, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iget-object v5, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v5, v7, LL1/o;->c:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v12, v5

    iget-object v5, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->g:Landroid/os/Handler;

    new-instance v6, LL1/J;

    invoke-direct {v6, v4, v7, v5}, LL1/J;-><init>(Landroid/widget/FrameLayout;LL1/o;Landroid/os/Handler;)V

    iget-object v4, v6, LL1/J;->b:LL1/o;

    iget-object v5, v4, LL1/o;->c:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LJ1/B;

    iget-object v8, v6, LL1/J;->f:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    iget-object v9, v7, LJ1/B;->d:Ljava/util/List;

    sget v10, LM1/c;->a:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v2

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LJ1/C;

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    iget-object v13, v13, LJ1/C;->a:Ljava/util/List;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LJ1/y;

    if-nez v10, :cond_6

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    invoke-static {v15, v10}, LL1/o;->d(LJ1/y;Landroid/graphics/RectF;)V

    :cond_6
    invoke-static {v15, v14}, LL1/o;->d(LJ1/y;Landroid/graphics/RectF;)V

    iget-object v3, v4, LL1/o;->a:LL1/a0;

    invoke-virtual {v3, v14}, LL1/a0;->c(Landroid/graphics/RectF;)V

    iget v3, v15, LJ1/y;->d:I

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    if-nez v3, :cond_7

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v14}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v15, v15, LJ1/y;->d:I

    invoke-virtual {v8, v15, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v3, v14}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    new-instance v9, Landroid/graphics/RectF;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    invoke-direct {v9, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    if-nez p2, :cond_9

    iget v13, v6, LL1/J;->d:I

    neg-int v13, v13

    int-to-float v13, v13

    iget v14, v6, LL1/J;->e:I

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v9, v13, v14}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v15

    float-to-int v15, v15

    invoke-direct {v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v14, v9, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v14, v9, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v14, v6, LL1/J;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    move/from16 v17, v1

    const v1, 0x7f0d0081

    invoke-static {v15, v1, v2}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v14, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, LL1/I;

    invoke-direct {v13, v6, v9, v1}, LL1/I;-><init>(LL1/J;Landroid/graphics/RectF;Landroid/widget/FrameLayout;)V

    iget-object v1, v6, LL1/J;->c:Landroid/os/Handler;

    invoke-virtual {v1, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_9
    move/from16 v17, v1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v13

    const/high16 v14, 0x3fa00000    # 1.25f

    invoke-virtual {v1, v14, v14, v9, v13}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {v1, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :goto_3
    iget-object v1, v4, LL1/o;->b:LL1/q;

    iput-object v7, v1, LL1/q;->h:LJ1/B;

    iput-object v4, v1, LL1/q;->j:LL1/o;

    iget-object v9, v1, LL1/q;->c:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {v1}, LL1/q;->g()V

    iget-object v9, v1, LL1/q;->i:LX1/u;

    if-eqz v9, :cond_a

    invoke-virtual {v9, v1}, LX1/u;->m(LL1/q;)V

    invoke-virtual {v1}, LL1/q;->h()V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v17

    goto/16 :goto_2

    :cond_b
    move/from16 v17, v1

    invoke-virtual {v7}, LL1/o;->j()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v7, LL1/o;->j:LJ1/e;

    if-eqz v1, :cond_c

    iget-object v1, v7, LL1/o;->c:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v14

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_25

    new-instance v6, LL1/K;

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a:Landroid/content/Context;

    invoke-direct {v6, v1}, LL1/K;-><init>(Landroid/content/Context;)V

    new-instance v1, LL1/c0;

    invoke-direct {v1, v0, v6}, LL1/c0;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;LL1/K;)V

    iput-object v1, v6, LL1/K;->d:LL1/c0;

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6, v13, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v1, v7, LL1/o;->c:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v12, v1

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    iget-object v3, v7, LL1/o;->j:LJ1/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, LJ1/e;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->j:LK1/a;

    iget-object v5, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->q:LL1/j0;

    iget-object v5, v5, LL1/j0;->a:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v7, LL1/o;->m:LJ1/t;

    iget-object v10, v7, LL1/o;->c:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LJ1/B;

    iget-object v13, v7, LL1/o;->c:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LJ1/B;

    new-instance v15, LJ1/q;

    invoke-direct {v15}, LJ1/q;-><init>()V

    iget v2, v13, LJ1/B;->n:I

    if-ne v2, v14, :cond_d

    iget-boolean v14, v13, LJ1/B;->l:Z

    if-nez v14, :cond_d

    const/4 v14, 0x1

    goto :goto_5

    :cond_d
    const/4 v14, 0x0

    :goto_5
    iput-boolean v14, v15, LJ1/q;->b:Z

    const/4 v14, 0x1

    if-ne v2, v14, :cond_e

    iget-boolean v2, v13, LJ1/B;->l:Z

    if-ne v2, v14, :cond_e

    const/4 v2, 0x1

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v15, LJ1/q;->a:Z

    const/4 v2, 0x0

    iput-boolean v2, v15, LJ1/q;->c:Z

    iget-boolean v2, v13, LJ1/B;->l:Z

    if-eqz v2, :cond_f

    iget v2, v13, LJ1/B;->o:I

    iput v2, v15, LJ1/q;->d:I

    iget v2, v13, LJ1/B;->p:I

    iput v2, v15, LJ1/q;->e:I

    goto :goto_7

    :cond_f
    iget v2, v13, LJ1/B;->o:I

    iput v2, v15, LJ1/q;->f:I

    iget v2, v13, LJ1/B;->p:I

    iput v2, v15, LJ1/q;->g:I

    :goto_7
    new-instance v2, LJ1/m;

    invoke-direct {v2}, LJ1/m;-><init>()V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_10

    iput-object v9, v2, LJ1/m;->c:LJ1/t;

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iput-wide v13, v2, LJ1/m;->b:J

    new-instance v9, LJ1/r;

    invoke-direct {v9}, LJ1/r;-><init>()V

    invoke-static {v10, v9}, LL1/t;->a(LJ1/B;LJ1/r;)V

    iput-object v9, v2, LJ1/m;->a:Ljava/lang/Object;

    invoke-virtual {v7}, LL1/o;->k()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    goto :goto_8

    :cond_11
    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    :goto_8
    iput-object v2, v9, LJ1/r;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    iput-object v10, v9, LJ1/r;->b:LJ1/B;

    iput-object v15, v9, LJ1/r;->c:LJ1/q;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;->g:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    iput-object v2, v9, LJ1/r;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    iget v2, v10, LJ1/B;->m:I

    iput v2, v9, LJ1/r;->e:I

    new-instance v2, LJ1/n;

    invoke-direct {v2}, LJ1/n;-><init>()V

    const/4 v9, 0x0

    int-to-long v13, v9

    iput-wide v13, v2, LJ1/n;->b:J

    iput-object v5, v2, LJ1/n;->c:Ljava/lang/String;

    iput-object v8, v2, LJ1/n;->a:Ljava/util/List;

    invoke-virtual {v1, v3, v4, v2}, LL1/a0;->i(Ljava/lang/String;LK1/a;LJ1/n;)V

    iget-object v5, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->j:LK1/a;

    new-instance v8, LL1/d0;

    invoke-direct {v8, v0, v7}, LL1/d0;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;LL1/o;)V

    iget-object v9, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->g:Landroid/os/Handler;

    new-instance v1, LL1/u0;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, LL1/u0;-><init>(LK1/a;LL1/K;LL1/o;LL1/d0;Landroid/os/Handler;)V

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, LL1/u0;->f:Landroid/graphics/RectF;

    if-nez v2, :cond_12

    const-string v2, "Empty text container rect."

    const/4 v3, 0x0

    invoke-static {v2, v3}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    move/from16 v20, v12

    goto/16 :goto_10

    :cond_12
    const/4 v3, 0x0

    :try_start_1
    sget-boolean v2, LL1/r;->a:Z

    if-eqz v2, :cond_13

    iget-object v2, v1, LL1/u0;->a:Landroid/widget/TextView;

    const/16 v4, 0x96

    const/16 v5, 0x3c

    const/16 v6, 0x32

    invoke-static {v6, v6, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_13
    iget-object v2, v1, LL1/u0;->c:LL1/o;

    invoke-virtual {v2}, LL1/o;->e()LJ1/d;

    move-result-object v2

    iget-object v2, v2, LJ1/d;->a:Ljava/util/List;

    iget-object v4, v1, LL1/u0;->c:LL1/o;

    iget-object v4, v4, LL1/o;->c:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, v1, LL1/u0;->c:LL1/o;

    iget-object v4, v4, LL1/o;->c:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ1/B;

    iget-object v5, v4, LJ1/B;->d:Ljava/util/List;

    if-eqz v5, :cond_18

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18

    iget-object v4, v4, LJ1/B;->d:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ1/C;

    iget-object v4, v4, LJ1/C;->c:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v13, -0x1

    :cond_14
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v13, :cond_15

    if-le v13, v6, :cond_16

    :cond_15
    move v13, v6

    :cond_16
    if-ltz v5, :cond_17

    if-ge v5, v6, :cond_14

    :cond_17
    move v5, v6

    goto :goto_9

    :cond_18
    const/4 v5, -0x1

    const/4 v13, -0x1

    :cond_19
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_a
    sget v8, LM1/c;->a:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v2

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_21

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LJ1/y;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ge v6, v14, :cond_1a

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJ1/y;

    goto :goto_b

    :cond_1a
    move-object v8, v3

    :goto_b
    iget-object v14, v1, LL1/u0;->c:LL1/o;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v9}, LL1/o;->d(LJ1/y;Landroid/graphics/RectF;)V

    iget-object v14, v14, LL1/o;->a:LL1/a0;

    invoke-virtual {v14, v9}, LL1/a0;->c(Landroid/graphics/RectF;)V

    iget-object v14, v1, LL1/u0;->c:LL1/o;

    iget v15, v10, LJ1/y;->d:I

    iget-object v14, v14, LL1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/RectF;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_1b

    iget v15, v8, LJ1/y;->d:I

    iget v3, v10, LJ1/y;->d:I

    if-eq v15, v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_c

    :cond_1b
    const/4 v3, 0x0

    :goto_c
    if-nez v3, :cond_1c

    if-eqz v8, :cond_1c

    iget-object v15, v1, LL1/u0;->c:LL1/o;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v4}, LL1/o;->d(LJ1/y;Landroid/graphics/RectF;)V

    iget-object v15, v15, LL1/o;->a:LL1/a0;

    invoke-virtual {v15, v4}, LL1/a0;->c(Landroid/graphics/RectF;)V

    iget v15, v4, Landroid/graphics/RectF;->left:F

    iput v15, v9, Landroid/graphics/RectF;->right:F

    :cond_1c
    iget v15, v14, Landroid/graphics/RectF;->top:F

    iput v15, v9, Landroid/graphics/RectF;->top:F

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    iput v14, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v14, v1, LL1/u0;->f:Landroid/graphics/RectF;

    iget v15, v14, Landroid/graphics/RectF;->left:F

    neg-float v15, v15

    iget v14, v14, Landroid/graphics/RectF;->top:F

    neg-float v14, v14

    invoke-virtual {v9, v15, v14}, Landroid/graphics/RectF;->offset(FF)V

    if-eqz v7, :cond_1d

    iget-object v7, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    iget-object v15, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    iget-object v15, v1, LL1/u0;->d:Ljava/util/List;

    move-object/from16 v18, v2

    new-instance v2, Landroid/graphics/RectF;

    move-object/from16 v19, v4

    iget v4, v9, Landroid/graphics/RectF;->left:F

    move/from16 v20, v12

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v12

    const/4 v0, 0x0

    invoke-direct {v2, v0, v0, v4, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    invoke-static {v2, v6, v0, v7, v14}, LL1/a;->a(Landroid/graphics/RectF;IZII)LL1/a;

    move-result-object v2

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto :goto_d

    :cond_1d
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v12

    :goto_d
    iget-object v0, v10, LJ1/y;->b:Ljava/lang/String;

    iget-object v2, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v4, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget-object v12, v1, LL1/u0;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v9, v6, v0, v2, v4}, LL1/a;->a(Landroid/graphics/RectF;IZII)LL1/a;

    move-result-object v14

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v13, v6, :cond_1e

    iput v2, v1, LL1/u0;->k:I

    :cond_1e
    if-ne v5, v6, :cond_1f

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, LL1/u0;->l:I

    :cond_1f
    if-eqz v3, :cond_20

    iget-object v0, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v2, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v3, v1, LL1/u0;->d:Ljava/util/List;

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-direct {v4, v12, v12, v9, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v7, 0x0

    invoke-static {v4, v6, v7, v0, v2}, LL1/a;->a(Landroid/graphics/RectF;IZII)LL1/a;

    move-result-object v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, LL1/u0;->c:LL1/o;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v8, LJ1/y;->d:I

    iget-object v0, v0, LL1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, v1, LL1/u0;->c:LL1/o;

    iget v4, v10, LJ1/y;->d:I

    iget-object v3, v3, LL1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    add-float/2addr v0, v9

    iget-object v3, v1, LL1/u0;->d:Ljava/util/List;

    new-instance v4, Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v9, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    add-int/lit8 v0, v2, 0x2

    const/4 v7, 0x1

    invoke-static {v4, v6, v7, v2, v0}, LL1/a;->a(Landroid/graphics/RectF;IZII)LL1/a;

    move-result-object v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :cond_20
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move/from16 v12, v20

    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_21
    move/from16 v20, v12

    iget-object v0, v1, LL1/u0;->d:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v1, LL1/u0;->a:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto/16 :goto_10

    :cond_22
    :try_start_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, v1, LL1/u0;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x10

    iget-object v3, v1, LL1/u0;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, v1, LL1/u0;->f:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, v1, LL1/u0;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, v1, LL1/u0;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, v1, LL1/u0;->j:Landroid/text/SpannableString;

    iget-object v0, v1, LL1/u0;->d:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL1/a;

    iget-object v3, v2, LL1/a;->a:Landroid/graphics/RectF;

    iget-object v4, v1, LL1/u0;->f:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v3, v1, LL1/u0;->j:Landroid/text/SpannableString;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v2, LL1/a;->c:I

    iget v5, v2, LL1/a;->d:I

    iget-boolean v6, v2, LL1/a;->e:Z

    if-eqz v6, :cond_23

    const/16 v6, 0x33

    goto :goto_f

    :cond_23
    const/16 v6, 0x11

    :goto_f
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_e

    :cond_24
    iget-object v0, v1, LL1/u0;->a:Landroid/widget/TextView;

    iget-object v2, v1, LL1/u0;->j:Landroid/text/SpannableString;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, LL1/u0;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, LL1/l0;

    invoke-direct {v0, v1}, LL1/l0;-><init>(LL1/u0;)V

    iget-object v2, v1, LL1/u0;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, LL1/m0;

    invoke-direct {v0, v1}, LL1/m0;-><init>(LL1/u0;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    new-instance v0, LL1/n0;

    invoke-direct {v0, v1}, LL1/n0;-><init>(LL1/u0;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, LL1/o0;

    invoke-direct {v0, v1}, LL1/o0;-><init>(LL1/u0;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, LL1/u0;->a:Landroid/widget/TextView;

    new-instance v2, LL1/s0;

    invoke-direct {v2, v1}, LL1/s0;-><init>(LL1/u0;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    iget-object v0, v1, LL1/u0;->a:Landroid/widget/TextView;

    new-instance v2, LL1/t0;

    invoke-direct {v2, v1}, LL1/t0;-><init>(LL1/u0;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    invoke-virtual {v1}, LL1/u0;->d()LJ1/B;

    iget v0, v1, LL1/u0;->k:I

    iget v2, v1, LL1/u0;->l:I

    invoke-virtual {v1, v0, v2}, LL1/u0;->c(II)V

    iget-object v0, v1, LL1/u0;->c:LL1/o;

    iget v2, v0, LL1/o;->g:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, LL1/o;->g:I

    iput v2, v1, LL1/u0;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    :goto_10
    move/from16 v12, v20

    goto :goto_11

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_25
    :goto_11
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_26
    if-lez v12, :cond_28

    if-nez p2, :cond_27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->d:Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v3, LL1/g0;

    invoke-direct {v3, v0}, LL1/g0;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_12

    :cond_27
    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto :goto_12

    :cond_28
    move-object/from16 v0, p0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    :goto_12
    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->l:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;

    if-eqz v1, :cond_30

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iput-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->m:LL1/o;

    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->m:LL1/o;

    if-eqz v0, :cond_30

    iget-object v3, v0, LL1/o;->j:LJ1/e;

    if-nez v3, :cond_29

    goto/16 :goto_18

    :cond_29
    sget v3, LM1/c;->a:I

    iget-object v3, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->l:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/DebugDisplay$DebugLevel;

    sget-object v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/DebugDisplay$DebugLevel;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/DebugDisplay$DebugLevel;

    if-ne v3, v4, :cond_2d

    invoke-virtual {v0}, LL1/o;->c()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ1/d;

    iget-object v4, v4, LJ1/d;->a:Ljava/util/List;

    if-nez v4, :cond_2b

    goto :goto_13

    :cond_2b
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ1/y;

    iget-object v5, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->i:Landroid/graphics/RectF;

    invoke-static {v4, v5}, LL1/o;->d(LJ1/y;Landroid/graphics/RectF;)V

    iget-object v6, v0, LL1/o;->a:LL1/a0;

    invoke-virtual {v6, v5}, LL1/a0;->c(Landroid/graphics/RectF;)V

    iget-object v5, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->i:Landroid/graphics/RectF;

    iget v6, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->j:F

    neg-float v6, v6

    invoke-virtual {v5, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v5, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->k:Landroid/widget/FrameLayout;

    iget-object v6, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->i:Landroid/graphics/RectF;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "l:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v4, LJ1/y;->d:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "g:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, LJ1/y;->f:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_2c

    iget-object v4, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->f:Landroid/graphics/Paint;

    goto :goto_15

    :cond_2c
    iget-object v4, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->g:Landroid/graphics/Paint;

    :goto_15
    move-object v8, v4

    iget-object v9, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->h:Landroid/graphics/Paint;

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->b(Landroid/widget/FrameLayout;Landroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2d
    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/DebugDisplay$DebugLevel;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/DebugDisplay$DebugLevel;

    if-ne v3, v2, :cond_30

    invoke-virtual {v0}, LL1/o;->c()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ1/d;

    iget-object v3, v3, LJ1/d;->a:Ljava/util/List;

    if-nez v3, :cond_2f

    goto :goto_16

    :cond_2f
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ1/y;

    iget-object v5, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->i:Landroid/graphics/RectF;

    invoke-static {v4, v5}, LL1/o;->d(LJ1/y;Landroid/graphics/RectF;)V

    iget-object v6, v0, LL1/o;->a:LL1/a0;

    invoke-virtual {v6, v5}, LL1/a0;->c(Landroid/graphics/RectF;)V

    iget-object v5, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->k:Landroid/widget/FrameLayout;

    iget-object v6, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->i:Landroid/graphics/RectF;

    iget-object v7, v4, LJ1/y;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->d:Landroid/graphics/Paint;

    iget-object v9, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->e:Landroid/graphics/Paint;

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/a;->b(Landroid/widget/FrameLayout;Landroid/graphics/RectF;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_17

    :cond_30
    :goto_18
    return-void
.end method

.method public final e()LL1/w;
    .locals 8

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->e:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->x:LX1/u;

    iget-object v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    iget-object v6, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->j:LK1/a;

    iget-object v7, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->k:LV1/u;

    new-instance v0, LL1/w;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, LL1/w;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;Landroid/view/ViewGroup;LX1/u;LL1/a0;LK1/a;LV1/u;)V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    return-object p0
.end method

.method public final f(Landroid/graphics/RectF;)V
    .locals 10

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->A:LL1/w;

    if-eqz p0, :cond_4

    iget-boolean v0, p0, LL1/w;->n:Z

    sget-object v1, LL1/w;->y:Landroid/view/animation/Interpolator;

    const-wide/16 v2, 0x14d

    const/4 v4, 0x0

    iget-object v5, p0, LL1/w;->b:Landroid/view/ViewGroup;

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v6, p0, LL1/w;->n:Z

    new-instance v0, LL1/n;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, LL1/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LL1/w;->r:LL1/n;

    iput-object p0, v0, LL1/n;->h:LL1/w;

    invoke-virtual {v5, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, LL1/w;->r:LL1/n;

    iget v7, p0, LL1/w;->m:F

    iput v7, v0, LL1/n;->g:F

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, LL1/w;->r:LL1/n;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_0
    if-eqz p1, :cond_4

    iget-object v0, p0, LL1/w;->x:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, LL1/w;->o:LX1/f;

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-boolean v0, p0, LL1/w;->p:Z

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v7, p0, LL1/w;->o:LX1/f;

    invoke-virtual {v7, v0}, LX1/f;->i(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v0, 0x7f08032b

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v8, 0x7f1300f4

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object p1, p0, LL1/w;->c:LL1/a0;

    invoke-virtual {p1, v0}, LL1/a0;->c(Landroid/graphics/RectF;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {p1, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v8, v0, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iput v8, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v8, v0, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iput v8, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    iget-object v8, p0, LL1/w;->i:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v9, v8, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    invoke-virtual {v9, p1}, LL1/a0;->d(Landroid/graphics/PointF;)V

    invoke-virtual {v8, p1, v4, v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->g(Landroid/graphics/PointF;ZZ)V

    invoke-virtual {v8, v4, v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->b(ZZ)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f070215

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr p1, v8

    add-float/2addr v4, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v4, v8

    const/high16 v8, 0x3fa00000    # 1.25f

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v5, p1

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iput-boolean v6, p0, LL1/w;->p:Z

    iput-object v7, p0, LL1/w;->q:Landroid/widget/ImageView;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v6}, LL1/w;->b(Z)V

    :goto_2
    iget-object p0, p0, LL1/w;->o:LX1/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    return-void
.end method

.method public final g(Landroid/graphics/PointF;ZZ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start suggest interaction @ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LM1/b;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->a()V

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iget v1, v0, LL1/o;->g:I

    add-int/lit8 v4, v1, 0x1

    iput v4, v0, LL1/o;->g:I

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->n:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    sget-object p1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->j:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->c(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;Landroid/graphics/RectF;)LJ1/t;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Contents new rect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, LM1/b;->a:LM1/a;

    iget-boolean v1, v1, LM1/a;->a:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "AiAiSuggestUi"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LL1/a0;->k(Z)V

    new-instance v1, LL1/b0;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, LL1/b0;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;ILJ1/t;ZZ)V

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->j:LK1/a;

    invoke-virtual {v0, p1, p0, v1}, LL1/a0;->g(LJ1/t;LK1/a;LL1/Y;)V

    return-void
.end method

.method public onLongPressedTaskSnapshotSession(Ljava/lang/String;)V
    .locals 9

    const-string v0, "SuggestView Long Pressed - OverviewSessionId : %s, TaskSnapshotSessionId : %s, InteractionSessionId  : %s"

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->q:LL1/j0;

    iget-object v2, v1, LL1/j0;->a:Ljava/lang/String;

    iget-object v1, v1, LL1/j0;->b:Ljava/lang/String;

    filled-new-array {v2, v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LM1/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->q:LL1/j0;

    iget-object v1, v1, LL1/j0;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->j:LK1/a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->q:LL1/j0;

    iget-object v5, v4, LL1/j0;->a:Ljava/lang/String;

    iget-object v4, v4, LL1/j0;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, LL1/a0;->d:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    new-instance p0, LJ1/m;

    invoke-direct {p0}, LJ1/m;-><init>()V

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, LJ1/m;->b:J

    new-instance v7, LJ1/s;

    invoke-direct {v7}, LJ1/s;-><init>()V

    iput-object v5, v7, LJ1/s;->b:Ljava/lang/String;

    iput-object v4, v7, LJ1/s;->c:Ljava/lang/String;

    iput-object v7, p0, LJ1/m;->a:Ljava/lang/Object;

    sget-object p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$TaskSnapshotFeedback$TaskSnapshotInteraction;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$TaskSnapshotFeedback$TaskSnapshotInteraction;

    iput-object p0, v7, LJ1/s;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$TaskSnapshotFeedback$TaskSnapshotInteraction;

    if-nez v6, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, v7, LJ1/s;->d:Ljava/lang/String;

    iput-object p1, v7, LJ1/s;->e:Ljava/lang/String;

    new-instance p0, LJ1/n;

    invoke-direct {p0}, LJ1/n;-><init>()V

    const/4 p1, 0x0

    int-to-long v4, p1

    iput-wide v4, p0, LJ1/n;->b:J

    iput-object v1, p0, LJ1/n;->c:Ljava/lang/String;

    sget p1, LM1/c;->a:I

    iput-object v3, p0, LJ1/n;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p0}, LL1/a0;->i(Ljava/lang/String;LK1/a;LJ1/n;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
