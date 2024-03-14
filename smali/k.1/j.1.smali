.class public final Lk/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/B;


# instance fields
.field public final synthetic d:Lk/n;


# direct methods
.method public constructor <init>(Lk/n;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    iput-object p1, p0, Lk/j;->d:Lk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :cond_0
    iput-object p1, p0, Lk/j;->d:Lk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj/o;Z)V
    .locals 2

    instance-of v0, p1, Lj/L;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj/o;->k()Lj/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj/o;->c(Z)V

    :cond_0
    iget-object p0, p0, Lk/j;->d:Lk/n;

    iget-object p0, p0, Lk/n;->h:Lj/B;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lj/B;->a(Lj/o;Z)V

    :cond_1
    return-void
.end method

.method public final c(Lj/o;)Z
    .locals 2

    iget-object p0, p0, Lk/j;->d:Lk/n;

    iget-object v0, p0, Lk/n;->f:Lj/o;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lj/L;

    iget-object v0, v0, Lj/L;->B:Lj/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lk/n;->h:Lj/B;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lj/B;->c(Lj/o;)Z

    move-result v1

    :cond_1
    return v1
.end method
