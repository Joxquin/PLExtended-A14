.class public final Landroidx/constraintlayout/widget/s;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public d:Landroidx/constraintlayout/widget/q;


# virtual methods
.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance p0, Landroidx/constraintlayout/widget/r;

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/r;-><init>(I)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/r;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/widget/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Landroidx/constraintlayout/widget/d;

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/d;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    return-void
.end method
