.class public final synthetic Lcom/google/android/material/timepicker/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/material/timepicker/l;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/timepicker/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/timepicker/k;->d:Lcom/google/android/material/timepicker/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/k;->d:Lcom/google/android/material/timepicker/l;

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/l;->r()V

    return-void
.end method
