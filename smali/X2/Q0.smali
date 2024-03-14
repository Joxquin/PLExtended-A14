.class public final LX2/Q0;
.super LX2/B;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Ljava/lang/ThreadLocal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, LX2/Q0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LX2/Q0;->a:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LX2/Q0;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LX2/B;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()LX2/C;
    .locals 0

    sget-object p0, LX2/Q0;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LX2/C;

    if-nez p0, :cond_0

    sget-object p0, LX2/C;->b:LX2/C;

    :cond_0
    return-object p0
.end method

.method public final b(LX2/C;LX2/C;)V
    .locals 2

    invoke-virtual {p0}, LX2/Q0;->a()LX2/C;

    move-result-object p0

    if-eq p0, p1, :cond_0

    sget-object p0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, LX2/Q0;->a:Ljava/util/logging/Logger;

    const-string v1, "Context was not attached when detaching"

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-object p0, LX2/C;->b:LX2/C;

    sget-object p1, LX2/Q0;->b:Ljava/lang/ThreadLocal;

    if-eq p2, p0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final c(LX2/C;)LX2/C;
    .locals 1

    invoke-virtual {p0}, LX2/Q0;->a()LX2/C;

    move-result-object p0

    sget-object v0, LX2/Q0;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0
.end method
