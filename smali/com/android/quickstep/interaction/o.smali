.class public final synthetic Lcom/android/quickstep/interaction/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/interaction/o;->d:I

    iput-object p2, p0, Lcom/android/quickstep/interaction/o;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/interaction/o;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/interaction/o;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController$1;

    invoke-static {p0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController$1;->b(Lcom/android/quickstep/interaction/OverviewGestureTutorialController$1;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/quickstep/interaction/o;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController$1;

    invoke-static {p0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController$1;->a(Lcom/android/quickstep/interaction/OverviewGestureTutorialController$1;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/interaction/o;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialController;->r(Lcom/android/quickstep/interaction/OverviewGestureTutorialController;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
