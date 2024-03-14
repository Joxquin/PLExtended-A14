.class public final Lcom/android/wm/shell/animation/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/k;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/animation/l;

.field public final synthetic b:Landroidx/dynamicanimation/animation/q;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/animation/l;Landroidx/dynamicanimation/animation/q;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/animation/i;->a:Lcom/android/wm/shell/animation/l;

    iput-object p2, p0, Lcom/android/wm/shell/animation/i;->b:Landroidx/dynamicanimation/animation/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/animation/i;->a:Lcom/android/wm/shell/animation/l;

    iget-object v1, v0, Lcom/android/wm/shell/animation/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Lcom/android/wm/shell/animation/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/animation/f;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/wm/shell/animation/i;->b:Landroidx/dynamicanimation/animation/q;

    const-string v5, "property"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/wm/shell/animation/f;->b:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/android/wm/shell/animation/b;

    invoke-direct {v5, p1, p2}, Lcom/android/wm/shell/animation/b;-><init>(FF)V

    iget-object v6, v3, Lcom/android/wm/shell/animation/f;->g:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/wm/shell/animation/f;->a()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
