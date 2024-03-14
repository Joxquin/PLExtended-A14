.class public final Lio/grpc/internal/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/K0;


# direct methods
.method public static a(Ljavax/naming/NamingEnumeration;Ljavax/naming/NamingException;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljavax/naming/NamingEnumeration;->close()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    throw p1
.end method

.method public static b(Ljavax/naming/directory/DirContext;Ljavax/naming/NamingException;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    throw p1
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    sget-object p0, Lio/grpc/internal/L0;->a:Ljava/lang/Throwable;

    if-nez p0, :cond_2

    const-string p0, "TXT"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "com.sun.jndi.ldap.connect.timeout"

    const-string v3, "5000"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.sun.jndi.ldap.read.timeout"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljavax/naming/directory/InitialDirContext;

    invoke-direct {v2, v1}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v2, p1, p0}, Ljavax/naming/directory/DirContext;->getAttributes(Ljava/lang/String;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;

    move-result-object p0

    invoke-interface {p0}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object p0
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/naming/directory/Attribute;

    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object p1
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1, v0}, Lio/grpc/internal/I0;->a(Ljavax/naming/NamingEnumeration;Ljavax/naming/NamingException;)V

    throw v1
    :try_end_3
    .catch Ljavax/naming/NamingException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_4
    invoke-interface {p0}, Ljavax/naming/NamingEnumeration;->close()V
    :try_end_4
    .catch Ljavax/naming/NamingException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-interface {v2}, Ljavax/naming/directory/DirContext;->close()V

    return-object v0

    :goto_2
    :try_start_5
    invoke-static {p0, p1}, Lio/grpc/internal/I0;->a(Ljavax/naming/NamingEnumeration;Ljavax/naming/NamingException;)V

    throw v1
    :try_end_5
    .catch Ljavax/naming/NamingException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    invoke-static {v2, p0}, Lio/grpc/internal/I0;->b(Ljavax/naming/directory/DirContext;Ljavax/naming/NamingException;)V

    throw v1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "JNDI is not currently available"

    invoke-direct {p1, v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
