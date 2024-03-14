.class public final Lk/a1;
.super Landroidx/core/view/Q;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final synthetic b:I

.field public final synthetic c:Landroidx/appcompat/widget/b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/b;I)V
    .locals 0

    iput-object p1, p0, Lk/a1;->c:Landroidx/appcompat/widget/b;

    iput p2, p0, Lk/a1;->b:I

    invoke-direct {p0}, Landroidx/core/view/Q;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk/a1;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lk/a1;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/a1;->c:Landroidx/appcompat/widget/b;

    iget-object v0, v0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    iget p0, p0, Lk/a1;->b:I

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/a1;->a:Z

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object p0, p0, Lk/a1;->c:Landroidx/appcompat/widget/b;

    iget-object p0, p0, Landroidx/appcompat/widget/b;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
