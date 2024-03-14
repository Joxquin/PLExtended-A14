.class public final Lf3/d;
.super Lf3/f;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;I)V
    .locals 2

    iput p2, p0, Lf3/d;->g:I

    const/4 v0, 0x1

    const-string v1, "map"

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lf3/f;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-void

    :cond_0
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lf3/f;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-void

    :cond_1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lf3/f;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lf3/d;->g:I

    iget-object v1, p0, Lf3/f;->d:Lkotlin/collections/builders/MapBuilder;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lf3/f;->e:I

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->c(Lkotlin/collections/builders/MapBuilder;)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Lf3/f;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lf3/f;->e:I

    iput v0, p0, Lf3/f;->f:I

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->b(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lf3/f;->f:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lf3/f;->a()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    iget v0, p0, Lf3/f;->e:I

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->c(Lkotlin/collections/builders/MapBuilder;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p0, Lf3/f;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lf3/f;->e:I

    iput v0, p0, Lf3/f;->f:I

    new-instance v2, Lf3/e;

    invoke-direct {v2, v1, v0}, Lf3/e;-><init>(Lkotlin/collections/builders/MapBuilder;I)V

    invoke-virtual {p0}, Lf3/f;->a()V

    return-object v2

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :goto_0
    iget v0, p0, Lf3/f;->e:I

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->c(Lkotlin/collections/builders/MapBuilder;)I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v0, p0, Lf3/f;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lf3/f;->e:I

    iput v0, p0, Lf3/f;->f:I

    invoke-static {v1}, Lkotlin/collections/builders/MapBuilder;->e(Lkotlin/collections/builders/MapBuilder;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget v1, p0, Lf3/f;->f:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lf3/f;->a()V

    return-object v0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
