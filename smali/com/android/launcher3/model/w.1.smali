.class public final synthetic Lcom/android/launcher3/model/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/LauncherModel$CallbackTask;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/launcher3/LauncherModel$CallbackTask;I)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/model/w;->d:I

    iput-object p1, p0, Lcom/android/launcher3/model/w;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/w;->e:Lcom/android/launcher3/LauncherModel$CallbackTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/w;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/model/w;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;

    iget-object p0, p0, Lcom/android/launcher3/model/w;->e:Lcom/android/launcher3/LauncherModel$CallbackTask;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->a(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/model/w;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/LauncherBinder;

    iget-object p0, p0, Lcom/android/launcher3/model/w;->e:Lcom/android/launcher3/LauncherModel$CallbackTask;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/LauncherBinder;->a(Lcom/android/launcher3/model/LauncherBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
