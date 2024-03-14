.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/LauncherState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherState;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/S;->a:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/S;->b:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/S;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/S;->b:Lcom/android/launcher3/LauncherState;

    check-cast p1, Lcom/android/launcher3/allapps/AllAppsTransitionListener;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {p1, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionListener;->onAllAppsTransitionStart(Z)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/S;->b:Lcom/android/launcher3/LauncherState;

    check-cast p1, Lcom/android/launcher3/allapps/AllAppsTransitionListener;

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/uioverrides/states/AllAppsState;

    if-ne p0, v0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    invoke-interface {p1, v1}, Lcom/android/launcher3/allapps/AllAppsTransitionListener;->onAllAppsTransitionEnd(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
