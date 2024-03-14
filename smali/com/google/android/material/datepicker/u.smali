.class public final Lcom/google/android/material/datepicker/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/r;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(ILandroid/view/View;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/datepicker/u;->d:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/u;->e:Landroid/view/View;

    iput p3, p0, Lcom/google/android/material/datepicker/u;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroidx/core/view/c0;)Landroidx/core/view/c0;
    .locals 3

    iget-object p1, p2, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroidx/core/view/a0;->f(I)LE/b;

    move-result-object p1

    iget p1, p1, LE/b;->b:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->e:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/datepicker/u;->d:I

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    add-int/2addr v1, p1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget p0, p0, Lcom/google/android/material/datepicker/u;->f:I

    add-int/2addr p0, p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
