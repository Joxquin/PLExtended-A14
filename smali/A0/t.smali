.class public final LA0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Class;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:I

.field public r:Z

.field public s:Z

.field public t:LA0/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LA0/t;->c:I

    return-void
.end method


# virtual methods
.method public final a(LA0/s;Ljava/util/ArrayList;LB0/e;)LA0/t;
    .locals 5

    iget-object v0, p0, LA0/t;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, LA0/t;->a:Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p3, v0}, LB0/e;->c(I)V

    iget v0, p0, LA0/t;->b:I

    invoke-virtual {p3, v0}, LB0/e;->f(I)V

    iget v0, p0, LA0/t;->d:I

    iget-object v1, p1, LA0/s;->b:Landroid/content/res/Resources;

    iget-object v2, p1, LA0/s;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    if-ltz v0, :cond_1

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "id/0x"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "NO_ID"

    :goto_0
    move-object v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {p3, v3}, LB0/e;->h(Ljava/lang/String;)V

    iget v0, p0, LA0/t;->e:I

    invoke-virtual {p3, v0}, LB0/e;->i(I)V

    iget v0, p0, LA0/t;->f:I

    invoke-virtual {p3, v0}, LB0/e;->n(I)V

    iget v0, p0, LA0/t;->g:I

    iget v1, p0, LA0/t;->e:I

    sub-int/2addr v0, v1

    invoke-virtual {p3, v0}, LB0/e;->r(I)V

    iget v0, p0, LA0/t;->h:I

    iget v1, p0, LA0/t;->f:I

    sub-int/2addr v0, v1

    invoke-virtual {p3, v0}, LB0/e;->g(I)V

    iget v0, p0, LA0/t;->k:F

    invoke-virtual {p3, v0}, LB0/e;->o(F)V

    iget v0, p0, LA0/t;->l:F

    invoke-virtual {p3, v0}, LB0/e;->p(F)V

    iget v0, p0, LA0/t;->i:I

    invoke-virtual {p3, v0}, LB0/e;->l(I)V

    iget v0, p0, LA0/t;->j:I

    invoke-virtual {p3, v0}, LB0/e;->m(I)V

    iget v0, p0, LA0/t;->m:F

    invoke-virtual {p3, v0}, LB0/e;->j(F)V

    iget v0, p0, LA0/t;->n:F

    invoke-virtual {p3, v0}, LB0/e;->k(F)V

    iget v0, p0, LA0/t;->o:F

    invoke-virtual {p3, v0}, LB0/e;->b(F)V

    iget v0, p0, LA0/t;->q:I

    invoke-virtual {p3, v0}, LB0/e;->q(I)V

    iget-boolean v0, p0, LA0/t;->r:Z

    invoke-virtual {p3, v0}, LB0/e;->s(Z)V

    iget v0, p0, LA0/t;->p:F

    invoke-virtual {p3, v0}, LB0/e;->e(F)V

    iget-boolean v0, p0, LA0/t;->s:Z

    invoke-virtual {p3, v0}, LB0/e;->d(Z)V

    iget-object v0, p0, LA0/t;->t:LA0/t;

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, LA0/t;->c:I

    if-ge v1, v2, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, LB0/f;->u()LB0/e;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v2}, LA0/t;->a(LA0/s;Ljava/util/ArrayList;LB0/e;)LA0/t;

    move-result-object v0

    invoke-virtual {p3, v2}, LB0/e;->a(LB0/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method
