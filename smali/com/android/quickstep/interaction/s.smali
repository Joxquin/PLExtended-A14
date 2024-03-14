.class public final synthetic Lcom/android/quickstep/interaction/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/quickstep/interaction/TutorialController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/TutorialController;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/interaction/s;->d:I

    iput-object p1, p0, Lcom/android/quickstep/interaction/s;->e:Lcom/android/quickstep/interaction/TutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/interaction/s;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/interaction/s;->e:Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/TutorialController;->d(Lcom/android/quickstep/interaction/TutorialController;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/quickstep/interaction/s;->e:Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/TutorialController;->i(Lcom/android/quickstep/interaction/TutorialController;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/quickstep/interaction/s;->e:Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/TutorialController;->g(Lcom/android/quickstep/interaction/TutorialController;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/quickstep/interaction/s;->e:Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/TutorialController;->f(Lcom/android/quickstep/interaction/TutorialController;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/quickstep/interaction/s;->e:Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/TutorialController;->b(Lcom/android/quickstep/interaction/TutorialController;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/interaction/s;->e:Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/TutorialController;->a(Lcom/android/quickstep/interaction/TutorialController;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
