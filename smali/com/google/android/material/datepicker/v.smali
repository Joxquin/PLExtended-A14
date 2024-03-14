.class public final Lcom/google/android/material/datepicker/v;
.super Lcom/google/android/material/datepicker/E;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/v;->a:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/E;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    sget p1, Lcom/google/android/material/datepicker/MaterialDatePicker;->z:I

    iget-object p0, p0, Lcom/google/android/material/datepicker/v;->a:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->h()V

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker;->x:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->b()Lcom/google/android/material/datepicker/g;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/material/datepicker/g;->h()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
