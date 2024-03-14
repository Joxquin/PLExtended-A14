.class public final synthetic Lcom/android/systemui/shared/rotation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/systemui/shared/rotation/RotationButtonController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/rotation/RotationButtonController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/shared/rotation/c;->d:I

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/c;->e:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/shared/rotation/c;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/c;->e:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-static {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->b(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/c;->e:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-static {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->g(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/c;->e:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-static {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->e(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/rotation/c;->e:Lcom/android/systemui/shared/rotation/RotationButtonController;

    invoke-static {p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->c(Lcom/android/systemui/shared/rotation/RotationButtonController;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
