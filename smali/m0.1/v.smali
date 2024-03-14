.class public final Lm0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/d;
.implements Ln0/a;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/List;

.field public final c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field public final d:Ln0/j;

.field public final e:Ln0/j;

.field public final f:Ln0/j;


# direct methods
.method public constructor <init>(Ls0/b;Lr0/r;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm0/v;->b:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p2, Lr0/r;->e:Z

    iput-boolean v0, p0, Lm0/v;->a:Z

    iget-object v0, p2, Lr0/r;->a:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    iput-object v0, p0, Lm0/v;->c:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    iget-object v0, p2, Lr0/r;->b:Lq0/b;

    invoke-virtual {v0}, Lq0/b;->a()Ln0/f;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ln0/j;

    iput-object v1, p0, Lm0/v;->d:Ln0/j;

    iget-object v1, p2, Lr0/r;->c:Lq0/b;

    invoke-virtual {v1}, Lq0/b;->a()Ln0/f;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ln0/j;

    iput-object v2, p0, Lm0/v;->e:Ln0/j;

    iget-object p2, p2, Lr0/r;->d:Lq0/b;

    invoke-virtual {p2}, Lq0/b;->a()Ln0/f;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ln0/j;

    iput-object v2, p0, Lm0/v;->f:Ln0/j;

    invoke-virtual {p1, v0}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {p1, v1}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {p1, p2}, Ls0/b;->d(Ln0/f;)V

    invoke-virtual {v0, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {v1, p0}, Ln0/f;->a(Ln0/a;)V

    invoke-virtual {p2, p0}, Ln0/f;->a(Ln0/a;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lm0/v;->b:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/a;

    invoke-interface {v1}, Ln0/a;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final d(Ln0/a;)V
    .locals 0

    iget-object p0, p0, Lm0/v;->b:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
