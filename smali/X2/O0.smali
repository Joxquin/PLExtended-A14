.class public final LX2/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LX2/N0;

.field public final b:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(LX2/N0;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX2/O0;->a:LX2/N0;

    const-string p1, "future"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, LX2/O0;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LX2/O0;->a:LX2/N0;

    const/4 v1, 0x1

    iput-boolean v1, v0, LX2/N0;->e:Z

    iget-object p0, p0, LX2/O0;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method
