.class public final Ln2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Ln2/j;


# direct methods
.method public constructor <init>(Ln2/j;)V
    .locals 0

    iput-object p1, p0, Ln2/i;->d:Ln2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln2/i;->d:Ln2/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ln2/j;->b:Z

    iget-object v0, v0, Ln2/j;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:LQ/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQ/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ln2/i;->d:Ln2/j;

    iget v0, p0, Ln2/j;->a:I

    invoke-virtual {p0, v0}, Ln2/j;->a(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ln2/i;->d:Ln2/j;

    iget-object v0, p0, Ln2/j;->d:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget p0, p0, Ln2/j;->a:I

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(I)V

    :cond_1
    :goto_0
    return-void
.end method
