.class public interface abstract Lcom/android/wm/shell/desktopmode/IDesktopMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getVisibleTaskCount(I)I
.end method

.method public abstract hideStashedDesktopApps(I)V
.end method

.method public abstract onDesktopSplitSelectAnimComplete(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract setTaskListener(Lcom/android/wm/shell/desktopmode/IDesktopTaskListener;)V
.end method

.method public abstract showDesktopApp(I)V
.end method

.method public abstract showDesktopApps(I)V
.end method

.method public abstract stashDesktopApps(I)V
.end method
