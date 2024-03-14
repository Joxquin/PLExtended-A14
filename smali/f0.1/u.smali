.class public final Lf0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# instance fields
.field public final synthetic a:Lf0/x;


# direct methods
.method public constructor <init>(Lf0/x;)V
    .locals 0

    iput-object p1, p0, Lf0/u;->a:Lf0/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 5

    iget-object p1, p0, Lf0/u;->a:Lf0/x;

    iget p3, p1, Lf0/x;->U:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lf0/x;->T:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lf0/u;->a:Lf0/x;

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

    iget-object p0, p0, Lf0/u;->a:Lf0/x;

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
