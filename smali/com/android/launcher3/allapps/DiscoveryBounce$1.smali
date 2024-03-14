.class final Lcom/android/launcher3/allapps/DiscoveryBounce$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/DiscoveryBounce;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/DiscoveryBounce;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$1;->this$0:Lcom/android/launcher3/allapps/DiscoveryBounce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    return-void
.end method

.method public final onStateTransitionStart(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$1;->this$0:Lcom/android/launcher3/allapps/DiscoveryBounce;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/DiscoveryBounce;->handleClose(Z)V

    return-void
.end method
