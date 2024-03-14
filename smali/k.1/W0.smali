.class public final Lk/W0;
.super Le/a;
.source "SourceFile"


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Le/a;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lk/W0;->b:I

    const v0, 0x800013

    .line 5
    iput v0, p0, Le/a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lk/W0;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Le/a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lk/W0;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Le/a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lk/W0;->b:I

    .line 13
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 14
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 16
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method public constructor <init>(Le/a;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Le/a;-><init>(Le/a;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lk/W0;->b:I

    return-void
.end method

.method public constructor <init>(Lk/W0;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Le/a;-><init>(Le/a;)V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lk/W0;->b:I

    .line 8
    iget p1, p1, Lk/W0;->b:I

    iput p1, p0, Lk/W0;->b:I

    return-void
.end method
