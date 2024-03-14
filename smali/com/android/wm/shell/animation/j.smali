.class public final Lcom/android/wm/shell/animation/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/j;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/animation/l;

.field public final synthetic b:Landroidx/dynamicanimation/animation/q;

.field public final synthetic c:Landroidx/dynamicanimation/animation/m;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/animation/l;Landroidx/dynamicanimation/animation/q;Landroidx/dynamicanimation/animation/m;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/animation/j;->a:Lcom/android/wm/shell/animation/l;

    iput-object p2, p0, Lcom/android/wm/shell/animation/j;->b:Landroidx/dynamicanimation/animation/q;

    iput-object p3, p0, Lcom/android/wm/shell/animation/j;->c:Landroidx/dynamicanimation/animation/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/m;ZFF)V
    .locals 8

    iget-object p1, p0, Lcom/android/wm/shell/animation/j;->a:Lcom/android/wm/shell/animation/l;

    iget-object v0, p1, Lcom/android/wm/shell/animation/l;->j:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;

    iget-object v2, p0, Lcom/android/wm/shell/animation/j;->b:Landroidx/dynamicanimation/animation/q;

    iget-object v6, p0, Lcom/android/wm/shell/animation/j;->c:Landroidx/dynamicanimation/animation/m;

    move-object v1, v7

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;-><init>(Landroidx/dynamicanimation/animation/q;ZFFLandroidx/dynamicanimation/animation/m;)V

    const-string p2, "<this>"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lq3/c;

    invoke-static {v0}, Lkotlin/collections/n;->a(Ljava/util/List;)I

    move-result p3

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3}, Lq3/c;-><init>(II)V

    invoke-virtual {p2}, Lq3/a;->h()Lq3/b;

    move-result-object p2

    :goto_0
    iget-boolean p3, p2, Lq3/b;->f:Z

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lq3/b;->a()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eq p4, p3, :cond_1

    invoke-virtual {v0, p4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p4, p2, :cond_3

    invoke-static {v0}, Lkotlin/collections/n;->a(Ljava/util/List;)I

    move-result p2

    if-gt p4, p2, :cond_3

    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eq p2, p4, :cond_3

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    iget-object p2, p1, Lcom/android/wm/shell/animation/l;->b:Landroid/util/ArrayMap;

    iget-object p3, p0, Lcom/android/wm/shell/animation/j;->b:Landroidx/dynamicanimation/animation/q;

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iget-object p0, p0, Lcom/android/wm/shell/animation/j;->c:Landroidx/dynamicanimation/animation/m;

    invoke-static {p4, p0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p1, Lcom/android/wm/shell/animation/l;->c:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method
