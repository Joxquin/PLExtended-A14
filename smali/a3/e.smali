.class public final La3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:LX2/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, La3/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, La3/e;->a:Ljava/util/logging/Logger;

    new-instance v0, LX2/f;

    const-string v1, "internal-stub-type"

    invoke-direct {v0, v1}, LX2/f;-><init>(Ljava/lang/String;)V

    sput-object v0, La3/e;->b:LX2/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LX2/k;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, LX2/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "RuntimeException encountered while closing call"

    sget-object v2, La3/e;->a:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
.end method

.method public static b(LX2/k;Ljava/lang/Object;)La3/c;
    .locals 3

    new-instance v0, La3/c;

    invoke-direct {v0, p0}, La3/c;-><init>(LX2/k;)V

    new-instance v1, La3/d;

    invoke-direct {v1, v0}, La3/d;-><init>(La3/c;)V

    new-instance v2, LX2/r0;

    invoke-direct {v2}, LX2/r0;-><init>()V

    invoke-virtual {p0, v1, v2}, LX2/k;->e(LX2/j;LX2/r0;)V

    iget-object v1, v1, La3/d;->a:La3/c;

    iget-object v1, v1, La3/c;->k:LX2/k;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, LX2/k;->c(I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, LX2/k;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, LX2/k;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-static {p0, p1}, La3/e;->a(LX2/k;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    invoke-static {p0, p1}, La3/e;->a(LX2/k;Ljava/lang/Throwable;)V

    throw v1
.end method
