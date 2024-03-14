.class public final Lcom/google/android/material/timepicker/z;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/timepicker/z;->d:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p0, p0, Lcom/google/android/material/timepicker/z;->d:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->l:Lcom/google/android/material/timepicker/B;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    check-cast p0, Lcom/google/android/material/timepicker/MaterialTimePicker;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->w:I

    iget-object v1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->u:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->b(Lcom/google/android/material/button/MaterialButton;)V

    iget-object p0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker;->k:Lcom/google/android/material/timepicker/w;

    iget-object v1, p0, Lcom/google/android/material/timepicker/w;->e:Lcom/google/android/material/timepicker/n;

    iget v2, v1, Lcom/google/android/material/timepicker/n;->i:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/timepicker/w;->h:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v3, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    iget v1, v1, Lcom/google/android/material/timepicker/n;->i:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    move p1, v0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/timepicker/w;->i:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    return v0

    :cond_2
    return p1
.end method
