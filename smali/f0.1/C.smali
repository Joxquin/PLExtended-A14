.class public final Lf0/C;
.super Landroidx/recyclerview/widget/E0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final d:Lf0/F;

.field public final synthetic e:Lf0/E;


# direct methods
.method public constructor <init>(Lf0/E;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lf0/C;->e:Lf0/E;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/E0;-><init>(Landroid/view/View;)V

    instance-of p1, p2, Lf0/F;

    if-eqz p1, :cond_0

    check-cast p2, Lf0/F;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lf0/C;->d:Lf0/F;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lf0/C;->e:Lf0/E;

    iget-object v0, v0, Lf0/E;->i:Landroidx/slice/widget/SliceView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, v0, Landroidx/slice/widget/SliceView;->F:[I

    iget-object p0, p0, Lf0/C;->e:Lf0/E;

    iget-object p0, p0, Lf0/E;->i:Landroidx/slice/widget/SliceView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    :cond_0
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p0, p0, Lf0/C;->e:Lf0/E;

    iget-object p0, p0, Lf0/E;->j:Lf0/Q;

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    iget-object v0, p0, Lf0/Q;->p:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroidx/slice/widget/SliceView;->A:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_1

    iget-object v2, v0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lf0/j;->e(Landroid/content/Context;)Ld0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    iget-object p0, p0, Lf0/Q;->q:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lf0/Q;->q:Landroid/view/View;

    iget-object v2, p0, Lf0/Q;->w:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lf0/Q;->w:[I

    aget v2, v2, p1

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lf0/Q;->w:[I

    aget v3, v3, v1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lf0/Q;->q:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p0, p0, Lf0/Q;->q:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    if-eq p2, v1, :cond_4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    :cond_4
    iget-object p0, p0, Lf0/Q;->q:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_5
    :goto_2
    return p1
.end method
