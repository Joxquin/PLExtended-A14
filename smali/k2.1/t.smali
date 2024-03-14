.class public Lk2/t;
.super Lz/c;
.source "SourceFile"


# instance fields
.field public a:Lk2/u;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk2/t;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lz/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lk2/t;->b:I

    return-void
.end method


# virtual methods
.method public h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lk2/t;->u(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Lk2/t;->a:Lk2/u;

    if-nez p1, :cond_0

    new-instance p1, Lk2/u;

    invoke-direct {p1, p2}, Lk2/u;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lk2/t;->a:Lk2/u;

    :cond_0
    iget-object p1, p0, Lk2/t;->a:Lk2/u;

    iget-object p2, p1, Lk2/u;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iput p3, p1, Lk2/u;->b:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Lk2/u;->c:I

    iget-object p1, p0, Lk2/t;->a:Lk2/u;

    invoke-virtual {p1}, Lk2/u;->a()V

    iget p1, p0, Lk2/t;->b:I

    if-eqz p1, :cond_1

    iget-object p2, p0, Lk2/t;->a:Lk2/u;

    invoke-virtual {p2, p1}, Lk2/u;->b(I)Z

    const/4 p1, 0x0

    iput p1, p0, Lk2/t;->b:I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final s()I
    .locals 0

    iget-object p0, p0, Lk2/t;->a:Lk2/u;

    if-eqz p0, :cond_0

    iget p0, p0, Lk2/u;->d:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public t()I
    .locals 0

    invoke-virtual {p0}, Lk2/t;->s()I

    move-result p0

    return p0
.end method

.method public u(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n(Landroid/view/View;I)V

    return-void
.end method
