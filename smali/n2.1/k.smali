.class public final Ln2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/r;


# instance fields
.field public final synthetic d:Ln2/q;


# direct methods
.method public constructor <init>(Ln2/q;)V
    .locals 0

    iput-object p1, p0, Ln2/k;->d:Ln2/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroidx/core/view/c0;)Landroidx/core/view/c0;
    .locals 1

    iget-object p0, p0, Ln2/k;->d:Ln2/q;

    iget-object p1, p0, Ln2/q;->p:Ln2/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, Ln2/q;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    new-instance p1, Ln2/p;

    iget-object v0, p0, Ln2/q;->l:Landroid/widget/FrameLayout;

    invoke-direct {p1, v0, p2}, Ln2/p;-><init>(Landroid/view/View;Landroidx/core/view/c0;)V

    iput-object p1, p0, Ln2/q;->p:Ln2/p;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln2/p;->e(Landroid/view/Window;)V

    iget-object p1, p0, Ln2/q;->i:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p0, p0, Ln2/q;->p:Ln2/p;

    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p2
.end method
