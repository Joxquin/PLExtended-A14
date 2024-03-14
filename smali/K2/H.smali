.class public final synthetic LK2/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/systemui/smartspace/IcuDateTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/H;->d:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, LK2/H;->d:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    sget v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->t:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->a(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->q:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->p:LK2/H;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
