.class public final Lcom/android/launcher3/util/RotationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static rotateRect(ILandroid/graphics/Rect;)V
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown rotation: "

    invoke-static {v0, p0}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    return-void
.end method

.method public static rotateSize(Landroid/graphics/Point;I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown rotation: "

    invoke-static {v0, p1}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget p1, p0, Landroid/graphics/Point;->y:I

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Point;->set(II)V

    :cond_2
    return-void
.end method
