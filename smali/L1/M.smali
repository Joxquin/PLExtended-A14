.class public final synthetic LL1/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LL1/O;


# direct methods
.method public synthetic constructor <init>(LL1/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/M;->d:LL1/O;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object p0, p0, LL1/M;->d:LL1/O;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v0, "Connecting to system intelligence module."

    invoke-static {v0}, LM1/b;->f(Ljava/lang/String;)V

    new-instance v6, LJ1/t;

    invoke-direct {v6}, LJ1/t;-><init>()V

    sget-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->k:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    iput-object v0, v6, LJ1/t;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    iget-object v0, p0, LL1/O;->c:LL1/i;

    iget-object v1, p0, LL1/O;->d:LK1/a;

    iget-object v2, p0, LL1/O;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-wide v4, v7

    move-object v7, v9

    move-object v8, v10

    invoke-static/range {v1 .. v8}, LK1/a;->c(Ljava/lang/String;Ljava/lang/String;IJLJ1/t;Landroid/os/Bundle;LJ1/v;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, LL1/N;

    invoke-direct {v2, p0}, LL1/N;-><init>(LL1/O;)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0, v1, v2}, LL1/i;->d(ILandroid/os/Bundle;LL1/b;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Error while connecting to system intelligence module."

    invoke-static {v0, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
