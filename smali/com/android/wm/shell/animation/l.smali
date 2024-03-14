.class public final Lcom/android/wm/shell/animation/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:Lm3/l;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Landroid/util/ArrayMap;

.field public final c:Landroid/util/ArrayMap;

.field public final d:Landroid/util/ArrayMap;

.field public final e:Landroid/util/ArrayMap;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public i:Lcom/android/wm/shell/animation/g;

.field public final j:Ljava/util/ArrayList;

.field public final k:Lm3/a;

.field public final l:Lm3/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;->d:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;

    sput-object v0, Lcom/android/wm/shell/animation/l;->m:Lm3/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/wm/shell/animation/l;->a:Ljava/lang/ref/WeakReference;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/l;->b:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/l;->c:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/l;->d:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/l;->e:Landroid/util/ArrayMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/l;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/l;->g:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/l;->h:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/wm/shell/animation/m;->b:Lcom/android/wm/shell/animation/g;

    iput-object p1, p0, Lcom/android/wm/shell/animation/l;->i:Lcom/android/wm/shell/animation/g;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/l;->j:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/wm/shell/animation/PhysicsAnimator$startAction$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$startAction$1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/animation/l;->k:Lm3/a;

    new-instance p1, Lcom/android/wm/shell/animation/PhysicsAnimator$cancelAction$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$cancelAction$1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/animation/l;->l:Lm3/l;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/animation/l;->c:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/animation/l;->l:Lm3/l;

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "flingAnimations.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lcom/android/wm/shell/animation/PhysicsAnimator$cancelAction$1;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$cancelAction$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/animation/l;->b:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "springAnimations.keys"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/wm/shell/animation/PhysicsAnimator$cancelAction$1;

    invoke-virtual {v2, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$cancelAction$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final varargs b([Landroidx/dynamicanimation/animation/q;)V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/animation/l;->l:Lm3/l;

    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    array-length v2, p1

    invoke-static {v2}, Lkotlin/collections/w;->a(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-string p1, "singleton(element)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlin/collections/EmptySet;->d:Lkotlin/collections/EmptySet;

    :cond_2
    :goto_1
    check-cast p0, Lcom/android/wm/shell/animation/PhysicsAnimator$cancelAction$1;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$cancelAction$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Landroidx/dynamicanimation/animation/m;Landroidx/dynamicanimation/animation/q;)V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/animation/i;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/animation/i;-><init>(Lcom/android/wm/shell/animation/l;Landroidx/dynamicanimation/animation/q;)V

    iget-boolean v1, p1, Landroidx/dynamicanimation/animation/m;->f:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Landroidx/dynamicanimation/animation/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/android/wm/shell/animation/j;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/wm/shell/animation/j;-><init>(Lcom/android/wm/shell/animation/l;Landroidx/dynamicanimation/animation/q;Landroidx/dynamicanimation/animation/m;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/m;->a(Landroidx/dynamicanimation/animation/j;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/animation/l;->d:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "springConfigs.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/animation/l;->e:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v1, "flingConfigs.keys"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/s;->m(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/collections/q;->e(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object v0
.end method

.method public final e(Landroidx/dynamicanimation/animation/q;)Z
    .locals 2

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/animation/l;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/dynamicanimation/animation/m;->f:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/animation/l;->c:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/o;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Landroidx/dynamicanimation/animation/m;->f:Z

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final f(Landroidx/dynamicanimation/animation/h;F)V
    .locals 2

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/animation/l;->i:Lcom/android/wm/shell/animation/g;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/wm/shell/animation/l;->g(Landroidx/dynamicanimation/animation/q;FFLcom/android/wm/shell/animation/g;)V

    return-void
.end method

.method public final g(Landroidx/dynamicanimation/animation/q;FFLcom/android/wm/shell/animation/g;)V
    .locals 2

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/wm/shell/animation/m;->a:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/android/wm/shell/animation/g;

    iget v1, p4, Lcom/android/wm/shell/animation/g;->a:F

    iget p4, p4, Lcom/android/wm/shell/animation/g;->b:F

    invoke-direct {v0, v1, p4, p3, p2}, Lcom/android/wm/shell/animation/g;-><init>(FFFF)V

    iget-object p0, p0, Lcom/android/wm/shell/animation/l;->d:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/animation/l;->k:Lm3/a;

    check-cast p0, Lcom/android/wm/shell/animation/PhysicsAnimator$startAction$1;

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$startAction$1;->invoke()Ljava/lang/Object;

    return-void
.end method
