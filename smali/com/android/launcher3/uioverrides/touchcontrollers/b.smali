.class public final synthetic Lcom/android/launcher3/uioverrides/touchcontrollers/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/b;->d:I

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/b;->e:Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/b;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/b;->e:Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->d(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/b;->e:Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->c(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/b;->e:Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->b(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/b;->e:Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;->a(Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
