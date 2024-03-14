.class public final LX2/W;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LX2/W;


# instance fields
.field public final a:LX2/Y;

.field public final b:LX2/p;

.field public final c:LX2/L0;

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, LX2/W;

    sget-object v1, LX2/L0;->e:LX2/L0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, LX2/W;-><init>(LX2/Y;LX2/L0;Z)V

    sput-object v0, LX2/W;->e:LX2/W;

    return-void
.end method

.method public constructor <init>(LX2/Y;LX2/L0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX2/W;->a:LX2/Y;

    const/4 p1, 0x0

    iput-object p1, p0, LX2/W;->b:LX2/p;

    const-string p1, "status"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, LX2/W;->c:LX2/L0;

    iput-boolean p3, p0, LX2/W;->d:Z

    return-void
.end method

.method public static a(LX2/L0;)LX2/W;
    .locals 3

    invoke-virtual {p0}, LX2/L0;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error status shouldn\'t be OK"

    invoke-static {v1, v0}, LO2/m;->b(Ljava/lang/Object;Z)V

    new-instance v0, LX2/W;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, LX2/W;-><init>(LX2/Y;LX2/L0;Z)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LX2/W;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LX2/W;

    iget-object v0, p1, LX2/W;->a:LX2/Y;

    iget-object v2, p0, LX2/W;->a:LX2/Y;

    invoke-static {v2, v0}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LX2/W;->c:LX2/L0;

    iget-object v2, p1, LX2/W;->c:LX2/L0;

    invoke-static {v0, v2}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LX2/W;->b:LX2/p;

    iget-object v2, p1, LX2/W;->b:LX2/p;

    invoke-static {v0, v2}, LO2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, LX2/W;->d:Z

    iget-boolean p1, p1, LX2/W;->d:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, LX2/W;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, LX2/W;->a:LX2/Y;

    iget-object v2, p0, LX2/W;->c:LX2/L0;

    iget-object p0, p0, LX2/W;->b:LX2/p;

    filled-new-array {v1, v2, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "subchannel"

    iget-object v2, p0, LX2/W;->a:LX2/Y;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "streamTracerFactory"

    iget-object v2, p0, LX2/W;->b:LX2/p;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "status"

    iget-object v2, p0, LX2/W;->c:LX2/L0;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "drop"

    iget-boolean p0, p0, LX2/W;->d:Z

    invoke-virtual {v0, v1, p0}, LO2/i;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
