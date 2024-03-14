.class public Lx2/x;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field public d:I


# virtual methods
.method public final d(IZ)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p2, :cond_0

    iput p1, p0, Lx2/x;->d:I

    :cond_0
    return-void
.end method
