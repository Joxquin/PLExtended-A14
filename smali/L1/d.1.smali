.class public final synthetic LL1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LL1/i;

.field public final synthetic e:Ljava/util/function/Supplier;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:LL1/P;

.field public final synthetic h:LJ1/n;


# direct methods
.method public synthetic constructor <init>(LL1/i;Ljava/util/function/Supplier;Ljava/lang/String;LL1/P;LJ1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/d;->d:LL1/i;

    iput-object p2, p0, LL1/d;->e:Ljava/util/function/Supplier;

    iput-object p3, p0, LL1/d;->f:Ljava/lang/String;

    iput-object p4, p0, LL1/d;->g:LL1/P;

    iput-object p5, p0, LL1/d;->h:LJ1/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LL1/d;->d:LL1/i;

    iget-object v1, p0, LL1/d;->e:Ljava/util/function/Supplier;

    iget-object v2, p0, LL1/d;->f:Ljava/lang/String;

    iget-object v3, p0, LL1/d;->g:LL1/P;

    iget-object p0, p0, LL1/d;->h:LJ1/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iget-object v0, v0, LL1/i;->e:Landroid/app/contentsuggestions/ContentSuggestionsManager;

    invoke-virtual {v0, v2, v1}, Landroid/app/contentsuggestions/ContentSuggestionsManager;->notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {v3}, LL1/P;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Failed to notifyInteraction"

    invoke-static {v0, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
