.class public abstract LA0/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:J

.field public static final g:LA0/a;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/concurrent/Executor;

.field public d:LA0/u;

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->f:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    invoke-virtual {v0}, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->getNumber()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    sget-object v2, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->e:Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;

    invoke-virtual {v2}, Lcom/android/app/viewcapture/data/ExportedData$MagicNumber;->getNumber()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    sput-wide v0, LA0/x;->f:J

    new-instance v0, LA0/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, LA0/a;-><init>(Landroid/os/Looper;)V

    sput-object v0, LA0/x;->g:LA0/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LA0/x;->b:Ljava/util/List;

    new-instance v0, LA0/u;

    invoke-direct {v0}, LA0/u;-><init>()V

    iput-object v0, p0, LA0/x;->d:LA0/u;

    const/4 v0, 0x1

    iput-boolean v0, p0, LA0/x;->e:Z

    const/16 v0, 0x7d0

    iput v0, p0, LA0/x;->a:I

    iput-object p1, p0, LA0/x;->c:Ljava/util/concurrent/Executor;

    new-instance v0, LA0/j;

    invoke-direct {v0, p0}, LA0/j;-><init>(LA0/x;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;)LA0/l;
    .locals 1

    new-instance v0, LA0/w;

    invoke-direct {v0, p0, p1, p2}, LA0/w;-><init>(LA0/x;Landroid/view/View;Ljava/lang/String;)V

    iget-boolean p1, p0, LA0/x;->e:Z

    if-eqz p1, :cond_0

    new-instance p1, LA0/k;

    invoke-direct {p1, v0}, LA0/k;-><init>(LA0/w;)V

    sget-object p2, LA0/x;->g:LA0/a;

    invoke-virtual {p2, p1}, LA0/a;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, LA0/x;->b:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LA0/l;

    invoke-direct {p1, p0, v0}, LA0/l;-><init>(LA0/x;LA0/w;)V

    return-object p1
.end method

.method public getExportedData(Landroid/content/Context;)LB0/b;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, LB0/b;->g()LB0/a;

    move-result-object v1

    sget-wide v2, LA0/x;->f:J

    invoke-virtual {v1, v2, v3}, LB0/a;->c(J)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LB0/a;->d(Ljava/lang/String;)V

    new-instance v2, LA0/m;

    invoke-direct {v2}, LA0/m;-><init>()V

    new-instance v3, LA0/s;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v3, p1}, LA0/s;-><init>(Landroid/content/res/Resources;)V

    new-instance p1, LA0/o;

    invoke-direct {p1, p0, v2}, LA0/o;-><init>(LA0/x;LA0/m;)V

    sget-object v2, LA0/x;->g:LA0/a;

    invoke-static {p1, v2}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance v2, LA0/p;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, LA0/p;-><init>(LA0/s;Ljava/util/ArrayList;I)V

    iget-object p0, p0, LA0/x;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v2, p0}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-virtual {v1, p0}, LB0/a;->b(Ljava/lang/Iterable;)V

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, LA0/r;

    invoke-direct {p1}, LA0/r;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, LB0/a;->a(Ljava/lang/Iterable;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr p0, v2

    invoke-virtual {v1, p0, p1}, LB0/a;->e(J)V

    invoke-virtual {v1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, LB0/b;

    return-object p0
.end method

.method public stopCapture(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, LA0/x;->b:Ljava/util/List;

    new-instance v0, LA0/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, LA0/n;-><init>(ILjava/lang/Object;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
