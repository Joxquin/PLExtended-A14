.class public final synthetic Lcom/android/quickstep/util/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

.field public final synthetic e:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field public final synthetic f:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/L;->d:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    iput-object p2, p0, Lcom/android/quickstep/util/L;->e:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iput-object p3, p0, Lcom/android/quickstep/util/L;->f:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/L;->d:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    iget-object v1, p0, Lcom/android/quickstep/util/L;->e:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object p0, p0, Lcom/android/quickstep/util/L;->f:Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->b(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController$DesktopSplitRecentsAnimationListener;)V

    return-void
.end method
