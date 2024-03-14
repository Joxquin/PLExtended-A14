.class public final synthetic Lcom/android/quickstep/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/view/OrientationEventListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/OrientationEventListener;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/W0;->d:I

    iput-object p1, p0, Lcom/android/quickstep/W0;->e:Landroid/view/OrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/W0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/W0;->e:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/W0;->e:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
