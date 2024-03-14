.class public final LW1/w;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "SourceFile"


# instance fields
.field public d:I

.field public final e:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput p1, p0, LW1/w;->d:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LW1/w;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, LW1/w;->e:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, LW1/w;->d:I

    add-int/2addr v1, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v1, v3, v4, v0}, Landroid/graphics/drawable/DrawableWrapper;->setBounds(IIII)V

    return-void
.end method

.method public final setBounds(IIII)V
    .locals 1

    iget-object v0, p0, LW1/w;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, LW1/w;->a()V

    return-void
.end method
