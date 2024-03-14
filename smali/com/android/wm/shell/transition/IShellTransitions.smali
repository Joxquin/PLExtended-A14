.class public interface abstract Lcom/android/wm/shell/transition/IShellTransitions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract getShellApplyToken()Landroid/os/IBinder;
.end method

.method public abstract registerRemote(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V
.end method

.method public abstract unregisterRemote(Landroid/window/RemoteTransition;)V
.end method
