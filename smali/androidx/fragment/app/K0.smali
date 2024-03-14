.class public final Landroidx/fragment/app/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h;
.implements La0/g;
.implements Landroidx/lifecycle/V;


# instance fields
.field public final d:Landroidx/fragment/app/K;

.field public final e:Landroidx/lifecycle/U;

.field public final f:Ljava/lang/Runnable;

.field public g:Landroidx/lifecycle/s;

.field public h:La0/f;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/K;Landroidx/lifecycle/U;Landroidx/fragment/app/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/K0;->g:Landroidx/lifecycle/s;

    iput-object v0, p0, Landroidx/fragment/app/K0;->h:La0/f;

    iput-object p1, p0, Landroidx/fragment/app/K0;->d:Landroidx/fragment/app/K;

    iput-object p2, p0, Landroidx/fragment/app/K0;->e:Landroidx/lifecycle/U;

    iput-object p3, p0, Landroidx/fragment/app/K0;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/K0;->g:Landroidx/lifecycle/s;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/s;->f(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/K0;->g:Landroidx/lifecycle/s;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/fragment/app/K0;->g:Landroidx/lifecycle/s;

    new-instance v0, La0/f;

    invoke-direct {v0, p0}, La0/f;-><init>(La0/g;)V

    iput-object v0, p0, Landroidx/fragment/app/K0;->h:La0/f;

    invoke-virtual {v0}, La0/f;->a()V

    iget-object p0, p0, Landroidx/fragment/app/K0;->f:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()LV/b;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/K0;->d:Landroidx/fragment/app/K;

    invoke-virtual {v0}, Landroidx/fragment/app/K;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, LV/d;

    invoke-direct {v2}, LV/d;-><init>()V

    iget-object v3, v2, LV/b;->a:Ljava/util/Map;

    if-eqz v1, :cond_2

    sget-object v4, Landroidx/lifecycle/O;->a:Landroidx/lifecycle/O;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Landroidx/lifecycle/I;->a:Landroidx/lifecycle/H;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/I;->b:Landroidx/lifecycle/H;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/lifecycle/I;->c:Landroidx/lifecycle/H;

    invoke-virtual {v0}, Landroidx/fragment/app/K;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method public final getLifecycle()Landroidx/lifecycle/m;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/K0;->b()V

    iget-object p0, p0, Landroidx/fragment/app/K0;->g:Landroidx/lifecycle/s;

    return-object p0
.end method

.method public final getSavedStateRegistry()La0/e;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/K0;->b()V

    iget-object p0, p0, Landroidx/fragment/app/K0;->h:La0/f;

    iget-object p0, p0, La0/f;->b:La0/e;

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/U;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/K0;->b()V

    iget-object p0, p0, Landroidx/fragment/app/K0;->e:Landroidx/lifecycle/U;

    return-object p0
.end method
