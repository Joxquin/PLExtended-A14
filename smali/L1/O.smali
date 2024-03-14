.class public final LL1/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:LL1/i;

.field public final d:LK1/a;

.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Landroid/os/Handler;Lcom/android/launcher3/util/LooperExecutor;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/O;->e:Landroid/content/Context;

    iput-object p2, p0, LL1/O;->a:Landroid/content/Context;

    iput-object p3, p0, LL1/O;->b:Landroid/os/Handler;

    new-instance p2, LL1/i;

    invoke-direct {p2, p1, p4, p5, p6}, LL1/i;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/LooperExecutor;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, LL1/O;->c:LL1/i;

    new-instance p1, LK1/a;

    invoke-direct {p1}, LK1/a;-><init>()V

    iput-object p1, p0, LL1/O;->d:LK1/a;

    return-void
.end method


# virtual methods
.method public reportMetricsToService(Ljava/lang/String;LJ1/n;LL1/P;)V
    .locals 2

    iget-object v0, p2, LJ1/n;->a:Ljava/util/List;

    sget v1, LM1/c;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, LL1/L;

    invoke-direct {v0, p0, p2}, LL1/L;-><init>(LL1/O;LJ1/n;)V

    iget-object p0, p0, LL1/O;->c:LL1/i;

    invoke-virtual {p0, p2, p3, p1, v0}, LL1/i;->b(LJ1/n;LL1/P;Ljava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method
