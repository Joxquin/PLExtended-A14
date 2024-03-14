.class public final Landroidx/lifecycle/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/lifecycle/H;

.field public static final b:Landroidx/lifecycle/H;

.field public static final c:Landroidx/lifecycle/H;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/H;

    invoke-direct {v0}, Landroidx/lifecycle/H;-><init>()V

    sput-object v0, Landroidx/lifecycle/I;->a:Landroidx/lifecycle/H;

    new-instance v0, Landroidx/lifecycle/H;

    invoke-direct {v0}, Landroidx/lifecycle/H;-><init>()V

    sput-object v0, Landroidx/lifecycle/I;->b:Landroidx/lifecycle/H;

    new-instance v0, Landroidx/lifecycle/H;

    invoke-direct {v0}, Landroidx/lifecycle/H;-><init>()V

    sput-object v0, Landroidx/lifecycle/I;->c:Landroidx/lifecycle/H;

    return-void
.end method

.method public static final a(LV/d;)Landroidx/lifecycle/G;
    .locals 7

    sget-object v0, Landroidx/lifecycle/I;->a:Landroidx/lifecycle/H;

    iget-object p0, p0, LV/b;->a:Ljava/util/Map;

    move-object v1, p0

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/g;

    if-eqz v0, :cond_a

    sget-object v1, Landroidx/lifecycle/I;->b:Landroidx/lifecycle/H;

    move-object v2, p0

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/V;

    if-eqz v1, :cond_9

    sget-object v2, Landroidx/lifecycle/I;->c:Landroidx/lifecycle/H;

    move-object v3, p0

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Landroidx/lifecycle/O;->b:Landroidx/lifecycle/O;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_8

    invoke-interface {v0}, La0/g;->getSavedStateRegistry()La0/e;

    move-result-object v0

    invoke-virtual {v0}, La0/e;->b()La0/d;

    move-result-object v0

    instance-of v3, v0, Landroidx/lifecycle/J;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/lifecycle/J;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_7

    invoke-static {v1}, Landroidx/lifecycle/I;->c(Landroidx/lifecycle/V;)Landroidx/lifecycle/K;

    move-result-object v1

    iget-object v1, v1, Landroidx/lifecycle/K;->d:Ljava/util/Map;

    move-object v3, v1

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/G;

    if-nez v3, :cond_6

    sget-object v3, Landroidx/lifecycle/G;->f:[Ljava/lang/Class;

    iget-boolean v3, v0, Landroidx/lifecycle/J;->b:Z

    const/4 v5, 0x1

    if-nez v3, :cond_1

    iget-object v3, v0, Landroidx/lifecycle/J;->a:La0/e;

    const-string v6, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v3, v6}, La0/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v0, Landroidx/lifecycle/J;->c:Landroid/os/Bundle;

    iput-boolean v5, v0, Landroidx/lifecycle/J;->b:Z

    iget-object v3, v0, Landroidx/lifecycle/J;->d:Le3/c;

    invoke-interface {v3}, Le3/c;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/K;

    :cond_1
    iget-object v3, v0, Landroidx/lifecycle/J;->c:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    iget-object v6, v0, Landroidx/lifecycle/J;->c:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    invoke-virtual {v6, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3
    iget-object v6, v0, Landroidx/lifecycle/J;->c:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-ne v6, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    iput-object v4, v0, Landroidx/lifecycle/J;->c:Landroid/os/Bundle;

    :cond_5
    invoke-static {v3, v2}, Landroidx/lifecycle/F;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/G;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v3

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(La0/g;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/lifecycle/q;->getLifecycle()Landroidx/lifecycle/m;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/m;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    const-string v1, "lifecycle.currentState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->e:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->f:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {p0}, La0/g;->getSavedStateRegistry()La0/e;

    move-result-object v0

    invoke-virtual {v0}, La0/e;->b()La0/d;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/lifecycle/J;

    invoke-interface {p0}, La0/g;->getSavedStateRegistry()La0/e;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/V;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/J;-><init>(La0/e;Landroidx/lifecycle/V;)V

    invoke-interface {p0}, La0/g;->getSavedStateRegistry()La0/e;

    move-result-object v1

    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v1, v2, v0}, La0/e;->c(Ljava/lang/String;La0/d;)V

    invoke-interface {p0}, Landroidx/lifecycle/q;->getLifecycle()Landroidx/lifecycle/m;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/SavedStateHandleAttacher;

    invoke-direct {v1, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Landroidx/lifecycle/J;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/m;->a(Landroidx/lifecycle/p;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final c(Landroidx/lifecycle/V;)Landroidx/lifecycle/K;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;->d:Landroidx/lifecycle/SavedStateHandleSupport$savedStateHandlesVM$1$1;

    const-class v2, Landroidx/lifecycle/K;

    invoke-static {v2}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object v3

    const-string v4, "initializer"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LV/e;

    invoke-interface {v3}, Lkotlin/jvm/internal/c;->a()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3, v1}, LV/e;-><init>(Ljava/lang/Class;Lm3/l;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, LV/c;

    const/4 v3, 0x0

    new-array v3, v3, [LV/e;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LV/e;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LV/e;

    invoke-direct {v1, v0}, LV/c;-><init>([LV/e;)V

    new-instance v0, Landroidx/lifecycle/T;

    invoke-interface {p0}, Landroidx/lifecycle/V;->getViewModelStore()Landroidx/lifecycle/U;

    move-result-object v3

    instance-of v4, p0, Landroidx/lifecycle/h;

    if-eqz v4, :cond_0

    check-cast p0, Landroidx/lifecycle/h;

    invoke-interface {p0}, Landroidx/lifecycle/h;->getDefaultViewModelCreationExtras()LV/b;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, LV/a;->b:LV/a;

    :goto_0
    invoke-direct {v0, v3, v1, p0}, Landroidx/lifecycle/T;-><init>(Landroidx/lifecycle/U;Landroidx/lifecycle/Q;LV/b;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v0, v2, p0}, Landroidx/lifecycle/T;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/N;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/K;

    return-object p0
.end method
