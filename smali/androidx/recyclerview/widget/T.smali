.class public abstract Landroidx/recyclerview/widget/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/recyclerview/widget/l0;

.field public b:I

.field public final c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/l0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/T;->b:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/T;->c:Landroid/graphics/Rect;

    iput-object p1, p0, Landroidx/recyclerview/widget/T;->a:Landroidx/recyclerview/widget/l0;

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/l0;I)Landroidx/recyclerview/widget/S;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/S;

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/S;-><init>(Landroidx/recyclerview/widget/l0;I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Landroidx/recyclerview/widget/S;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/S;-><init>(Landroidx/recyclerview/widget/l0;I)V

    return-object p1
.end method


# virtual methods
.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public final j()I
    .locals 2

    const/high16 v0, -0x80000000

    iget v1, p0, Landroidx/recyclerview/widget/T;->b:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/T;->i()I

    move-result v0

    iget p0, p0, Landroidx/recyclerview/widget/T;->b:I

    sub-int p0, v0, p0

    :goto_0
    return p0
.end method

.method public abstract k(Landroid/view/View;)I
.end method

.method public abstract l(Landroid/view/View;)I
.end method

.method public abstract m(I)V
.end method
