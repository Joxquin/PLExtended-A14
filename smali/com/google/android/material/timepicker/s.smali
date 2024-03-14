.class public final synthetic Lcom/google/android/material/timepicker/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo2/h;


# instance fields
.field public final synthetic a:Lcom/google/android/material/timepicker/w;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/timepicker/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/timepicker/s;->a:Lcom/google/android/material/timepicker/w;

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/material/timepicker/s;->a:Lcom/google/android/material/timepicker/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const p2, 0x7f0a020d

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/timepicker/w;->e:Lcom/google/android/material/timepicker/n;

    iget p2, p0, Lcom/google/android/material/timepicker/n;->j:I

    if-eq p1, p2, :cond_3

    iput p1, p0, Lcom/google/android/material/timepicker/n;->j:I

    iget p2, p0, Lcom/google/android/material/timepicker/n;->g:I

    const/16 v1, 0xc

    if-ge p2, v1, :cond_2

    if-ne p1, v0, :cond_2

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/material/timepicker/n;->g:I

    goto :goto_1

    :cond_2
    if-lt p2, v1, :cond_3

    if-nez p1, :cond_3

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/material/timepicker/n;->g:I

    :cond_3
    :goto_1
    return-void
.end method
