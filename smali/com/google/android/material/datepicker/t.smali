.class public final Lcom/google/android/material/datepicker/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/datepicker/t;->d:I

    iput-object p1, p0, Lcom/google/android/material/datepicker/t;->e:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/datepicker/t;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/t;->e:Lcom/google/android/material/datepicker/MaterialDatePicker;

    iget-object v0, v0, Lcom/google/android/material/datepicker/MaterialDatePicker;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/datepicker/t;->e:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/material/datepicker/t;->e:Lcom/google/android/material/datepicker/MaterialDatePicker;

    iget-object p1, p1, Lcom/google/android/material/datepicker/MaterialDatePicker;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/w;

    iget-object v1, p0, Lcom/google/android/material/datepicker/t;->e:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->b()Lcom/google/android/material/datepicker/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/material/datepicker/g;->k()Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/w;->a()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/datepicker/t;->e:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :goto_2
    iget-object p1, p0, Lcom/google/android/material/datepicker/t;->e:Lcom/google/android/material/datepicker/MaterialDatePicker;

    iget-object v0, p1, Lcom/google/android/material/datepicker/MaterialDatePicker;->x:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->b()Lcom/google/android/material/datepicker/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/material/datepicker/g;->h()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/t;->e:Lcom/google/android/material/datepicker/MaterialDatePicker;

    iget-object p1, p1, Lcom/google/android/material/datepicker/MaterialDatePicker;->v:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    iget-object p1, p0, Lcom/google/android/material/datepicker/t;->e:Lcom/google/android/material/datepicker/MaterialDatePicker;

    iget-object v0, p1, Lcom/google/android/material/datepicker/MaterialDatePicker;->v:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->i(Lcom/google/android/material/internal/CheckableImageButton;)V

    iget-object p0, p0, Lcom/google/android/material/datepicker/t;->e:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->g()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
