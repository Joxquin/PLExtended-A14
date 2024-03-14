.class public final synthetic LZ0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wm/shell/animation/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

.field public final synthetic c:Landroid/graphics/PointF;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;Landroid/graphics/PointF;Lcom/android/launcher3/taskbar/bubbles/c;I)V
    .locals 0

    iput p4, p0, LZ0/l;->a:I

    iput-object p1, p0, LZ0/l;->b:Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    iput-object p2, p0, LZ0/l;->c:Landroid/graphics/PointF;

    iput-object p3, p0, LZ0/l;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Landroidx/dynamicanimation/animation/q;ZZFFZ)V
    .locals 0

    iget p2, p0, LZ0/l;->a:I

    iget-object p3, p0, LZ0/l;->d:Ljava/lang/Runnable;

    iget-object p5, p0, LZ0/l;->c:Landroid/graphics/PointF;

    iget-object p0, p0, LZ0/l;->b:Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-static {p0, p5, p3, p4, p7}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->b(Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;Landroid/graphics/PointF;Ljava/lang/Runnable;ZZ)V

    return-void

    :goto_0
    check-cast p1, Landroid/view/View;

    invoke-static {p0, p5, p3, p4, p7}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;->a(Lcom/android/launcher3/taskbar/bubbles/BubbleDragAnimator;Landroid/graphics/PointF;Ljava/lang/Runnable;ZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
