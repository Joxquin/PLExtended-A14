.class public final Lb3/b;
.super Lb3/e;
.source "SourceFile"


# instance fields
.field public final a:LX2/L0;


# direct methods
.method public constructor <init>(LX2/L0;)V
    .locals 1

    invoke-direct {p0}, Lb3/e;-><init>()V

    const-string v0, "status"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lb3/b;->a:LX2/L0;

    return-void
.end method


# virtual methods
.method public final e()LX2/W;
    .locals 1

    iget-object p0, p0, Lb3/b;->a:LX2/L0;

    invoke-virtual {p0}, LX2/L0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LX2/W;->e:LX2/W;

    goto :goto_0

    :cond_0
    invoke-static {p0}, LX2/W;->a(LX2/L0;)LX2/W;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final h(Lb3/e;)Z
    .locals 1

    instance-of v0, p1, Lb3/b;

    if-eqz v0, :cond_1

    check-cast p1, Lb3/b;

    iget-object v0, p1, Lb3/b;->a:LX2/L0;

    iget-object p0, p0, Lb3/b;->a:LX2/L0;

    invoke-static {p0, v0}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LX2/L0;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lb3/b;->a:LX2/L0;

    invoke-virtual {p0}, LX2/L0;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, LO2/i;

    const-class v1, Lb3/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO2/i;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    iget-object p0, p0, Lb3/b;->a:LX2/L0;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
