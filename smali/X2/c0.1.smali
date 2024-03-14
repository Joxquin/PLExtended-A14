.class public abstract LX2/c0;
.super LX2/V;
.source "SourceFile"


# static fields
.field public static final a:LX2/w0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LX2/b0;

    invoke-direct {v0}, LX2/b0;-><init>()V

    new-instance v1, LX2/w0;

    invoke-direct {v1, v0}, LX2/w0;-><init>(Ljava/lang/Object;)V

    sput-object v1, LX2/c0;->a:LX2/w0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LX2/V;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public final hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public abstract i()I
.end method

.method public abstract j()Z
.end method

.method public k(Ljava/util/Map;)LX2/w0;
    .locals 0

    sget-object p0, LX2/c0;->a:LX2/w0;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "policy"

    invoke-virtual {p0}, LX2/c0;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LX2/c0;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v1, v2}, LO2/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "available"

    invoke-virtual {p0}, LX2/c0;->j()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, LO2/i;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
