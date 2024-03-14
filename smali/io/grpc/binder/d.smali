.class public final Lio/grpc/binder/d;
.super LX2/g0;
.source "SourceFile"


# instance fields
.field public final a:Lio/grpc/internal/x1;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lio/grpc/internal/H2;

.field public d:Lio/grpc/binder/h;

.field public final e:Lio/grpc/binder/e;

.field public final f:Lio/grpc/binder/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/grpc/binder/AndroidComponentAddress;)V
    .locals 3

    invoke-direct {p0}, LX2/g0;-><init>()V

    sget-object v0, Lio/grpc/internal/r0;->l:Lio/grpc/internal/n0;

    new-instance v1, Lio/grpc/internal/H2;

    invoke-direct {v1, v0}, Lio/grpc/internal/H2;-><init>(Lio/grpc/internal/n0;)V

    iput-object v1, p0, Lio/grpc/binder/d;->c:Lio/grpc/internal/H2;

    sget-object v0, LB/c;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/binder/d;->b:Ljava/util/concurrent/Executor;

    sget v0, Lio/grpc/binder/g;->a:I

    new-instance v0, Lio/grpc/binder/f;

    invoke-direct {v0}, Lio/grpc/binder/f;-><init>()V

    iput-object v0, p0, Lio/grpc/binder/d;->d:Lio/grpc/binder/h;

    sget-object v0, Lio/grpc/binder/e;->d:Lio/grpc/binder/e;

    iput-object v0, p0, Lio/grpc/binder/d;->e:Lio/grpc/binder/e;

    sget-object v0, Lio/grpc/binder/a;->b:Lio/grpc/binder/a;

    iput-object v0, p0, Lio/grpc/binder/d;->f:Lio/grpc/binder/a;

    new-instance v0, Lio/grpc/internal/x1;

    invoke-virtual {p2}, Lio/grpc/binder/AndroidComponentAddress;->b()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/grpc/binder/b;

    invoke-direct {v2, p0, p1}, Lio/grpc/binder/b;-><init>(Lio/grpc/binder/d;Landroid/content/Context;)V

    invoke-direct {v0, p2, v1, v2}, Lio/grpc/internal/x1;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Lio/grpc/binder/b;)V

    iput-object v0, p0, Lio/grpc/binder/d;->a:Lio/grpc/internal/x1;

    return-void
.end method


# virtual methods
.method public final a()LX2/f0;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/grpc/binder/d;->a:Lio/grpc/internal/x1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lio/grpc/internal/z1;

    new-instance v8, Lio/grpc/internal/s1;

    iget-object v0, v1, Lio/grpc/internal/x1;->w:Lio/grpc/internal/t1;

    invoke-interface {v0}, Lio/grpc/internal/t1;->a()Lio/grpc/binder/c;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/f0;

    invoke-direct {v3}, Lio/grpc/internal/f0;-><init>()V

    sget-object v0, Lio/grpc/internal/r0;->k:Lio/grpc/internal/n0;

    new-instance v4, Lio/grpc/internal/H2;

    invoke-direct {v4, v0}, Lio/grpc/internal/H2;-><init>(Lio/grpc/internal/n0;)V

    sget-object v5, Lio/grpc/internal/r0;->m:Lio/grpc/internal/o0;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, v1, Lio/grpc/internal/x1;->c:Ljava/util/List;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v9, Lio/grpc/internal/x1;->y:Ljava/util/logging/Logger;

    iget-boolean v0, v1, Lio/grpc/internal/x1;->r:Z

    const-string v10, "getClientInterceptor"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "Unable to apply census stats"

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "io.grpc.census.InternalCensusStatsAccessor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v14, 0x4

    new-array v15, v14, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v12

    const/16 v17, 0x1

    aput-object v16, v15, v17

    const/16 v18, 0x2

    aput-object v16, v15, v18

    const/16 v19, 0x3

    aput-object v16, v15, v19

    invoke-virtual {v0, v10, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v14, v14, [Ljava/lang/Object;

    iget-boolean v15, v1, Lio/grpc/internal/x1;->s:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v12

    iget-boolean v15, v1, Lio/grpc/internal/x1;->t:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v17

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v15, v14, v18

    iget-boolean v15, v1, Lio/grpc/internal/x1;->u:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v19

    invoke-virtual {v0, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX2/l;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v14, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v14, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v14, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v14, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v0, v11

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v6, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    iget-boolean v0, v1, Lio/grpc/internal/x1;->v:Z

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "io.grpc.census.InternalCensusTracingAccessor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v14, v12, [Ljava/lang/Class;

    invoke-virtual {v0, v10, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v0, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX2/l;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v11, v0

    goto :goto_2

    :catch_4
    move-exception v0

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_5
    move-exception v0

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v0

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_7
    move-exception v0

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v11, :cond_1

    invoke-virtual {v6, v12, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/s1;-><init>(Lio/grpc/internal/x1;Lio/grpc/internal/y;Lio/grpc/internal/f0;Lio/grpc/internal/H2;Lio/grpc/internal/o0;Ljava/util/List;)V

    invoke-direct {v7, v8}, Lio/grpc/internal/z1;-><init>(Lio/grpc/internal/s1;)V

    return-object v7
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    iget-object p0, p0, Lio/grpc/binder/d;->a:Lio/grpc/internal/x1;

    const-string v1, "delegate"

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/binder/d;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
