.class public final synthetic Lcom/android/launcher3/model/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/LauncherModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherModel;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/model/f0;->a:I

    iput-object p1, p0, Lcom/android/launcher3/model/f0;->b:Lcom/android/launcher3/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageIconsUpdated(Landroid/os/UserHandle;Ljava/util/HashSet;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher3/model/f0;->a:I

    iget-object p0, p0, Lcom/android/launcher3/model/f0;->b:Lcom/android/launcher3/LauncherModel;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/launcher3/model/CacheDataUpdatedTask;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/launcher3/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/launcher3/model/CacheDataUpdatedTask;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/launcher3/model/CacheDataUpdatedTask;-><init>(ILandroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onWidgetLabelsUpdated(Landroid/os/UserHandle;Ljava/util/HashSet;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
