.class public final LX2/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:LX2/F0;

.field public final c:LX2/P0;

.field public final d:LX2/x0;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:LX2/i;

.field public final g:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;LX2/F0;LX2/P0;LX2/x0;Ljava/util/concurrent/ScheduledExecutorService;LX2/i;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "defaultPort not set"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LX2/v0;->a:I

    const-string p1, "proxyDetector not set"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, LX2/v0;->b:LX2/F0;

    const-string p1, "syncContext not set"

    invoke-static {p3, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, LX2/v0;->c:LX2/P0;

    const-string p1, "serviceConfigParser not set"

    invoke-static {p4, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p4, p0, LX2/v0;->d:LX2/x0;

    iput-object p5, p0, LX2/v0;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, LX2/v0;->f:LX2/i;

    iput-object p7, p0, LX2/v0;->g:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    iget v1, p0, LX2/v0;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "defaultPort"

    invoke-virtual {v0, v1, v2}, LO2/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "proxyDetector"

    iget-object v2, p0, LX2/v0;->b:LX2/F0;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "syncContext"

    iget-object v2, p0, LX2/v0;->c:LX2/P0;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "serviceConfigParser"

    iget-object v2, p0, LX2/v0;->d:LX2/x0;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scheduledExecutorService"

    iget-object v2, p0, LX2/v0;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "channelLogger"

    iget-object v2, p0, LX2/v0;->f:LX2/i;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "executor"

    iget-object p0, p0, LX2/v0;->g:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
