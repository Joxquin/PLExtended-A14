.class public final Lk2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/r;


# instance fields
.field public final synthetic a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final synthetic b:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lk2/e;->e:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    iput-object p2, p0, Lk2/e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Lk2/e;->b:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p4, p0, Lk2/e;->c:Landroid/view/View;

    iput p5, p0, Lk2/e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 6

    iget-object v0, p0, Lk2/e;->e:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    iget-object v1, p0, Lk2/e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lk2/e;->b:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v3, p0, Lk2/e;->c:Landroid/view/View;

    iget v4, p0, Lk2/e;->d:I

    const/4 p0, 0x0

    filled-new-array {p0, p0}, [I

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I[I)V

    const/4 p0, 0x1

    return p0
.end method
