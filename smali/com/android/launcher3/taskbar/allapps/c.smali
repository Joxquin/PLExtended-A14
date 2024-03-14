.class public final synthetic Lcom/android/launcher3/taskbar/allapps/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/c;->d:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/allapps/c;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/c;->d:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/allapps/c;->e:Z

    iget-object v0, v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView$1;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->e(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;Z)V

    return-void
.end method
