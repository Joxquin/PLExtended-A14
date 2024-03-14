.class public final LX2/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LX2/L0;

.field public final b:Ljava/lang/Object;

.field public final c:LX2/l;


# direct methods
.method public constructor <init>(LX2/L0;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "status"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, LX2/N;->a:LX2/L0;

    iput-object p2, p0, LX2/N;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LX2/N;->c:LX2/l;

    return-void
.end method
