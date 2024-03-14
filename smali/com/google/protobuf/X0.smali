.class public final Lcom/google/protobuf/X0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;

.field public static final c:Lcom/google/protobuf/V0;

.field public static final d:Z

.field public static final e:Z

.field public static final f:J

.field public static final g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/protobuf/U0;

    invoke-direct {v1}, Lcom/google/protobuf/U0;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    sput-object v1, Lcom/google/protobuf/X0;->a:Lsun/misc/Unsafe;

    sget-object v2, Lcom/google/protobuf/d;->a:Ljava/lang/Class;

    sput-object v2, Lcom/google/protobuf/X0;->b:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/protobuf/X0;->f(Ljava/lang/Class;)Z

    move-result v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/protobuf/X0;->f(Ljava/lang/Class;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/d;->a()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v3, :cond_1

    new-instance v0, Lcom/google/protobuf/V0;

    invoke-direct {v0, v1, v6}, Lcom/google/protobuf/V0;-><init>(Lsun/misc/Unsafe;I)V

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_3

    new-instance v0, Lcom/google/protobuf/V0;

    invoke-direct {v0, v1, v7}, Lcom/google/protobuf/V0;-><init>(Lsun/misc/Unsafe;I)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/protobuf/V0;

    invoke-direct {v0, v1, v5}, Lcom/google/protobuf/V0;-><init>(Lsun/misc/Unsafe;I)V

    :cond_3
    :goto_1
    sput-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    iget v1, v0, Lcom/google/protobuf/V0;->b:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "copyMemory"

    const-string v3, "getLong"

    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    const-class v4, Ljava/lang/Object;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "objectFieldOffset"

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Ljava/lang/reflect/Field;

    aput-object v11, v10, v7

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v4, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v8, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/protobuf/X0;->e()Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move v2, v6

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-static {v2}, Lcom/google/protobuf/X0;->a(Ljava/lang/Throwable;)V

    :goto_2
    move v2, v7

    :goto_3
    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getByte"

    new-array v8, v6, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putByte"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v9, v8, v7

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v6

    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getInt"

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putInt"

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v9, v5, v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putLong"

    filled-new-array {v9, v9}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v9, v9, v9}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    filled-new-array {v4, v9, v4, v9, v9}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v0, v6

    goto :goto_5

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lcom/google/protobuf/X0;->a(Ljava/lang/Throwable;)V

    :goto_4
    :pswitch_0
    move v0, v7

    :goto_5
    sput-boolean v0, Lcom/google/protobuf/X0;->d:Z

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    if-nez v0, :cond_8

    move v1, v7

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/V0;->a()Z

    move-result v1

    :goto_6
    sput-boolean v1, Lcom/google/protobuf/X0;->e:Z

    const-class v1, [B

    invoke-static {v1}, Lcom/google/protobuf/X0;->c(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/protobuf/X0;->f:J

    const-class v1, [Z

    invoke-static {v1}, Lcom/google/protobuf/X0;->c(Ljava/lang/Class;)I

    invoke-static {v1}, Lcom/google/protobuf/X0;->d(Ljava/lang/Class;)V

    const-class v1, [I

    invoke-static {v1}, Lcom/google/protobuf/X0;->c(Ljava/lang/Class;)I

    invoke-static {v1}, Lcom/google/protobuf/X0;->d(Ljava/lang/Class;)V

    const-class v1, [J

    invoke-static {v1}, Lcom/google/protobuf/X0;->c(Ljava/lang/Class;)I

    invoke-static {v1}, Lcom/google/protobuf/X0;->d(Ljava/lang/Class;)V

    const-class v1, [F

    invoke-static {v1}, Lcom/google/protobuf/X0;->c(Ljava/lang/Class;)I

    invoke-static {v1}, Lcom/google/protobuf/X0;->d(Ljava/lang/Class;)V

    const-class v1, [D

    invoke-static {v1}, Lcom/google/protobuf/X0;->c(Ljava/lang/Class;)I

    invoke-static {v1}, Lcom/google/protobuf/X0;->d(Ljava/lang/Class;)V

    const-class v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/X0;->c(Ljava/lang/Class;)I

    invoke-static {v1}, Lcom/google/protobuf/X0;->d(Ljava/lang/Class;)V

    invoke-static {}, Lcom/google/protobuf/X0;->e()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_a

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    :cond_a
    :goto_7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_b

    goto :goto_8

    :cond_b
    move v6, v7

    :goto_8
    sput-boolean v6, Lcom/google/protobuf/X0;->g:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 4

    const-class v0, Lcom/google/protobuf/X0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/X0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static c(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/X0;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static d(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/X0;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static e()Ljava/lang/reflect/Field;
    .locals 4

    invoke-static {}, Lcom/google/protobuf/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-class v0, Ljava/nio/Buffer;

    const-string v2, "effectiveDirectAddress"

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Ljava/nio/Buffer;

    const-string v2, "address"

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public static f(Ljava/lang/Class;)Z
    .locals 10

    const-class v0, [B

    invoke-static {}, Lcom/google/protobuf/d;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/protobuf/X0;->b:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v8, v5, [Ljava/lang/Class;

    aput-object p0, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v7

    aput-object v6, v8, v4

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v6, v8, v7

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    aput-object v9, v8, v4

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    aput-object v9, v6, v4

    aput-object v9, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    return v2
.end method

.method public static g(JLjava/lang/Object;)Z
    .locals 5

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget v1, v0, Lcom/google/protobuf/V0;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Lcom/google/protobuf/X0;->g:Z

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v4, :cond_1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/X0;->i(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/X0;->j(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :pswitch_1
    if-eqz v4, :cond_2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/X0;->i(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/X0;->j(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :goto_0
    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v2

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h([BJ)B
    .locals 3

    sget-wide v0, Lcom/google/protobuf/X0;->f:J

    add-long/2addr v0, p1

    sget-object p1, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget p2, p1, Lcom/google/protobuf/V0;->b:I

    sget-boolean v2, Lcom/google/protobuf/X0;->g:Z

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v2, :cond_0

    invoke-static {v0, v1, p0}, Lcom/google/protobuf/X0;->i(JLjava/lang/Object;)B

    move-result p0

    goto :goto_1

    :cond_0
    invoke-static {v0, v1, p0}, Lcom/google/protobuf/X0;->j(JLjava/lang/Object;)B

    move-result p0

    goto :goto_1

    :pswitch_1
    if-eqz v2, :cond_1

    invoke-static {v0, v1, p0}, Lcom/google/protobuf/X0;->i(JLjava/lang/Object;)B

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {v0, v1, p0}, Lcom/google/protobuf/X0;->j(JLjava/lang/Object;)B

    move-result p0

    goto :goto_1

    :goto_0
    iget-object p1, p1, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p1, p0, v0, v1}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(JLjava/lang/Object;)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result p2

    not-long p0, p0

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static j(JLjava/lang/Object;)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p0

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result p2

    const-wide/16 v0, 0x3

    and-long/2addr p0, v0

    const/4 v0, 0x3

    shl-long/2addr p0, v0

    long-to-int p0, p0

    ushr-int p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static k(JLjava/lang/Object;)D
    .locals 2

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget v1, v0, Lcom/google/protobuf/V0;->b:I

    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    goto :goto_1

    :goto_0
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    :goto_1
    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l(JLjava/lang/Object;)F
    .locals 2

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget v1, v0, Lcom/google/protobuf/V0;->b:I

    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_1

    :goto_0
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static m(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static n(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static o(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Object;JZ)V
    .locals 3

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget v1, v0, Lcom/google/protobuf/V0;->b:I

    sget-boolean v2, Lcom/google/protobuf/X0;->g:Z

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v2, :cond_0

    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/X0;->r(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_0
    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/X0;->s(Ljava/lang/Object;JB)V

    goto :goto_1

    :pswitch_1
    if-eqz v2, :cond_1

    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/X0;->r(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/X0;->s(Ljava/lang/Object;JB)V

    goto :goto_1

    :goto_0
    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static q([BJB)V
    .locals 3

    sget-wide v0, Lcom/google/protobuf/X0;->f:J

    add-long/2addr v0, p1

    sget-object p1, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget p2, p1, Lcom/google/protobuf/V0;->b:I

    sget-boolean v2, Lcom/google/protobuf/X0;->g:Z

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v2, :cond_0

    invoke-static {p0, v0, v1, p3}, Lcom/google/protobuf/X0;->r(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_0
    invoke-static {p0, v0, v1, p3}, Lcom/google/protobuf/X0;->s(Ljava/lang/Object;JB)V

    goto :goto_1

    :pswitch_1
    if-eqz v2, :cond_1

    invoke-static {p0, v0, v1, p3}, Lcom/google/protobuf/X0;->r(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    invoke-static {p0, v0, v1, p3}, Lcom/google/protobuf/X0;->s(Ljava/lang/Object;JB)V

    goto :goto_1

    :goto_0
    iget-object p1, p1, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p1, p0, v0, v1, p3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static r(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {v0, v1, p0}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v2

    long-to-int p1, p1

    not-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p1, v0, v1, p0}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    return-void
.end method

.method public static s(Ljava/lang/Object;JB)V
    .locals 4

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {v0, v1, p0}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v2

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    not-int v3, v3

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p1, v0, v1, p0}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    return-void
.end method

.method public static t(Ljava/lang/Object;JD)V
    .locals 14

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget v1, v0, Lcom/google/protobuf/V0;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    iget-object v2, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    move-object v3, p0

    move-wide v4, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_1

    :pswitch_1
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v12

    iget-object v8, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    move-object v9, p0

    move-wide v10, p1

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_1

    :goto_0
    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static u(Ljava/lang/Object;JF)V
    .locals 2

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget v1, v0, Lcom/google/protobuf/V0;->b:I

    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1

    :goto_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static v(IJLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p3, p1, p2, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static w(Ljava/lang/Object;JJ)V
    .locals 7

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget-object v1, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static x(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/google/protobuf/X0;->c:Lcom/google/protobuf/V0;

    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p2, p0, p1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
