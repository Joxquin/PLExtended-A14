.class public final Lcom/google/android/material/timepicker/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/material/timepicker/w;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/timepicker/u;->d:Lcom/google/android/material/timepicker/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/timepicker/u;->d:Lcom/google/android/material/timepicker/w;

    const v0, 0x7f0a02f1

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/w;->b(I)V

    return-void
.end method
