.class public final Lq0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/m;


# instance fields
.field public final a:Lq0/b;

.field public final b:Lq0/b;


# direct methods
.method public constructor <init>(Lq0/b;Lq0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/i;->a:Lq0/b;

    iput-object p2, p0, Lq0/i;->b:Lq0/b;

    return-void
.end method


# virtual methods
.method public final a()Ln0/f;
    .locals 2

    new-instance v0, Ln0/t;

    iget-object v1, p0, Lq0/i;->a:Lq0/b;

    invoke-virtual {v1}, Lq0/b;->a()Ln0/f;

    move-result-object v1

    iget-object p0, p0, Lq0/i;->b:Lq0/b;

    invoke-virtual {p0}, Lq0/b;->a()Ln0/f;

    move-result-object p0

    check-cast v1, Ln0/j;

    check-cast p0, Ln0/j;

    invoke-direct {v0, v1, p0}, Ln0/t;-><init>(Ln0/j;Ln0/j;)V

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lq0/i;->a:Lq0/b;

    invoke-virtual {v0}, Lq0/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lq0/i;->b:Lq0/b;

    invoke-virtual {p0}, Lq0/n;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
