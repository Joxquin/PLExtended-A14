.class final Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

.field final synthetic val$animate:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;->val$animate:Z

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/c;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/taskbar/allapps/c;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;Z)V

    invoke-static {p1, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->d(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/allapps/c;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->b(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->c(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
