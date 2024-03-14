.class public final Lio/grpc/internal/e0;
.super LX2/B0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LX2/B0;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "dns"

    return-object p0
.end method

.method public final c(Ljava/net/URI;LX2/v0;)LX2/A0;
    .locals 7

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "dns"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "targetPath"

    invoke-static {p0, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "the path component (%s) of the target (%s) must start with \'/\'"

    invoke-static {v0, v1, p0, p1}, LO2/m;->f(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance p0, Lio/grpc/internal/d0;

    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    sget-object v4, Lio/grpc/internal/r0;->k:Lio/grpc/internal/n0;

    new-instance v5, LO2/o;

    invoke-direct {v5}, LO2/o;-><init>()V

    const-class p1, Lio/grpc/internal/e0;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "android.app.Application"

    invoke-static {v3, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v0

    goto :goto_0

    :catch_0
    move v6, v1

    :goto_0
    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/internal/d0;-><init>(Ljava/lang/String;LX2/v0;Lio/grpc/internal/n0;LO2/o;Z)V

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public g()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method
