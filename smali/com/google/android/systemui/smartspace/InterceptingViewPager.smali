.class public Lcom/google/android/systemui/smartspace/InterceptingViewPager;
.super Lj0/n;
.source "SourceFile"


# instance fields
.field public final T:LK2/L;

.field public final U:LK2/L;

.field public final V:LK2/M;

.field public W:Z

.field public a0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lj0/n;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, LK2/L;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, LK2/L;-><init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->T:LK2/L;

    .line 3
    new-instance p1, LK2/L;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, LK2/L;-><init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->U:LK2/L;

    .line 4
    new-instance p1, LK2/M;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, LK2/M;-><init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->V:LK2/M;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Lj0/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, LK2/L;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LK2/L;-><init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->T:LK2/L;

    .line 7
    new-instance p1, LK2/L;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, LK2/L;-><init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->U:LK2/L;

    .line 8
    new-instance p1, LK2/M;

    invoke-direct {p1, p0, p2}, LK2/M;-><init>(Lcom/google/android/systemui/smartspace/InterceptingViewPager;I)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->V:LK2/M;

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->U:LK2/L;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->z(Landroid/view/MotionEvent;LK2/L;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->T:LK2/L;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->z(Landroid/view/MotionEvent;LK2/L;)Z

    move-result p0

    return p0
.end method

.method public final y()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->a0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->a0:Z

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->V:LK2/M;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final z(Landroid/view/MotionEvent;LK2/L;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->y()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->W:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->y()V

    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->a0:Z

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->V:LK2/M;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v0, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->W:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->y()V

    return v2

    :cond_3
    iget v0, p2, LK2/L;->a:I

    iget-object p2, p2, LK2/L;->b:Lcom/google/android/systemui/smartspace/InterceptingViewPager;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-super {p2, p1}, Lj0/n;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_2

    :goto_1
    invoke-super {p2, p1}, Lj0/n;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/InterceptingViewPager;->y()V

    return v2

    :cond_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
