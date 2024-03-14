.class final synthetic Lcom/android/wm/shell/animation/PhysicsAnimator$startAction$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    const-class v3, Lcom/android/wm/shell/animation/l;

    const-string v4, "startInternal"

    const-string v5, "startInternal$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib()V"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/animation/l;

    iget-object v1, v0, Lcom/android/wm/shell/animation/l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v0, "PhysicsAnimator"

    const-string v1, "Trying to animate a GC-ed object."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v10, v0, Lcom/android/wm/shell/animation/l;->g:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/wm/shell/animation/l;->d:Landroid/util/ArrayMap;

    iget-object v12, v0, Lcom/android/wm/shell/animation/l;->e:Landroid/util/ArrayMap;

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/dynamicanimation/animation/q;

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/wm/shell/animation/e;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/wm/shell/animation/g;

    invoke-virtual {v13, v7}, Landroidx/dynamicanimation/animation/q;->getValue(Ljava/lang/Object;)F

    move-result v6

    if-eqz v12, :cond_2

    new-instance v14, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;

    move-object v1, v14

    move-object v2, v12

    move-object v3, v0

    move-object v4, v13

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;-><init>(Lcom/android/wm/shell/animation/e;Lcom/android/wm/shell/animation/l;Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;F)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v11, :cond_1

    if-nez v12, :cond_4

    iget-object v1, v0, Lcom/android/wm/shell/animation/l;->b:Landroid/util/ArrayMap;

    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Landroidx/dynamicanimation/animation/s;

    invoke-direct {v2, v13, v7}, Landroidx/dynamicanimation/animation/s;-><init>(Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v13}, Lcom/android/wm/shell/animation/l;->c(Landroidx/dynamicanimation/animation/m;Landroidx/dynamicanimation/animation/q;)V

    invoke-virtual {v1, v13, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    check-cast v2, Landroidx/dynamicanimation/animation/s;

    invoke-virtual {v11, v2}, Lcom/android/wm/shell/animation/g;->a(Landroidx/dynamicanimation/animation/s;)V

    new-instance v1, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$2;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$2;-><init>(Landroidx/dynamicanimation/animation/s;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget v3, v12, Lcom/android/wm/shell/animation/e;->b:F

    iget v4, v12, Lcom/android/wm/shell/animation/e;->c:F

    new-instance v12, Lcom/android/wm/shell/animation/k;

    move-object v1, v12

    move-object v2, v13

    move-object v5, v11

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/animation/k;-><init>(Landroidx/dynamicanimation/animation/q;FFLcom/android/wm/shell/animation/g;Lcom/android/wm/shell/animation/l;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v9, v0, Lcom/android/wm/shell/animation/l;->j:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/wm/shell/animation/f;

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/l;->d()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    iget-object v14, v0, Lcom/android/wm/shell/animation/l;->f:Ljava/util/ArrayList;

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v15, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/wm/shell/animation/l;->h:Ljava/util/ArrayList;

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v13

    move-object v2, v0

    move-object v0, v3

    move-object v3, v7

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/animation/f;-><init>(Lcom/android/wm/shell/animation/l;Ljava/lang/Object;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm3/a;

    invoke-interface {v2}, Lm3/a;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_2
    return-void
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$startAction$1;->a()V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
