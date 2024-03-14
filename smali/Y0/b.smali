.class public final synthetic LY0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/b;->d:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LY0/b;->d:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->a(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;)V

    return-void
.end method
