.class public final synthetic Lcom/android/launcher3/uioverrides/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/uioverrides/RecentsViewStateController;

.field public final synthetic e:Lcom/android/launcher3/LauncherState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/RecentsViewStateController;Lcom/android/launcher3/LauncherState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/g;->d:Lcom/android/launcher3/uioverrides/RecentsViewStateController;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/g;->e:Lcom/android/launcher3/LauncherState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/g;->d:Lcom/android/launcher3/uioverrides/RecentsViewStateController;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/g;->e:Lcom/android/launcher3/LauncherState;

    iget-object v0, v0, Lcom/android/launcher3/uioverrides/BaseRecentsViewStateController;->mLauncher:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/BaseDepthController;->setHasContentBehindLauncher(Z)V

    return-void
.end method
