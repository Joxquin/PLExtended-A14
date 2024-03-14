.class public final synthetic LL1/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/b;


# instance fields
.field public final synthetic a:LL1/O;


# direct methods
.method public synthetic constructor <init>(LL1/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/N;->a:LL1/O;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    iget-object p0, p0, LL1/N;->a:LL1/O;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Unable to connect to system intelligence: "

    :try_start_0
    iget-object p0, p0, LL1/O;->d:LK1/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Contents"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, LJ1/e;

    invoke-direct {p0}, LJ1/e;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, LJ1/e;

    invoke-direct {p1, p0}, LJ1/e;-><init>(Landroid/os/Bundle;)V

    move-object p0, p1

    :goto_0
    iget-object p0, p0, LJ1/e;->g:LJ1/I;

    const/4 p1, 0x0

    if-nez p0, :cond_1

    const-string p0, "System intelligence is unavailable."

    invoke-static {p0, p1}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    sget v1, LM1/c;->a:I

    iget-object v1, p0, LJ1/I;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$ErrorCode;

    sget-object v2, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$ErrorCode;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$ErrorCode;

    if-ne v1, v2, :cond_2

    const-string p0, "Successfully connected to system intelligence: "

    invoke-static {p0}, LM1/b;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LJ1/I;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Unable to connect to system intelligence module."

    invoke-static {p1, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
