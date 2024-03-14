.class public final synthetic LZ0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ0/o;->d:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    iput-boolean p2, p0, LZ0/o;->e:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, LZ0/o;->d:Lcom/android/launcher3/taskbar/bubbles/BubbleView;

    iget-boolean p0, p0, LZ0/o;->e:Z

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleView;->r(Lcom/android/launcher3/taskbar/bubbles/BubbleView;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
