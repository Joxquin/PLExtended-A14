.class public final LL1/K;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field public d:LL1/c0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    return-void
.end method


# virtual methods
.method public final onSelectionChanged(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    iget-object v0, p0, LL1/K;->d:LL1/c0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eq p1, p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iget-object p0, p0, LL1/K;->d:LL1/c0;

    invoke-virtual {p0, v0}, LL1/c0;->a(Landroid/graphics/Path;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, LL1/K;->d:LL1/c0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LL1/c0;->a(Landroid/graphics/Path;)V

    :goto_1
    return-void
.end method
