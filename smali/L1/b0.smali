.class public final synthetic LL1/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/Y;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

.field public final synthetic b:I

.field public final synthetic c:LJ1/t;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;ILJ1/t;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/b0;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iput p2, p0, LL1/b0;->b:I

    iput-object p3, p0, LL1/b0;->c:LJ1/t;

    iput-boolean p4, p0, LL1/b0;->d:Z

    iput-boolean p5, p0, LL1/b0;->e:Z

    return-void
.end method


# virtual methods
.method public final a(LJ1/e;)V
    .locals 10

    iget-object v0, p0, LL1/b0;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget v1, p0, LL1/b0;->b:I

    iget-object v8, p0, LL1/b0;->c:LJ1/t;

    iget-boolean v2, p0, LL1/b0;->d:Z

    iget-boolean p0, p0, LL1/b0;->e:Z

    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    invoke-virtual {v3, v1}, LL1/o;->i(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iput-object v8, v3, LL1/o;->m:LJ1/t;

    iget-object v9, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    iget-object v5, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->j:LK1/a;

    new-instance v6, LL1/h0;

    invoke-direct {v6, v0, v1, v2, p0}, LL1/h0;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;IZZ)V

    monitor-enter v9

    const/4 v7, 0x1

    move-object v2, v9

    move-object v3, p1

    move-object v4, v8

    :try_start_0
    invoke-virtual/range {v2 .. v7}, LL1/a0;->f(LJ1/e;LJ1/t;LK1/a;LL1/Z;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    if-eqz p1, :cond_2

    if-eqz v8, :cond_2

    iget-object p0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->h:LL1/a0;

    sget v1, LM1/c;->a:I

    iget-object p1, p1, LJ1/e;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->j:LK1/a;

    iget-object v2, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->q:LL1/j0;

    iget-object v2, v2, LL1/j0;->a:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    new-instance v4, LJ1/m;

    invoke-direct {v4}, LJ1/m;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v8, v4, LJ1/m;->c:LJ1/t;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, LJ1/m;->b:J

    new-instance v5, LJ1/r;

    invoke-direct {v5}, LJ1/r;-><init>()V

    iput-object v5, v4, LJ1/m;->a:Ljava/lang/Object;

    invoke-virtual {v0}, LL1/o;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    :goto_0
    iput-object v0, v5, LJ1/r;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    iput-object v0, v5, LJ1/r;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    new-instance v0, LJ1/n;

    invoke-direct {v0}, LJ1/n;-><init>()V

    const/4 v4, 0x0

    int-to-long v4, v4

    iput-wide v4, v0, LJ1/n;->b:J

    iput-object v2, v0, LJ1/n;->c:Ljava/lang/String;

    iput-object v3, v0, LJ1/n;->a:Ljava/util/List;

    invoke-virtual {p0, p1, v1, v0}, LL1/a0;->i(Ljava/lang/String;LK1/a;LJ1/n;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v9

    throw p0
.end method
