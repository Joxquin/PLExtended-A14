.class public final synthetic Lcom/android/quickstep/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/BackProgressAnimator$ProgressCallback;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/LauncherBackAnimationController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/S;->a:Lcom/android/quickstep/LauncherBackAnimationController$1;

    return-void
.end method


# virtual methods
.method public final onProgressUpdate(Landroid/window/BackEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/S;->a:Lcom/android/quickstep/LauncherBackAnimationController$1;

    invoke-static {p0, p1}, Lcom/android/quickstep/LauncherBackAnimationController$1;->e(Lcom/android/quickstep/LauncherBackAnimationController$1;Landroid/window/BackEvent;)V

    return-void
.end method
