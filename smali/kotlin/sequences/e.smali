.class public final Lkotlin/sequences/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lkotlin/sequences/f;


# direct methods
.method public constructor <init>(Lkotlin/sequences/f;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/e;->f:Lkotlin/sequences/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x2

    iput p1, p0, Lkotlin/sequences/e;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lkotlin/sequences/e;->e:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlin/sequences/e;->f:Lkotlin/sequences/f;

    iget-object v0, v0, Lkotlin/sequences/f;->a:Lm3/a;

    invoke-interface {v0}, Lm3/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlin/sequences/e;->f:Lkotlin/sequences/f;

    iget-object v0, v0, Lkotlin/sequences/f;->b:Lm3/l;

    iget-object v1, p0, Lkotlin/sequences/e;->d:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lkotlin/sequences/e;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lkotlin/sequences/e;->e:I

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lkotlin/sequences/e;->e:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/sequences/e;->a()V

    :cond_0
    iget p0, p0, Lkotlin/sequences/e;->e:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkotlin/sequences/e;->e:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/sequences/e;->a()V

    :cond_0
    iget v0, p0, Lkotlin/sequences/e;->e:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlin/sequences/e;->d:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lkotlin/sequences/e;->e:I

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
