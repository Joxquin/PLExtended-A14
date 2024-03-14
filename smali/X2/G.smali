.class public final LX2/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LX2/F;

.field public final b:Z


# direct methods
.method public constructor <init>(LX2/F;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "decompressor"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, LX2/G;->a:LX2/F;

    iput-boolean p2, p0, LX2/G;->b:Z

    return-void
.end method
