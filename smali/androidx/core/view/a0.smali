.class public Landroidx/core/view/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/core/view/c0;


# instance fields
.field public final a:Landroidx/core/view/c0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/T;

    invoke-direct {v0}, Landroidx/core/view/T;-><init>()V

    invoke-virtual {v0}, Landroidx/core/view/S;->b()Landroidx/core/view/c0;

    move-result-object v0

    iget-object v0, v0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-virtual {v0}, Landroidx/core/view/a0;->a()Landroidx/core/view/c0;

    move-result-object v0

    iget-object v0, v0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-virtual {v0}, Landroidx/core/view/a0;->b()Landroidx/core/view/c0;

    move-result-object v0

    iget-object v0, v0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-virtual {v0}, Landroidx/core/view/a0;->c()Landroidx/core/view/c0;

    move-result-object v0

    sput-object v0, Landroidx/core/view/a0;->b:Landroidx/core/view/c0;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a0;->a:Landroidx/core/view/c0;

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/c0;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a0;->a:Landroidx/core/view/c0;

    return-object p0
.end method

.method public b()Landroidx/core/view/c0;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a0;->a:Landroidx/core/view/c0;

    return-object p0
.end method

.method public c()Landroidx/core/view/c0;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a0;->a:Landroidx/core/view/c0;

    return-object p0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public e()Landroidx/core/view/d;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/core/view/a0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/core/view/a0;

    invoke-virtual {p0}, Landroidx/core/view/a0;->n()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/a0;->n()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/a0;->m()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/a0;->m()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/a0;->j()LE/b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/a0;->j()LE/b;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/a0;->h()LE/b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/a0;->h()LE/b;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/a0;->e()Landroidx/core/view/d;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/core/view/a0;->e()Landroidx/core/view/d;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f(I)LE/b;
    .locals 0

    sget-object p0, LE/b;->e:LE/b;

    return-object p0
.end method

.method public g()LE/b;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/view/a0;->j()LE/b;

    move-result-object p0

    return-object p0
.end method

.method public h()LE/b;
    .locals 0

    sget-object p0, LE/b;->e:LE/b;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Landroidx/core/view/a0;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/view/a0;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/view/a0;->j()LE/b;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/core/view/a0;->h()LE/b;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/core/view/a0;->e()Landroidx/core/view/d;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public i()LE/b;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/view/a0;->j()LE/b;

    move-result-object p0

    return-object p0
.end method

.method public j()LE/b;
    .locals 0

    sget-object p0, LE/b;->e:LE/b;

    return-object p0
.end method

.method public k()LE/b;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/view/a0;->j()LE/b;

    move-result-object p0

    return-object p0
.end method

.method public l(IIII)Landroidx/core/view/c0;
    .locals 0

    sget-object p0, Landroidx/core/view/a0;->b:Landroidx/core/view/c0;

    return-object p0
.end method

.method public m()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public p([LE/b;)V
    .locals 0

    return-void
.end method

.method public q(Landroidx/core/view/c0;)V
    .locals 0

    return-void
.end method
