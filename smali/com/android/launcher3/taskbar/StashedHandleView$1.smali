.class final Lcom/android/launcher3/taskbar/StashedHandleView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/StashedHandleView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/StashedHandleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleView$1;->this$0:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/StashedHandleView$1;->this$0:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/StashedHandleView;->a(Lcom/android/launcher3/taskbar/StashedHandleView;)V

    return-void
.end method
