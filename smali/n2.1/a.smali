.class public final Ln2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:I

.field public final synthetic f:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Ln2/a;->f:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Ln2/a;->d:Landroid/view/View;

    iput p3, p0, Ln2/a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ln2/a;->f:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Ln2/a;->d:Landroid/view/View;

    iget p0, p0, Ln2/a;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E(Landroid/view/View;IZ)V

    return-void
.end method
