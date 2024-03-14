.class public final Lm2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroidx/appcompat/widget/ActionMenuView;

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Lm2/f;


# direct methods
.method public constructor <init>(Lm2/f;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    iput-object p1, p0, Lm2/a;->g:Lm2/f;

    iput-object p2, p0, Lm2/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Lm2/a;->e:I

    iput-boolean p4, p0, Lm2/a;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lm2/a;->d:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lm2/a;->g:Lm2/f;

    iget v2, p0, Lm2/a;->e:I

    iget-boolean p0, p0, Lm2/a;->f:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_7

    if-nez p0, :cond_0

    goto :goto_5

    :cond_0
    invoke-static {v1}, Lx2/w;->a(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    move v5, v4

    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Lk/W0;

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lk/W0;

    iget v7, v7, Le/a;->a:I

    const v8, 0x800007

    and-int/2addr v7, v8

    const v8, 0x800003

    if-ne v7, v8, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    if-eqz v7, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result p0

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p0

    :goto_4
    add-int/2addr p0, v4

    sub-int v4, v2, p0

    :cond_7
    :goto_5
    int-to-float p0, v4

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    return-void
.end method
