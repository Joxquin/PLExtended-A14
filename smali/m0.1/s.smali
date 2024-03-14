.class public final Lm0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/n;
.implements Ln0/a;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Z

.field public final c:Lcom/airbnb/lottie/a;

.field public final d:Ln0/s;

.field public e:Z

.field public final f:Lm0/c;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm0/s;->a:Landroid/graphics/Path;

    new-instance v0, Lm0/c;

    invoke-direct {v0}, Lm0/c;-><init>()V

    iput-object v0, p0, Lm0/s;->f:Lm0/c;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p3, Lr0/p;->d:Z

    iput-boolean v0, p0, Lm0/s;->b:Z

    iput-object p1, p0, Lm0/s;->c:Lcom/airbnb/lottie/a;

    new-instance p1, Ln0/s;

    iget-object p3, p3, Lr0/p;->c:Lq0/h;

    iget-object p3, p3, Lq0/n;->a:Ljava/util/List;

    invoke-direct {p1, p3}, Ln0/s;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lm0/s;->d:Ln0/s;

    invoke-virtual {p2, p1}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {p1, p0}, Ln0/f;->a(Ln0/a;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm0/s;->e:Z

    iget-object p0, p0, Lm0/s;->c:Lcom/airbnb/lottie/a;

    invoke-virtual {p0}, Lcom/airbnb/lottie/a;->invalidateSelf()V

    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/d;

    instance-of v2, v1, Lm0/v;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lm0/v;

    iget-object v3, v2, Lm0/v;->c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    sget-object v4, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->d:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lm0/s;->f:Lm0/c;

    iget-object v1, v1, Lm0/c;->a:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p0}, Lm0/v;->d(Ln0/a;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lm0/t;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast v1, Lm0/t;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lm0/s;->d:Ln0/s;

    iput-object p2, p0, Ln0/s;->k:Ljava/util/List;

    return-void
.end method

.method public final g()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, Lm0/s;->e:Z

    iget-object v1, p0, Lm0/s;->a:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lm0/s;->b:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lm0/s;->e:Z

    return-object v1

    :cond_1
    iget-object v0, p0, Lm0/s;->d:Ln0/s;

    invoke-virtual {v0}, Ln0/f;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lm0/s;->f:Lm0/c;

    invoke-virtual {v0, v1}, Lm0/c;->a(Landroid/graphics/Path;)V

    iput-boolean v2, p0, Lm0/s;->e:Z

    return-object v1
.end method
