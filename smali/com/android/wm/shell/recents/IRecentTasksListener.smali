.class public interface abstract Lcom/android/wm/shell/recents/IRecentTasksListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onRecentTasksChanged()V
.end method

.method public abstract onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method
