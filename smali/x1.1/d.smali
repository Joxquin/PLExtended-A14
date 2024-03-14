.class public final Lx1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/b;


# instance fields
.field public final synthetic a:Lx1/e;


# direct methods
.method public constructor <init>(Lx1/e;)V
    .locals 0

    iput-object p1, p0, Lx1/d;->a:Lx1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRotationChanged(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object p0, p0, Lx1/d;->a:Lx1/e;

    iget-boolean v0, p0, Lx1/e;->g:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lx1/e;->g:Z

    iget-object p0, p0, Lx1/e;->f:Lx1/f;

    invoke-virtual {p0, p1}, Lx1/f;->setReadyToHandleTransition(Z)V

    :cond_2
    return-void
.end method
