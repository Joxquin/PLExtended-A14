.class public final synthetic LX1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LX1/s;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LX1/s;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LX1/r;->d:I

    iput-object p1, p0, LX1/r;->e:LX1/s;

    iput-object p2, p0, LX1/r;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, LX1/r;->d:I

    const/4 v1, 0x1

    const v2, 0x3dcccccd    # 0.1f

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, LX1/r;->e:LX1/s;

    iget-object p0, p0, LX1/r;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v0, v0, LX1/s;->a:LX1/t;

    iget-object v5, v0, LX1/t;->b:LX1/u;

    iput-boolean v4, v5, LX1/u;->u:Z

    iget v4, v5, LX1/u;->z:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v5}, LX1/u;->i(LX1/u;)Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v2, v0, LX1/t;->b:LX1/u;

    invoke-virtual {v2, v1}, LX1/u;->o(Z)V

    iget-object v0, v0, LX1/t;->a:LV1/i;

    invoke-interface {v0, p0}, LV1/i;->d(Ljava/lang/String;)V

    iget-object p0, v2, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->f(Landroid/graphics/RectF;)V

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, LX1/r;->e:LX1/s;

    iget-object p0, p0, LX1/r;->f:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/RectF;

    iget-object v0, v0, LX1/s;->a:LX1/t;

    iget-object v5, v0, LX1/t;->b:LX1/u;

    iput-boolean v4, v5, LX1/u;->u:Z

    iget v4, v5, LX1/u;->z:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v5}, LX1/u;->h(LX1/u;)Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v2, v0, LX1/t;->b:LX1/u;

    invoke-virtual {v2, v1}, LX1/u;->o(Z)V

    iget-object v0, v0, LX1/t;->a:LV1/i;

    invoke-interface {v0, p0}, LV1/i;->c(Landroid/graphics/RectF;)V

    iget-object v0, v2, LX1/u;->h:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->f(Landroid/graphics/RectF;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
