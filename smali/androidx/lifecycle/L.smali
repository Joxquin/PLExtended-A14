.class public final Landroidx/lifecycle/L;
.super Landroidx/lifecycle/S;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Q;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroidx/lifecycle/P;

.field public final c:Landroid/os/Bundle;

.field public final d:Landroidx/lifecycle/m;

.field public final e:La0/e;


# direct methods
.method public constructor <init>(Landroid/app/Application;La0/g;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

    invoke-interface {p2}, La0/g;->getSavedStateRegistry()La0/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/L;->e:La0/e;

    invoke-interface {p2}, Landroidx/lifecycle/q;->getLifecycle()Landroidx/lifecycle/m;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/m;

    iput-object p3, p0, Landroidx/lifecycle/L;->c:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/L;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    sget-object p2, Landroidx/lifecycle/P;->e:Landroidx/lifecycle/P;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/lifecycle/P;

    invoke-direct {p2, p1}, Landroidx/lifecycle/P;-><init>(Landroid/app/Application;)V

    sput-object p2, Landroidx/lifecycle/P;->e:Landroidx/lifecycle/P;

    :cond_0
    sget-object p1, Landroidx/lifecycle/P;->e:Landroidx/lifecycle/P;

    invoke-static {p1}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/P;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/P;-><init>(Landroid/app/Application;)V

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/L;->b:Landroidx/lifecycle/P;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/N;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/L;->d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/N;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/Class;LV/d;)Landroidx/lifecycle/N;
    .locals 4

    sget-object v0, Landroidx/lifecycle/O;->b:Landroidx/lifecycle/O;

    iget-object v1, p2, LV/b;->a:Ljava/util/Map;

    move-object v2, v1

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v2, Landroidx/lifecycle/I;->a:Landroidx/lifecycle/H;

    move-object v3, v1

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/lifecycle/I;->b:Landroidx/lifecycle/H;

    move-object v3, v1

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v0, Landroidx/lifecycle/O;->a:Landroidx/lifecycle/O;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/lifecycle/M;->a:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/M;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/M;->b:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/M;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/L;->b:Landroidx/lifecycle/P;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/P;->b(Ljava/lang/Class;LV/d;)Landroidx/lifecycle/N;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroidx/lifecycle/I;->a(LV/d;)Landroidx/lifecycle/G;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/M;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/N;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/I;->a(LV/d;)Landroidx/lifecycle/G;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/M;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/N;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/m;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/L;->d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/N;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Landroidx/lifecycle/N;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/m;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/lifecycle/L;->e:La0/e;

    invoke-static {p1, p0, v0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/N;La0/e;Landroidx/lifecycle/m;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/N;
    .locals 7

    iget-object v0, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/m;

    if-eqz v0, :cond_9

    const-class v0, Landroidx/lifecycle/a;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/lifecycle/L;->a:Landroid/app/Application;

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/lifecycle/M;->a:Ljava/util/List;

    invoke-static {p1, v1}, Landroidx/lifecycle/M;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/M;->b:Ljava/util/List;

    invoke-static {p1, v1}, Landroidx/lifecycle/M;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    iget-object p2, p0, Landroidx/lifecycle/L;->a:Landroid/app/Application;

    if-eqz p2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/L;->b:Landroidx/lifecycle/P;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/P;->a(Ljava/lang/Class;)Landroidx/lifecycle/N;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/lifecycle/O;->c:Landroidx/lifecycle/O;

    if-nez p0, :cond_2

    new-instance p0, Landroidx/lifecycle/O;

    invoke-direct {p0}, Landroidx/lifecycle/O;-><init>()V

    sput-object p0, Landroidx/lifecycle/O;->c:Landroidx/lifecycle/O;

    :cond_2
    sget-object p0, Landroidx/lifecycle/O;->c:Landroidx/lifecycle/O;

    invoke-static {p0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/O;->a(Ljava/lang/Class;)Landroidx/lifecycle/N;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    iget-object v2, p0, Landroidx/lifecycle/L;->e:La0/e;

    iget-object v3, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/m;

    iget-object v4, p0, Landroidx/lifecycle/L;->c:Landroid/os/Bundle;

    invoke-virtual {v2, p2}, La0/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/G;->f:[Ljava/lang/Class;

    invoke-static {v5, v4}, Landroidx/lifecycle/F;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/G;

    move-result-object v4

    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v5, p2, v4}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/G;)V

    iget-boolean v6, v5, Landroidx/lifecycle/SavedStateHandleController;->e:Z

    if-nez v6, :cond_8

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/lifecycle/SavedStateHandleController;->e:Z

    invoke-virtual {v3, v5}, Landroidx/lifecycle/m;->a(Landroidx/lifecycle/p;)V

    iget-object v6, v4, Landroidx/lifecycle/G;->e:Landroidx/lifecycle/E;

    invoke-virtual {v2, p2, v6}, La0/e;->c(Ljava/lang/String;La0/d;)V

    invoke-static {v3, v2}, Landroidx/lifecycle/j;->b(Landroidx/lifecycle/m;La0/e;)V

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/lifecycle/L;->a:Landroid/app/Application;

    if-eqz p0, :cond_4

    filled-new-array {p0, v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, p0}, Landroidx/lifecycle/M;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/N;

    move-result-object p0

    goto :goto_2

    :cond_4
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, p0}, Landroidx/lifecycle/M;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/N;

    move-result-object p0

    :goto_2
    const-string p1, "androidx.lifecycle.savedstate.vm.tag"

    iget-object p2, p0, Landroidx/lifecycle/N;->a:Ljava/util/Map;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/lifecycle/N;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v1, p0, Landroidx/lifecycle/N;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v5, v0

    :goto_3
    iget-boolean p1, p0, Landroidx/lifecycle/N;->c:Z

    if-eqz p1, :cond_7

    invoke-static {v5}, Landroidx/lifecycle/N;->a(Ljava/lang/Object;)V

    :cond_7
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached to lifecycleOwner"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
