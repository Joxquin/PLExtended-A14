.class public abstract Li0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq/m;

.field public final b:Lq/m;

.field public final c:Lq/m;


# direct methods
.method public constructor <init>(Lq/m;Lq/m;Lq/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/c;->a:Lq/m;

    iput-object p2, p0, Li0/c;->b:Lq/m;

    iput-object p3, p0, Li0/c;->c:Lq/m;

    return-void
.end method


# virtual methods
.method public abstract A(Landroid/os/Parcelable;)V
.end method

.method public final B(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Li0/c;->s(I)V

    invoke-virtual {p0, p2}, Li0/c;->C(Ljava/lang/String;)V

    return-void
.end method

.method public abstract C(Ljava/lang/String;)V
.end method

.method public abstract D(Landroid/os/IBinder;)V
.end method

.method public final E(Li0/e;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Li0/c;->C(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Li0/c;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Li0/c;->C(Ljava/lang/String;)V

    invoke-virtual {p0}, Li0/c;->a()Li0/d;

    move-result-object v1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Li0/c;->d(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v1}, Li0/d;->F()V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, " does not have a Parcelizer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract a()Li0/d;
.end method

.method public final b(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Li0/c;->c:Lq/m;

    invoke-virtual {p0, v0}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s.%sParcelizer"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    iget-object p0, p0, Li0/c;->a:Lq/m;

    invoke-virtual {p0, p1}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Li0/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "read"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final d(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Li0/c;->b:Lq/m;

    invoke-virtual {v1, v0}, Lq/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Li0/c;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Li0/c;

    filled-new-array {p1, v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v2, "write"

    invoke-virtual {p0, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lq/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final e(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0, p1}, Li0/c;->j(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Li0/c;->k()I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_1

    goto/16 :goto_7

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Li0/c;->k()I

    move-result v2

    if-gez p1, :cond_2

    goto/16 :goto_7

    :cond_2
    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v0, 0x4

    if-eq v2, v0, :cond_4

    const/4 v0, 0x5

    if-eq v2, v0, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_0
    if-lez p1, :cond_9

    invoke-virtual {p0}, Li0/c;->q()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-lez p1, :cond_9

    invoke-virtual {p0}, Li0/c;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-lez p1, :cond_9

    const-string v2, ")"

    const-string v3, "Unable to read Serializable object (name = "

    invoke-virtual {p0}, Li0/c;->o()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v5, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Li0/c;->h()[B

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance v5, Li0/b;

    invoke-direct {v5, v6}, Li0/b;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v3, v4, v2}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {v3, v4, v2}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    :goto_4
    if-lez p1, :cond_9

    invoke-virtual {p0}, Li0/c;->n()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_8
    :goto_5
    if-lez p1, :cond_9

    invoke-virtual {p0}, Li0/c;->r()Li0/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_9
    :goto_6
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_7
    return-object v0
.end method

.method public abstract f()Z
.end method

.method public abstract g()Landroid/os/Bundle;
.end method

.method public abstract h()[B
.end method

.method public abstract i()Ljava/lang/CharSequence;
.end method

.method public abstract j(I)Z
.end method

.method public abstract k()I
.end method

.method public final l(II)I
    .locals 0

    invoke-virtual {p0, p2}, Li0/c;->j(I)Z

    move-result p2

    if-nez p2, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Li0/c;->k()I

    move-result p0

    return p0
.end method

.method public abstract m()J
.end method

.method public abstract n()Landroid/os/Parcelable;
.end method

.method public abstract o()Ljava/lang/String;
.end method

.method public final p(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Li0/c;->j(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Li0/c;->o()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract q()Landroid/os/IBinder;
.end method

.method public final r()Li0/e;
    .locals 3

    invoke-virtual {p0}, Li0/c;->o()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Li0/c;->a()Li0/d;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, v0}, Li0/c;->c(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li0/e;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract s(I)V
.end method

.method public final t(I[Ljava/lang/Object;)V
    .locals 8

    invoke-virtual {p0, p1}, Li0/c;->s(I)V

    if-nez p2, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Li0/c;->y(I)V

    goto/16 :goto_7

    :cond_0
    array-length p1, p2

    invoke-virtual {p0, p1}, Li0/c;->y(I)V

    if-lez p1, :cond_e

    const/4 v0, 0x0

    aget-object v1, p2, v0

    instance-of v2, v1, Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eqz v2, :cond_1

    move v1, v7

    goto :goto_0

    :cond_1
    instance-of v2, v1, Landroid/os/Parcelable;

    if-eqz v2, :cond_2

    move v1, v6

    goto :goto_0

    :cond_2
    instance-of v2, v1, Li0/e;

    if-eqz v2, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    instance-of v2, v1, Ljava/io/Serializable;

    if-eqz v2, :cond_4

    move v1, v5

    goto :goto_0

    :cond_4
    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_5

    move v1, v4

    goto :goto_0

    :cond_5
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    const/4 v1, 0x7

    goto :goto_0

    :cond_6
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_d

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Li0/c;->y(I)V

    if-eq v1, v3, :cond_c

    if-eq v1, v6, :cond_b

    if-eq v1, v5, :cond_9

    if-eq v1, v7, :cond_8

    if-eq v1, v4, :cond_7

    goto/16 :goto_7

    :cond_7
    :goto_1
    if-ge v0, p1, :cond_e

    aget-object v1, p2, v0

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Li0/c;->D(Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    if-ge v0, p1, :cond_e

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Li0/c;->C(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    if-ge v0, p1, :cond_e

    aget-object v1, p2, v0

    check-cast v1, Ljava/io/Serializable;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Li0/c;->C(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Li0/c;->C(Ljava/lang/String;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Li0/c;->w([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "VersionedParcelable encountered IOException writing serializable object (name = "

    const-string v0, ")"

    invoke-static {p2, v2, v0}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_b
    :goto_5
    if-ge v0, p1, :cond_e

    aget-object v1, p2, v0

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p0, v1}, Li0/c;->A(Landroid/os/Parcelable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    if-ge v0, p1, :cond_e

    aget-object v1, p2, v0

    check-cast v1, Li0/e;

    invoke-virtual {p0, v1}, Li0/c;->E(Li0/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, " cannot be VersionedParcelled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_7
    return-void
.end method

.method public abstract u(Z)V
.end method

.method public abstract v(Landroid/os/Bundle;)V
.end method

.method public abstract w([B)V
.end method

.method public abstract x(Ljava/lang/CharSequence;)V
.end method

.method public abstract y(I)V
.end method

.method public abstract z(J)V
.end method
