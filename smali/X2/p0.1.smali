.class public final LX2/p0;
.super LX2/n0;
.source "SourceFile"


# instance fields
.field public final e:LX2/q0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLX2/q0;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, LX2/n0;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    const-string p2, "-bin"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {v0, v1, p1, p2}, LO2/m;->f(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, LX2/p0;->e:LX2/q0;

    return-void
.end method


# virtual methods
.method public final b([B)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LX2/p0;->e:LX2/q0;

    invoke-interface {p0, p1}, LX2/q0;->b([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)[B
    .locals 0

    iget-object p0, p0, LX2/p0;->e:LX2/q0;

    invoke-interface {p0, p1}, LX2/q0;->a(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method
