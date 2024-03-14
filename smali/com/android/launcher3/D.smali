.class public final synthetic Lcom/android/launcher3/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/InvariantDeviceProfile;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/D;->d:I

    iput-object p3, p0, Lcom/android/launcher3/D;->e:Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object p2, p0, Lcom/android/launcher3/D;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/D;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/D;->e:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object p0, p0, Lcom/android/launcher3/D;->f:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->b(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/D;->e:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object p0, p0, Lcom/android/launcher3/D;->f:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v1, p0}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
