.class public final Ln0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/c;


# instance fields
.field public final a:Lx0/a;

.field public b:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Ln0/e;->b:F

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx0/a;

    iput-object p1, p0, Ln0/e;->a:Lx0/a;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget-object p0, p0, Ln0/e;->a:Lx0/a;

    invoke-virtual {p0}, Lx0/a;->a()F

    move-result p0

    return p0
.end method

.method public final b(F)Z
    .locals 1

    iget v0, p0, Ln0/e;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iput p1, p0, Ln0/e;->b:F

    const/4 p0, 0x0

    return p0
.end method

.method public final c()F
    .locals 0

    iget-object p0, p0, Ln0/e;->a:Lx0/a;

    invoke-virtual {p0}, Lx0/a;->b()F

    move-result p0

    return p0
.end method

.method public final d()Lx0/a;
    .locals 0

    iget-object p0, p0, Ln0/e;->a:Lx0/a;

    return-object p0
.end method

.method public final e(F)Z
    .locals 0

    iget-object p0, p0, Ln0/e;->a:Lx0/a;

    invoke-virtual {p0}, Lx0/a;->c()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
