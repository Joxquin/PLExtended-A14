.class public final synthetic LJ0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, LJ0/d;->d:I

    iput-object p1, p0, LJ0/d;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LJ0/d;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LJ0/d;->e:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    return-void

    :pswitch_1
    iget-object p0, p0, LJ0/d;->e:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->b(Lcom/android/launcher3/dragndrop/DragLayer;)V

    return-void

    :goto_0
    iget-object p0, p0, LJ0/d;->e:Landroid/view/View;

    sget v0, Lcom/android/launcher3/dragndrop/DragLayer;->d:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
