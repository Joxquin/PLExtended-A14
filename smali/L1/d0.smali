.class public final synthetic LL1/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/k0;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

.field public final synthetic b:LL1/o;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;LL1/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/d0;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iput-object p2, p0, LL1/d0;->b:LL1/o;

    return-void
.end method


# virtual methods
.method public final a(IIIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    iget-object v5, v0, LL1/d0;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LL1/d0;->b:LL1/o;

    iget-object v6, v0, LL1/o;->j:LJ1/e;

    if-eqz v6, :cond_5

    iget-object v6, v0, LL1/o;->c:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_5

    :cond_0
    iget-object v7, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iget-object v7, v7, LL1/o;->j:LJ1/e;

    sget v8, LM1/c;->a:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, LJ1/e;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->q:LL1/j0;

    iget-object v8, v8, LL1/j0;->a:Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v0, LL1/o;->m:LJ1/t;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LJ1/B;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LJ1/B;

    iget-boolean v6, v6, LJ1/B;->l:Z

    new-instance v13, LJ1/q;

    invoke-direct {v13}, LJ1/q;-><init>()V

    const/4 v14, 0x1

    move/from16 v15, p4

    if-ne v15, v14, :cond_1

    if-nez v6, :cond_1

    move v15, v14

    goto :goto_0

    :cond_1
    move v15, v11

    :goto_0
    iput-boolean v15, v13, LJ1/q;->b:Z

    move/from16 v15, p1

    if-ne v15, v14, :cond_2

    if-eqz v6, :cond_2

    move v6, v14

    goto :goto_1

    :cond_2
    move v6, v11

    :goto_1
    iput-boolean v6, v13, LJ1/q;->a:Z

    iput-boolean v14, v13, LJ1/q;->c:Z

    iput v1, v13, LJ1/q;->d:I

    iput v2, v13, LJ1/q;->e:I

    iput v3, v13, LJ1/q;->f:I

    iput v4, v13, LJ1/q;->g:I

    new-instance v1, LJ1/m;

    invoke-direct {v1}, LJ1/m;-><init>()V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_3

    iput-object v10, v1, LJ1/m;->c:LJ1/t;

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, LJ1/m;->b:J

    new-instance v2, LJ1/r;

    invoke-direct {v2}, LJ1/r;-><init>()V

    invoke-static {v12, v2}, LL1/t;->a(LJ1/B;LJ1/r;)V

    iput-object v2, v1, LJ1/m;->a:Ljava/lang/Object;

    invoke-virtual {v0}, LL1/o;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    :goto_2
    iput-object v0, v2, LJ1/r;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    iput-object v12, v2, LJ1/r;->b:LJ1/B;

    iput-object v13, v2, LJ1/r;->c:LJ1/q;

    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    iput-object v0, v2, LJ1/r;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    iget v0, v12, LJ1/B;->m:I

    iput v0, v2, LJ1/r;->e:I

    new-instance v0, LJ1/n;

    invoke-direct {v0}, LJ1/n;-><init>()V

    int-to-long v1, v11

    iput-wide v1, v0, LJ1/n;->b:J

    iput-object v8, v0, LJ1/n;->c:Ljava/lang/String;

    iput-object v9, v0, LJ1/n;->a:Ljava/util/List;

    iget-object v1, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    iget-object v2, v5, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->j:LK1/a;

    invoke-virtual {v1, v7, v2, v0}, LL1/a0;->i(Ljava/lang/String;LK1/a;LJ1/n;)V

    :cond_5
    return-void
.end method
