.class public final Lw1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic d:Lw1/d;


# direct methods
.method public constructor <init>(Lw1/d;)V
    .locals 0

    iput-object p1, p0, Lw1/a;->d:Lw1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    iget-object v0, p0, Lw1/a;->d:Lw1/d;

    iget-object v0, v0, Lw1/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne p1, v1, :cond_4

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v0, p0, Lw1/a;->d:Lw1/d;

    iget-object v0, v0, Lw1/d;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_4

    :cond_2
    :goto_0
    iget-object v0, p0, Lw1/a;->d:Lw1/d;

    iget-object v0, v0, Lw1/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/b;

    invoke-interface {v1, p1}, Lw1/b;->onRotationChanged(I)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lw1/a;->d:Lw1/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lw1/d;->i:Ljava/lang/Integer;

    :cond_4
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
