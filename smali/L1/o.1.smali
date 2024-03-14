.class public final LL1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LL1/a0;

.field public final b:LL1/q;

.field public final c:Ljava/util/List;

.field public final d:Landroid/util/SparseArray;

.field public final e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:LJ1/e;

.field public k:LJ1/A;

.field public l:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

.field public m:LJ1/t;

.field public n:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Ljava/lang/String;LJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;LL1/a0;LL1/q;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LL1/o;->c:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LL1/o;->d:Landroid/util/SparseArray;

    const-string v0, "null_session_id"

    iput-object v0, p0, LL1/o;->h:Ljava/lang/String;

    iput-object v0, p0, LL1/o;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LL1/o;->n:Landroid/graphics/RectF;

    iput-object p1, p0, LL1/o;->e:Ljava/lang/String;

    iput-object p2, p0, LL1/o;->j:LJ1/e;

    iput-object p3, p0, LL1/o;->l:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;->entities()LJ1/A;

    move-result-object p1

    iput-object p1, p0, LL1/o;->k:LJ1/A;

    :cond_0
    iput-object p4, p0, LL1/o;->a:LL1/a0;

    iput-object p5, p0, LL1/o;->b:LL1/q;

    iput p6, p0, LL1/o;->f:I

    iget-object p1, p0, LL1/o;->k:LJ1/A;

    if-eqz p1, :cond_1

    iget-object p1, p1, LJ1/A;->a:Ljava/lang/String;

    sget p2, LM1/c;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LL1/o;->i:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static d(LJ1/y;Landroid/graphics/RectF;)V
    .locals 4

    iget-object v0, p0, LJ1/y;->a:LJ1/H;

    sget v1, LM1/c;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, LJ1/H;->a:F

    iget-object v1, p0, LJ1/y;->a:LJ1/H;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, LJ1/H;->b:F

    iget-object v2, p0, LJ1/y;->a:LJ1/H;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, LJ1/H;->c:F

    iget-object v3, p0, LJ1/y;->a:LJ1/H;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, LJ1/H;->a:F

    add-float/2addr v2, v3

    iget-object v3, p0, LJ1/y;->a:LJ1/H;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v3, LJ1/H;->d:F

    iget-object p0, p0, LJ1/y;->a:LJ1/H;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, LJ1/H;->b:F

    add-float/2addr v3, p0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public final a(ILJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;I)Z
    .locals 2

    invoke-virtual {p0, p1}, LL1/o;->i(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, LL1/o;->j:LJ1/e;

    iput-object v1, p0, LL1/o;->k:LJ1/A;

    iput-object v1, p0, LL1/o;->n:Landroid/graphics/RectF;

    iget-object p1, p0, LL1/o;->c:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, LL1/o;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iput-object p2, p0, LL1/o;->j:LJ1/e;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;->entities()LJ1/A;

    move-result-object p1

    if-eqz p1, :cond_0

    sget p1, LM1/c;->a:I

    invoke-virtual {p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;->entities()LJ1/A;

    move-result-object p1

    iget-object p1, p1, LJ1/A;->a:Ljava/lang/String;

    iput-object p1, p0, LL1/o;->i:Ljava/lang/String;

    :cond_0
    iput-object p3, p0, LL1/o;->l:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;

    invoke-virtual {p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;->entities()LJ1/A;

    move-result-object p1

    iput-object p1, p0, LL1/o;->k:LJ1/A;

    iput p4, p0, LL1/o;->f:I

    invoke-virtual {p0}, LL1/o;->b()V

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "--Error: token expired; new token = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .locals 5

    iget v0, p0, LL1/o;->f:I

    if-ltz v0, :cond_5

    iget-object v0, p0, LL1/o;->k:LJ1/A;

    if-eqz v0, :cond_5

    iget-object v0, p0, LL1/o;->j:LJ1/e;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, LL1/o;->e()LJ1/d;

    move-result-object v0

    iget-object v0, v0, LJ1/d;->a:Ljava/util/List;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sget v2, LM1/c;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ1/y;

    invoke-static {v2, v1}, LL1/o;->d(LJ1/y;Landroid/graphics/RectF;)V

    iget-object v3, p0, LL1/o;->a:LL1/a0;

    invoke-virtual {v3, v1}, LL1/a0;->c(Landroid/graphics/RectF;)V

    iget-object v3, p0, LL1/o;->d:Landroid/util/SparseArray;

    iget v4, v2, LJ1/y;->d:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    if-nez v4, :cond_1

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v2, v2, LJ1/y;->d:I

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :goto_1
    iget-object v2, p0, LL1/o;->n:Landroid/graphics/RectF;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, LL1/o;->n:Landroid/graphics/RectF;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LL1/o;->k:LJ1/A;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LJ1/A;->c:Ljava/util/List;

    sget v1, LM1/c;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ1/B;

    iget v2, v1, LJ1/B;->j:I

    iget v3, p0, LL1/o;->f:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, LL1/o;->c:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object p0, p0, LL1/o;->j:LJ1/e;

    sget v0, LM1/c;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LJ1/e;->c:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final e()LJ1/d;
    .locals 1

    invoke-virtual {p0}, LL1/o;->c()Ljava/util/List;

    move-result-object v0

    iget p0, p0, LL1/o;->f:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ1/d;

    return-object p0
.end method

.method public final f()LJ1/B;
    .locals 4

    invoke-virtual {p0}, LL1/o;->j()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, LL1/o;->f:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, LL1/o;->e()LJ1/d;

    move-result-object v0

    iget-object v0, v0, LJ1/d;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LL1/o;->e()LJ1/d;

    move-result-object v0

    iget-object v0, v0, LJ1/d;->b:Ljava/util/List;

    sget v1, LM1/c;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p0}, LL1/o;->e()LJ1/d;

    move-result-object v0

    iget-object v0, v0, LJ1/d;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, LL1/o;->e()LJ1/d;

    move-result-object v0

    iget-object v0, v0, LJ1/d;->b:Ljava/util/List;

    sget v1, LM1/c;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, LL1/o;->k:LJ1/A;

    if-eqz v0, :cond_4

    iget-object v1, v0, LJ1/A;->c:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LJ1/A;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ1/B;

    iget v2, v1, LJ1/B;->j:I

    iget v3, p0, LL1/o;->f:I

    if-ne v2, v3, :cond_3

    iget v2, v1, LJ1/B;->k:I

    if-nez v2, :cond_3

    return-object v1

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()Landroid/graphics/Rect;
    .locals 6

    invoke-virtual {p0}, LL1/o;->e()LJ1/d;

    move-result-object v0

    iget-object v0, v0, LJ1/d;->a:Ljava/util/List;

    sget v1, LM1/c;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ1/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, LL1/o;->e()LJ1/d;

    move-result-object p0

    iget-object p0, p0, LJ1/d;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ1/y;

    iget-object p0, p0, LJ1/y;->a:LJ1/H;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, LJ1/H;->a:F

    float-to-int v2, v1

    iget v3, p0, LJ1/H;->b:F

    float-to-int v4, v3

    iget v5, p0, LJ1/H;->c:F

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget p0, p0, LJ1/H;->d:F

    add-float/2addr v3, p0

    float-to-int p0, v3

    invoke-virtual {v0, v2, v4, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LL1/o;->a:LL1/a0;

    invoke-virtual {p0}, LL1/a0;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i(I)Z
    .locals 0

    iget p0, p0, LL1/o;->g:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, LL1/o;->j:LJ1/e;

    if-eqz v0, :cond_1

    iget-object p0, p0, LL1/o;->k:LJ1/A;

    if-eqz p0, :cond_1

    iget-object p0, v0, LJ1/e;->c:Ljava/util/List;

    if-eqz p0, :cond_1

    sget v0, LM1/c;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final k()Z
    .locals 4

    invoke-virtual {p0}, LL1/o;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, LL1/o;->f:I

    if-ltz v0, :cond_2

    invoke-virtual {p0}, LL1/o;->e()LJ1/d;

    move-result-object v0

    iget-object v0, v0, LJ1/d;->a:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, LL1/o;->e()LJ1/d;

    move-result-object v2

    iget-object v2, v2, LJ1/d;->a:Ljava/util/List;

    sget v3, LM1/c;->a:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, LL1/o;->e()LJ1/d;

    move-result-object v2

    iget-object v2, v2, LJ1/d;->a:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ1/y;

    iget-object v2, v2, LJ1/y;->c:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$ContentType;

    sget-object v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$ContentType;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$ContentType;

    if-ne v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method
