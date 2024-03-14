.class public final synthetic LZ0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;I)V
    .locals 0

    iput p2, p0, LZ0/e;->d:I

    iput-object p1, p0, LZ0/e;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, LZ0/e;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LZ0/e;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->a(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;)V

    return-void

    :goto_0
    iget-object p0, p0, LZ0/e;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;->c(Lcom/android/launcher3/taskbar/bubbles/BubbleBarView;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
