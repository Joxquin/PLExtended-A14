.class public final LR2/g;
.super LR2/a;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final e:J

.field public static final f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, LR2/h;

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v1, LR2/f;

    invoke-direct {v1}, LR2/f;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    const-class v2, Lcom/google/common/util/concurrent/c;

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, LR2/g;->c:J

    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, LR2/g;->b:J

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, LR2/g;->d:J

    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, LR2/g;->e:J

    const-string v2, "b"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, LR2/g;->f:J

    sput-object v1, LR2/g;->a:Lsun/misc/Unsafe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-static {v0}, LO2/r;->a(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/common/util/concurrent/c;Lcom/google/common/util/concurrent/b;Lcom/google/common/util/concurrent/b;)Z
    .locals 6

    sget-object v0, LR2/g;->a:Lsun/misc/Unsafe;

    sget-wide v2, LR2/g;->b:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b(Lcom/google/common/util/concurrent/c;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    sget-object v0, LR2/g;->a:Lsun/misc/Unsafe;

    sget-wide v2, LR2/g;->d:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final c(Lcom/google/common/util/concurrent/c;LR2/h;LR2/h;)Z
    .locals 6

    sget-object v0, LR2/g;->a:Lsun/misc/Unsafe;

    sget-wide v2, LR2/g;->c:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final d(Lcom/google/common/util/concurrent/c;Lcom/google/common/util/concurrent/b;)Lcom/google/common/util/concurrent/b;
    .locals 2

    :cond_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/c;->e:Lcom/google/common/util/concurrent/b;

    if-ne p2, v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1, v0, p2}, LR2/g;->a(Lcom/google/common/util/concurrent/c;Lcom/google/common/util/concurrent/b;Lcom/google/common/util/concurrent/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public final e(Lcom/google/common/util/concurrent/c;)LR2/h;
    .locals 3

    sget-object v0, LR2/h;->c:LR2/h;

    :cond_0
    iget-object v1, p1, Lcom/google/common/util/concurrent/c;->f:LR2/h;

    if-ne v0, v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1, v1, v0}, LR2/g;->c(Lcom/google/common/util/concurrent/c;LR2/h;LR2/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1
.end method

.method public final f(LR2/h;LR2/h;)V
    .locals 2

    sget-object p0, LR2/g;->a:Lsun/misc/Unsafe;

    sget-wide v0, LR2/g;->f:J

    invoke-virtual {p0, p1, v0, v1, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final g(LR2/h;Ljava/lang/Thread;)V
    .locals 2

    sget-object p0, LR2/g;->a:Lsun/misc/Unsafe;

    sget-wide v0, LR2/g;->e:J

    invoke-virtual {p0, p1, v0, v1, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
