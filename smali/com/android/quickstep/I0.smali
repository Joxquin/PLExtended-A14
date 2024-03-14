.class public final synthetic Lcom/android/quickstep/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/quickstep/RecentsAnimationDeviceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/I0;->d:I

    iput-object p1, p0, Lcom/android/quickstep/I0;->e:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/I0;->d:I

    iget-object p0, p0, Lcom/android/quickstep/I0;->e:Lcom/android/quickstep/RecentsAnimationDeviceState;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->c(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->i(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    return-void

    :goto_0
    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->j(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
