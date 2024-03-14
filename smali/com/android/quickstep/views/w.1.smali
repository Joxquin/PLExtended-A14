.class public final synthetic Lcom/android/quickstep/views/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/quickstep/views/w;->a:I

    iput-object p1, p0, Lcom/android/quickstep/views/w;->b:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/views/w;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/w;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/views/w;->b:Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/views/w;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/views/RecentsView;->q(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/quickstep/views/w;->b:Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/views/w;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/views/RecentsView;->A(Lcom/android/quickstep/views/RecentsView;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/views/w;->b:Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/quickstep/views/w;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/animation/Interpolator;

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/views/RecentsView;->g(Lcom/android/quickstep/views/RecentsView;Landroid/view/animation/Interpolator;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
