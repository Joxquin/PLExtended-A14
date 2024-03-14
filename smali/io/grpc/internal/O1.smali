.class public final Lio/grpc/internal/O1;
.super LX2/c0;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LX2/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(LX2/V;)LX2/a0;
    .locals 0

    new-instance p0, Lio/grpc/internal/N1;

    invoke-direct {p0, p1}, Lio/grpc/internal/N1;-><init>(LX2/V;)V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    const-string p0, "pick_first"

    return-object p0
.end method

.method public i()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public j()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public k(Ljava/util/Map;)LX2/w0;
    .locals 0

    new-instance p0, LX2/w0;

    const-string p1, "no service config"

    invoke-direct {p0, p1}, LX2/w0;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
