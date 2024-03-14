.class public abstract LX2/B;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()LX2/C;
.end method

.method public abstract b(LX2/C;LX2/C;)V
.end method

.method public c(LX2/C;)LX2/C;
    .locals 0

    invoke-virtual {p0}, LX2/B;->a()LX2/C;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Deprecated. Do not call."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
