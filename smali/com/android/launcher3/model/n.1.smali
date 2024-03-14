.class public final synthetic Lcom/android/launcher3/model/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/model/n;->a:I

    iput-object p1, p0, Lcom/android/launcher3/model/n;->b:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/n;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/model/n;->b:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->d(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/model/n;->b:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->f(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/model/n;->b:Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;

    check-cast p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/launcher3/model/s;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/model/s;-><init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;I)V

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/LauncherBinder;

    iget-object p1, p0, Lcom/android/launcher3/model/LauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/model/LauncherBinder;->d(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/util/LooperExecutor;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
