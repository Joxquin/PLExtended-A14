.class public final Lcom/google/android/material/timepicker/t;
.super Lx2/q;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/material/timepicker/w;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/timepicker/w;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/timepicker/t;->d:I

    iput-object p1, p0, Lcom/google/android/material/timepicker/t;->e:Lcom/google/android/material/timepicker/w;

    invoke-direct {p0}, Lx2/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget v0, p0, Lcom/google/android/material/timepicker/t;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/timepicker/t;->e:Lcom/google/android/material/timepicker/w;

    iget-object p0, p0, Lcom/google/android/material/timepicker/w;->e:Lcom/google/android/material/timepicker/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, p0, Lcom/google/android/material/timepicker/n;->h:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/timepicker/t;->e:Lcom/google/android/material/timepicker/w;

    iget-object p0, p0, Lcom/google/android/material/timepicker/w;->e:Lcom/google/android/material/timepicker/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    rem-int/lit8 p1, p1, 0x3c

    iput p1, p0, Lcom/google/android/material/timepicker/n;->h:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :goto_1
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/timepicker/t;->e:Lcom/google/android/material/timepicker/w;

    iget-object p0, p0, Lcom/google/android/material/timepicker/w;->e:Lcom/google/android/material/timepicker/n;

    invoke-virtual {p0, v1}, Lcom/google/android/material/timepicker/n;->f(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/timepicker/t;->e:Lcom/google/android/material/timepicker/w;

    iget-object p0, p0, Lcom/google/android/material/timepicker/w;->e:Lcom/google/android/material/timepicker/n;

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/n;->f(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
