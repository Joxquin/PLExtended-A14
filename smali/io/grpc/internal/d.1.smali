.class public final Lio/grpc/internal/d;
.super LX2/V;
.source "SourceFile"


# instance fields
.field public final a:LX2/L0;


# direct methods
.method public constructor <init>(LX2/L0;)V
    .locals 0

    invoke-direct {p0}, LX2/V;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/d;->a:LX2/L0;

    return-void
.end method


# virtual methods
.method public final e()LX2/W;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/d;->a:LX2/L0;

    invoke-static {p0}, LX2/W;->a(LX2/L0;)LX2/W;

    move-result-object p0

    return-object p0
.end method
