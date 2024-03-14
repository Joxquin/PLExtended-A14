.class public final Lk/F0;
.super Lk/C0;
.source "SourceFile"

# interfaces
.implements Lk/D0;


# instance fields
.field public D:Lk/D0;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lk/C0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final c(Lj/o;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Lk/F0;->D:Lk/D0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lk/D0;->c(Lj/o;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public final j(Lj/o;Lj/r;)V
    .locals 0

    iget-object p0, p0, Lk/F0;->D:Lk/D0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lk/D0;->j(Lj/o;Lj/r;)V

    :cond_0
    return-void
.end method

.method public final p(Landroid/content/Context;Z)Lk/s0;
    .locals 1

    new-instance v0, Lk/E0;

    invoke-direct {v0, p1, p2}, Lk/E0;-><init>(Landroid/content/Context;Z)V

    iput-object p0, v0, Lk/E0;->r:Lk/D0;

    return-object v0
.end method
