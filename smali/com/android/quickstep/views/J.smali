.class public final synthetic Lcom/android/quickstep/views/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/J;->d:I

    iput-object p2, p0, Lcom/android/quickstep/views/J;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/quickstep/views/J;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/J;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/views/J;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/views/J;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->j(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskThumbnailView;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/quickstep/views/J;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/views/J;->f:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->s(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/quickstep/views/J;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/views/J;->f:Ljava/lang/Object;

    check-cast p0, Landroid/content/LocusId;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->k(Lcom/android/quickstep/views/RecentsView;Landroid/content/LocusId;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/android/quickstep/views/J;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView$21;

    iget-object p0, p0, Lcom/android/quickstep/views/J;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView$21;->b(Lcom/android/quickstep/views/RecentsView$21;Ljava/lang/Boolean;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/views/J;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/views/J;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->c0(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
