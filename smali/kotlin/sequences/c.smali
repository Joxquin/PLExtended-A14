.class public final Lkotlin/sequences/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final d:Ljava/util/Iterator;

.field public e:I

.field public f:Ljava/lang/Object;

.field public final synthetic g:Lkotlin/sequences/d;


# direct methods
.method public constructor <init>(Lkotlin/sequences/d;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/c;->g:Lkotlin/sequences/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lkotlin/sequences/d;->a:Lkotlin/sequences/g;

    invoke-interface {p1}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/c;->d:Ljava/util/Iterator;

    const/4 p1, -0x1

    iput p1, p0, Lkotlin/sequences/c;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lkotlin/sequences/c;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlin/sequences/c;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkotlin/sequences/c;->g:Lkotlin/sequences/d;

    iget-object v1, v1, Lkotlin/sequences/d;->c:Lm3/l;

    invoke-interface {v1, v0}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lkotlin/sequences/c;->g:Lkotlin/sequences/d;

    iget-boolean v2, v2, Lkotlin/sequences/d;->b:Z

    if-ne v1, v2, :cond_0

    iput-object v0, p0, Lkotlin/sequences/c;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/sequences/c;->e:I

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/c;->e:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lkotlin/sequences/c;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/sequences/c;->a()V

    :cond_0
    iget p0, p0, Lkotlin/sequences/c;->e:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/sequences/c;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/sequences/c;->a()V

    :cond_0
    iget v0, p0, Lkotlin/sequences/c;->e:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlin/sequences/c;->f:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lkotlin/sequences/c;->f:Ljava/lang/Object;

    iput v1, p0, Lkotlin/sequences/c;->e:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
