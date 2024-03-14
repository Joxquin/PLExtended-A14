.class public LX2/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:LX2/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LX2/C;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LX2/C;->a:Ljava/util/logging/Logger;

    new-instance v0, LX2/C;

    invoke-direct {v0}, LX2/C;-><init>()V

    sput-object v0, LX2/C;->b:LX2/C;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()LX2/C;
    .locals 1

    sget-object v0, LX2/A;->a:LX2/B;

    invoke-virtual {v0}, LX2/B;->a()LX2/C;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LX2/C;->b:LX2/C;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()LX2/C;
    .locals 1

    sget-object v0, LX2/A;->a:LX2/B;

    invoke-virtual {v0, p0}, LX2/B;->c(LX2/C;)LX2/C;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, LX2/C;->b:LX2/C;

    :cond_0
    return-object p0
.end method

.method public final c(LX2/C;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, LX2/A;->a:LX2/B;

    invoke-virtual {v0, p0, p1}, LX2/B;->b(LX2/C;LX2/C;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "toAttach"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
