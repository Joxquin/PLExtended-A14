.class public final LR2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:Ljava/util/concurrent/Future;

.field public final e:LR2/i;


# direct methods
.method public constructor <init>(La3/c;LR2/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR2/j;->d:Ljava/util/concurrent/Future;

    iput-object p2, p0, LR2/j;->e:LR2/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LR2/j;->d:Ljava/util/concurrent/Future;

    instance-of v1, v0, LS2/a;

    if-eqz v1, :cond_0

    check-cast v0, LS2/a;

    invoke-virtual {v0}, LS2/a;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, LR2/j;->d:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/common/util/concurrent/d;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, LR2/j;->e:LR2/i;

    invoke-interface {p0, v0}, LR2/i;->b(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, LR2/j;->e:LR2/i;

    invoke-interface {p0, v0}, LR2/i;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    iget-object p0, p0, LR2/j;->e:LR2/i;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p0, v0}, LR2/i;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    iget-object p0, p0, LR2/j;->e:LR2/i;

    new-instance v1, LO2/h;

    invoke-direct {v1}, LO2/h;-><init>()V

    iget-object v2, v0, LO2/i;->c:LO2/h;

    iput-object v1, v2, LO2/h;->c:LO2/h;

    iput-object v1, v0, LO2/i;->c:LO2/h;

    iput-object p0, v1, LO2/h;->b:Ljava/lang/Object;

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
