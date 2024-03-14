.class final Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/l;


# instance fields
.field final synthetic $anim:Landroidx/dynamicanimation/animation/m;

.field final synthetic $canceled:Z

.field final synthetic $property:Landroidx/dynamicanimation/animation/q;

.field final synthetic $value:F

.field final synthetic $velocity:F


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/q;ZFFLandroidx/dynamicanimation/animation/m;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$property:Landroidx/dynamicanimation/animation/q;

    iput-boolean p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$canceled:Z

    iput p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$value:F

    iput p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$velocity:F

    iput-object p5, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$anim:Landroidx/dynamicanimation/animation/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/wm/shell/animation/f;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$property:Landroidx/dynamicanimation/animation/q;

    iget-boolean v11, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$canceled:Z

    iget v12, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$value:F

    iget v13, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$velocity:F

    iget-object v0, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$anim:Landroidx/dynamicanimation/animation/m;

    instance-of v0, v0, Landroidx/dynamicanimation/animation/o;

    const-string v3, "property"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/wm/shell/animation/f;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v14, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v4, v1, Lcom/android/wm/shell/animation/f;->f:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lcom/android/wm/shell/animation/f;->f:I

    invoke-virtual {v1}, Lcom/android/wm/shell/animation/f;->a()V

    iget-object v4, v1, Lcom/android/wm/shell/animation/f;->g:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/wm/shell/animation/f;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/animation/h;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Le3/f;->a:Le3/f;

    invoke-interface {v6}, Lcom/android/wm/shell/animation/h;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v15, v1, Lcom/android/wm/shell/animation/f;->h:Lcom/android/wm/shell/animation/l;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/dynamicanimation/animation/q;

    invoke-virtual {v15, v4}, Lcom/android/wm/shell/animation/l;->e(Landroidx/dynamicanimation/animation/q;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v14

    :goto_2
    xor-int/lit8 v16, v3, 0x1

    iget-object v3, v1, Lcom/android/wm/shell/animation/f;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/animation/d;

    iget-object v4, v1, Lcom/android/wm/shell/animation/f;->a:Ljava/lang/Object;

    move-object v5, v2

    move v6, v0

    move v7, v11

    move v8, v12

    move v9, v13

    move/from16 v10, v16

    invoke-interface/range {v3 .. v10}, Lcom/android/wm/shell/animation/d;->a(Ljava/lang/Object;Landroidx/dynamicanimation/animation/q;ZZFFZ)V

    invoke-virtual {v15, v2}, Lcom/android/wm/shell/animation/l;->e(Landroidx/dynamicanimation/animation/q;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_7
    if-eqz v16, :cond_8

    if-nez v11, :cond_8

    iget-object v0, v1, Lcom/android/wm/shell/animation/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm3/a;

    invoke-interface {v1}, Lm3/a;->invoke()Ljava/lang/Object;

    goto :goto_3

    :cond_8
    move/from16 v14, v16

    :goto_4
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
