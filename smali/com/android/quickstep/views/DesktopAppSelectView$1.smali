.class Lcom/android/quickstep/views/DesktopAppSelectView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/DesktopAppSelectView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/DesktopAppSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/DesktopAppSelectView$1;->this$0:Lcom/android/quickstep/views/DesktopAppSelectView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/quickstep/views/DesktopAppSelectView$1;->this$0:Lcom/android/quickstep/views/DesktopAppSelectView;

    invoke-static {p0}, Lcom/android/quickstep/views/DesktopAppSelectView;->e(Lcom/android/quickstep/views/DesktopAppSelectView;)V

    return-void
.end method
