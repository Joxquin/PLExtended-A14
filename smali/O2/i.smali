.class public final LO2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LO2/h;

.field public c:LO2/h;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LO2/h;

    invoke-direct {v0}, LO2/h;-><init>()V

    iput-object v0, p0, LO2/i;->b:LO2/h;

    iput-object v0, p0, LO2/i;->c:LO2/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, LO2/i;->d:Z

    iput-object p1, p0, LO2/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    new-instance v0, LO2/h;

    invoke-direct {v0}, LO2/h;-><init>()V

    iget-object v1, p0, LO2/i;->c:LO2/h;

    iput-object v0, v1, LO2/h;->c:LO2/h;

    iput-object v0, p0, LO2/i;->c:LO2/h;

    iput-object p1, v0, LO2/h;->b:Ljava/lang/Object;

    iput-object p2, v0, LO2/h;->a:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, LO2/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, LO2/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    new-instance v0, LO2/g;

    invoke-direct {v0}, LO2/g;-><init>()V

    iget-object v1, p0, LO2/i;->c:LO2/h;

    iput-object v0, v1, LO2/h;->c:LO2/h;

    iput-object v0, p0, LO2/i;->c:LO2/h;

    iput-object p1, v0, LO2/h;->b:Ljava/lang/Object;

    iput-object p2, v0, LO2/h;->a:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, LO2/i;->d:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, LO2/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, LO2/i;->b:LO2/h;

    iget-object p0, p0, LO2/h;->c:LO2/h;

    const-string v2, ""

    :goto_0
    if-eqz p0, :cond_4

    iget-object v3, p0, LO2/h;->b:Ljava/lang/Object;

    instance-of v4, p0, LO2/g;

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LO2/h;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v2, ", "

    :cond_3
    iget-object p0, p0, LO2/h;->c:LO2/h;

    goto :goto_0

    :cond_4
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
