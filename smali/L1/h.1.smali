.class public final LL1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/b;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LL1/b;LL1/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LL1/h;->b:Ljava/lang/Object;

    iget-object v1, p2, LL1/i;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LL1/h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, LL1/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL1/i;

    if-eqz v0, :cond_1

    iget-object p0, p0, LL1/h;->b:Ljava/lang/Object;

    iget-object v0, v0, LL1/i;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LL1/b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, LL1/b;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p0, "Callback received after calling UI was recycled"

    invoke-static {p0}, LM1/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "Callback received after service wrapper was recycled"

    invoke-static {p0}, LM1/b;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
