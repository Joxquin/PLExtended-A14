.class public final Lcom/google/android/material/timepicker/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic d:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/timepicker/c;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/timepicker/c;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/c;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/c;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/google/android/material/timepicker/c;->d:Lcom/google/android/material/timepicker/ClockFaceView;

    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->g:Lcom/google/android/material/timepicker/ClockHandView;

    iget v2, v2, Lcom/google/android/material/timepicker/ClockHandView;->k:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->n:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/material/timepicker/l;->e:I

    if-eq v0, v2, :cond_1

    iput v0, p0, Lcom/google/android/material/timepicker/l;->e:I

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/l;->r()V

    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->g:Lcom/google/android/material/timepicker/ClockHandView;

    iget p0, p0, Lcom/google/android/material/timepicker/l;->e:I

    iput p0, v0, Lcom/google/android/material/timepicker/ClockHandView;->t:I

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return v1
.end method
