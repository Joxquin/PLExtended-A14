.class public final Lcom/google/android/material/timepicker/v;
.super Lcom/google/android/material/timepicker/b;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/google/android/material/timepicker/n;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILcom/google/android/material/timepicker/n;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/material/timepicker/v;->e:I

    iput-object p3, p0, Lcom/google/android/material/timepicker/v;->f:Lcom/google/android/material/timepicker/n;

    invoke-direct {p0, p2, p1}, Lcom/google/android/material/timepicker/b;-><init>(ILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/timepicker/v;->e:I

    iget-object v1, p0, Lcom/google/android/material/timepicker/v;->f:Lcom/google/android/material/timepicker/n;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/google/android/material/timepicker/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/n;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f13011a

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, LM/e;->j(Ljava/lang/CharSequence;)V

    return-void

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/material/timepicker/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v1, Lcom/google/android/material/timepicker/n;->h:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f13011c

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, LM/e;->j(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
