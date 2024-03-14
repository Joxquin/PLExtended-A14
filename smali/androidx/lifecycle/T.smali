.class public final Landroidx/lifecycle/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/lifecycle/U;

.field public final b:Landroidx/lifecycle/Q;

.field public final c:LV/b;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/U;Landroidx/lifecycle/Q;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, LV/a;->b:LV/a;

    .line 6
    invoke-direct {p0, p1, p2, v0}, Landroidx/lifecycle/T;-><init>(Landroidx/lifecycle/U;Landroidx/lifecycle/Q;LV/b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/U;Landroidx/lifecycle/Q;LV/b;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/T;->a:Landroidx/lifecycle/U;

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/T;->b:Landroidx/lifecycle/Q;

    .line 4
    iput-object p3, p0, Landroidx/lifecycle/T;->c:LV/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/N;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/T;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/N;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/N;
    .locals 4

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/T;->a:Landroidx/lifecycle/U;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/lifecycle/U;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/N;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Landroidx/lifecycle/T;->b:Landroidx/lifecycle/Q;

    if-eqz v2, :cond_2

    instance-of p0, v3, Landroidx/lifecycle/S;

    if-eqz p0, :cond_0

    check-cast v3, Landroidx/lifecycle/S;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Landroidx/lifecycle/S;->c(Landroidx/lifecycle/N;)V

    :cond_1
    const-string p0, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v1, LV/d;

    iget-object p0, p0, Landroidx/lifecycle/T;->c:LV/b;

    invoke-direct {v1, p0}, LV/d;-><init>(LV/b;)V

    sget-object p0, Landroidx/lifecycle/O;->b:Landroidx/lifecycle/O;

    iget-object v2, v1, LV/b;->a:Ljava/util/Map;

    invoke-interface {v2, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {v3, p1, v1}, Landroidx/lifecycle/Q;->b(Ljava/lang/Class;LV/d;)Landroidx/lifecycle/N;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-interface {v3, p1}, Landroidx/lifecycle/Q;->a(Ljava/lang/Class;)Landroidx/lifecycle/N;

    move-result-object p0

    :goto_1
    const-string p1, "viewModel"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, Landroidx/lifecycle/U;->a:Ljava/util/Map;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/N;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/lifecycle/N;->b()V

    :cond_3
    return-object p0
.end method
