.class public final Lcom/google/protobuf/V0;
.super Lcom/google/protobuf/W0;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;I)V
    .locals 0

    iput p2, p0, Lcom/google/protobuf/V0;->b:I

    invoke-direct {p0, p1}, Lcom/google/protobuf/W0;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 9

    iget v0, p0, Lcom/google/protobuf/V0;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/protobuf/W0;->a()Z

    move-result p0

    return p0

    :pswitch_0
    const-class v0, Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/protobuf/W0;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/protobuf/W0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "getByte"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v0, v4, v2

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putByte"

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v0, v7, v2

    aput-object v5, v7, v6

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getBoolean"

    filled-new-array {v0, v5}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putBoolean"

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v0, v7, v2

    aput-object v5, v7, v6

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getFloat"

    filled-new-array {v0, v5}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putFloat"

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v0, v7, v2

    aput-object v5, v7, v6

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getDouble"

    filled-new-array {v0, v5}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putDouble"

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v2

    aput-object v5, v4, v6

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v0, v4, v3

    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v6

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lcom/google/protobuf/X0;->a(Ljava/lang/Throwable;)V

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
