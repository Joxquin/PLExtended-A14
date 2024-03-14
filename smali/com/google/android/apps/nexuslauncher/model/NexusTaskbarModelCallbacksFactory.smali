.class public final Lcom/google/android/apps/nexuslauncher/model/NexusTaskbarModelCallbacksFactory;
.super Lcom/android/launcher3/taskbar/TaskbarModelCallbacksFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacksFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;
    .locals 0

    const-string p0, "activityContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "container"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LT1/k;

    invoke-direct {p0, p1, p2}, LT1/k;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V

    return-object p0
.end method
