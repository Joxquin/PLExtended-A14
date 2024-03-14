.class public final Lcom/google/android/material/datepicker/x;
.super Lcom/google/android/material/datepicker/E;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/MaterialTextInputPicker;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialTextInputPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/MaterialTextInputPicker;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/E;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/datepicker/x;->a:Lcom/google/android/material/datepicker/MaterialTextInputPicker;

    iget-object p0, p0, Lcom/google/android/material/datepicker/PickerFragment;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/E;

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/E;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
