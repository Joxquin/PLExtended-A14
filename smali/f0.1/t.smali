.class public final Lf0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Lf0/x;


# direct methods
.method public constructor <init>(Lf0/x;)V
    .locals 0

    iput-object p1, p0, Lf0/t;->a:Lf0/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    iget-object p1, p0, Lf0/t;->a:Lf0/x;

    iget p3, p1, Lf0/x;->U:I

    add-int/2addr p2, p3

    iput p2, p1, Lf0/x;->T:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lf0/t;->a:Lf0/x;

    iget-wide v0, p3, Lf0/x;->S:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0xc8

    if-eqz v2, :cond_0

    sub-long/2addr p1, v0

    cmp-long p1, p1, v3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p3, Lf0/x;->Q:Z

    iget-object p1, p3, Lf0/x;->R:Landroid/os/Handler;

    iget-object p2, p3, Lf0/x;->g0:Lf0/s;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lf0/t;->a:Lf0/x;

    invoke-virtual {p0}, Lf0/x;->x()V

    goto :goto_0

    :cond_0
    iget-boolean p0, p3, Lf0/x;->Q:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    iput-boolean p0, p3, Lf0/x;->Q:Z

    iget-object p0, p3, Lf0/x;->R:Landroid/os/Handler;

    iget-object p1, p3, Lf0/x;->g0:Lf0/s;

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lf0/t;->a:Lf0/x;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf0/x;->P:Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lf0/t;->a:Lf0/x;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lf0/x;->P:Z

    iget-boolean v2, v0, Lf0/x;->Q:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, v0, Lf0/x;->Q:Z

    iget-object v1, v0, Lf0/x;->R:Landroid/os/Handler;

    iget-object v0, v0, Lf0/x;->g0:Lf0/s;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lf0/t;->a:Lf0/x;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object p0, p0, Lf0/t;->a:Lf0/x;

    iget v1, p0, Lf0/x;->U:I

    add-int/2addr p1, v1

    iput p1, v0, Lf0/x;->T:I

    invoke-virtual {p0}, Lf0/x;->x()V

    :goto_0
    return-void
.end method
