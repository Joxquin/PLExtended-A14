.class public final Ll2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:Landroid/view/View;

.field public final e:Z

.field public final synthetic f:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Ll2/f;->f:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll2/f;->d:Landroid/view/View;

    iput-boolean p3, p0, Ll2/f;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ll2/f;->f:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:LQ/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQ/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll2/f;->d:Landroid/view/View;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Landroidx/core/view/x;->j(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Ll2/f;->e:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Ll2/f;->f:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method
