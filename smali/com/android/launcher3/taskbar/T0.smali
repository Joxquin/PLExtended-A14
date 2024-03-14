.class public final synthetic Lcom/android/launcher3/taskbar/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/TaskbarViewController;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarViewController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/T0;->d:Lcom/android/launcher3/taskbar/TaskbarViewController;

    iput p2, p0, Lcom/android/launcher3/taskbar/T0;->e:I

    iput p3, p0, Lcom/android/launcher3/taskbar/T0;->f:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/T0;->d:Lcom/android/launcher3/taskbar/TaskbarViewController;

    iget v1, p0, Lcom/android/launcher3/taskbar/T0;->e:I

    iget p0, p0, Lcom/android/launcher3/taskbar/T0;->f:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->a(Lcom/android/launcher3/taskbar/TaskbarViewController;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
