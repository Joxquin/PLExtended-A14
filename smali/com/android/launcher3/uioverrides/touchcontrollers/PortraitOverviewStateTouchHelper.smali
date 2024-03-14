.class public final Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mLauncher:Lcom/android/launcher3/Launcher;

.field mRecentsView:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/RecentsView;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitOverviewStateTouchHelper;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method
