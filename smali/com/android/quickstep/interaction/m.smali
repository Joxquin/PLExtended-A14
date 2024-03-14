.class public final synthetic Lcom/android/quickstep/interaction/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/quickstep/interaction/MenuFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/MenuFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/interaction/m;->d:I

    iput-object p1, p0, Lcom/android/quickstep/interaction/m;->e:Lcom/android/quickstep/interaction/MenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/interaction/m;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/interaction/m;->e:Lcom/android/quickstep/interaction/MenuFragment;

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/MenuFragment;->f(Lcom/android/quickstep/interaction/MenuFragment;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/quickstep/interaction/m;->e:Lcom/android/quickstep/interaction/MenuFragment;

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/MenuFragment;->e(Lcom/android/quickstep/interaction/MenuFragment;Landroid/view/View;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/quickstep/interaction/m;->e:Lcom/android/quickstep/interaction/MenuFragment;

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/MenuFragment;->d(Lcom/android/quickstep/interaction/MenuFragment;Landroid/view/View;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/interaction/m;->e:Lcom/android/quickstep/interaction/MenuFragment;

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/MenuFragment;->b(Lcom/android/quickstep/interaction/MenuFragment;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
