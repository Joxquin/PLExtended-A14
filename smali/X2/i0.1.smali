.class public final LX2/i0;
.super LX2/n0;
.source "SourceFile"


# instance fields
.field public final e:LX2/j0;


# direct methods
.method public constructor <init>(Ljava/lang/String;LX2/j0;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, LX2/n0;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    const-string v0, "-bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {v1, v2, p1, v0}, LO2/m;->f(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "marshaller"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, LX2/i0;->e:LX2/j0;

    return-void
.end method


# virtual methods
.method public final b([B)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, LO2/e;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object p0, p0, LX2/i0;->e:LX2/j0;

    invoke-interface {p0, v0}, LX2/j0;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)[B
    .locals 0

    iget-object p0, p0, LX2/i0;->e:LX2/j0;

    invoke-interface {p0, p1}, LX2/j0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, LO2/e;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method
