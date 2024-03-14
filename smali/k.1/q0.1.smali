.class public final Lk/q0;
.super Lg/a;
.source "SourceFile"


# instance fields
.field public e:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/q0;->e:Z

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lk/q0;->e:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lg/a;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final setHotspot(FF)V
    .locals 1

    iget-boolean v0, p0, Lk/q0;->e:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lg/a;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public final setHotspotBounds(IIII)V
    .locals 1

    iget-boolean v0, p0, Lk/q0;->e:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lg/a;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final setState([I)Z
    .locals 1

    iget-boolean v0, p0, Lk/q0;->e:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lg/a;->setState([I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    iget-boolean v0, p0, Lk/q0;->e:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lg/a;->setVisible(ZZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
