.class public final synthetic LA0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA0/n;->a:I

    iput-object p2, p0, LA0/n;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    iget v0, p0, LA0/n;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LA0/n;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    check-cast p1, LA0/w;

    iget-object v0, p1, LA0/w;->d:Landroid/view/View;

    if-ne p0, v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iput-object v1, p1, LA0/w;->d:Landroid/view/View;

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, LA0/n;->b:Ljava/lang/Object;

    check-cast p0, LA0/w;

    check-cast p1, LA0/u;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, p1, LA0/u;->h:J

    iget v0, p0, LA0/w;->g:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, p0, LA0/w;->g:I

    iget-object v5, p0, LA0/w;->m:LA0/x;

    iget v5, v5, LA0/x;->a:I

    const/4 v6, 0x0

    if-lt v0, v5, :cond_1

    iput v6, p0, LA0/w;->g:I

    :cond_1
    iget-object v0, p0, LA0/w;->i:[J

    iget v5, p0, LA0/w;->g:I

    aput-wide v2, v0, v5

    iget-object v0, p0, LA0/w;->j:[LA0/t;

    aget-object v0, v0, v5

    move-object v2, p1

    move-object v3, v1

    move-object v5, v3

    :goto_1
    if-nez v0, :cond_2

    new-instance v7, LA0/t;

    invoke-direct {v7}, LA0/t;-><init>()V

    move-object v12, v7

    move-object v7, v0

    move-object v0, v12

    goto :goto_2

    :cond_2
    iget-object v7, v0, LA0/t;->t:LA0/t;

    iput-object v1, v0, LA0/t;->t:LA0/t;

    :goto_2
    iget v8, v2, LA0/u;->e:I

    if-gez v8, :cond_6

    iget-object v8, v2, LA0/u;->d:Landroid/view/View;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    iget v9, p0, LA0/w;->g:I

    if-nez v9, :cond_3

    iget-object v9, p0, LA0/w;->m:LA0/x;

    iget v9, v9, LA0/x;->a:I

    :cond_3
    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, LA0/w;->j:[LA0/t;

    aget-object v9, v10, v9

    :goto_3
    if-eqz v9, :cond_4

    iget v10, v9, LA0/t;->b:I

    if-eq v10, v8, :cond_4

    iget-object v9, v9, LA0/t;->t:LA0/t;

    goto :goto_3

    :cond_4
    if-eqz v9, :cond_5

    iget v8, v9, LA0/t;->c:I

    goto :goto_4

    :cond_5
    move v8, v6

    :goto_4
    iput v8, v2, LA0/u;->e:I

    goto :goto_5

    :cond_6
    move-object v9, v1

    :goto_5
    iget v8, v2, LA0/u;->e:I

    iput v8, v0, LA0/t;->c:I

    iget-object v8, v2, LA0/u;->d:Landroid/view/View;

    iput-object v1, v2, LA0/u;->d:Landroid/view/View;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    iput-object v10, v0, LA0/t;->a:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v10

    iput v10, v0, LA0/t;->b:I

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v10

    iput v10, v0, LA0/t;->d:I

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v0, LA0/t;->e:I

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v0, LA0/t;->f:I

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v10

    iput v10, v0, LA0/t;->g:I

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    iput v10, v0, LA0/t;->h:I

    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    move-result v10

    iput v10, v0, LA0/t;->i:I

    invoke-virtual {v8}, Landroid/view/View;->getScrollY()I

    move-result v10

    iput v10, v0, LA0/t;->j:I

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v10

    iput v10, v0, LA0/t;->k:F

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v10

    iput v10, v0, LA0/t;->l:F

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F

    move-result v10

    iput v10, v0, LA0/t;->m:F

    invoke-virtual {v8}, Landroid/view/View;->getScaleY()F

    move-result v10

    iput v10, v0, LA0/t;->n:F

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v10

    iput v10, v0, LA0/t;->o:F

    invoke-virtual {v8}, Landroid/view/View;->getElevation()F

    move-result v10

    iput v10, v0, LA0/t;->p:F

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    iput v10, v0, LA0/t;->q:I

    invoke-virtual {v8}, Landroid/view/View;->willNotDraw()Z

    move-result v8

    iput-boolean v8, v0, LA0/t;->r:Z

    if-nez v3, :cond_7

    move-object v3, v0

    goto :goto_6

    :cond_7
    iput-object v0, v5, LA0/t;->t:LA0/t;

    :goto_6
    if-eqz v9, :cond_9

    iget v5, v9, LA0/t;->c:I

    :goto_7
    if-lez v5, :cond_9

    iget-object v9, v9, LA0/t;->t:LA0/t;

    add-int/lit8 v5, v5, -0x1

    iget v8, v9, LA0/t;->c:I

    add-int/2addr v5, v8

    if-nez v7, :cond_8

    new-instance v10, LA0/t;

    invoke-direct {v10}, LA0/t;-><init>()V

    move-object v12, v10

    move-object v10, v7

    move-object v7, v12

    goto :goto_8

    :cond_8
    iget-object v10, v7, LA0/t;->t:LA0/t;

    iput-object v1, v7, LA0/t;->t:LA0/t;

    :goto_8
    iget-object v11, v9, LA0/t;->a:Ljava/lang/Class;

    iput-object v11, v7, LA0/t;->a:Ljava/lang/Class;

    iget v11, v9, LA0/t;->b:I

    iput v11, v7, LA0/t;->b:I

    iput v8, v7, LA0/t;->c:I

    iget v8, v9, LA0/t;->d:I

    iput v8, v7, LA0/t;->d:I

    iget v8, v9, LA0/t;->e:I

    iput v8, v7, LA0/t;->e:I

    iget v8, v9, LA0/t;->f:I

    iput v8, v7, LA0/t;->f:I

    iget v8, v9, LA0/t;->g:I

    iput v8, v7, LA0/t;->g:I

    iget v8, v9, LA0/t;->h:I

    iput v8, v7, LA0/t;->h:I

    iget v8, v9, LA0/t;->i:I

    iput v8, v7, LA0/t;->i:I

    iget v8, v9, LA0/t;->j:I

    iput v8, v7, LA0/t;->j:I

    iget v8, v9, LA0/t;->m:F

    iput v8, v7, LA0/t;->m:F

    iget v8, v9, LA0/t;->n:F

    iput v8, v7, LA0/t;->n:F

    iget v8, v9, LA0/t;->k:F

    iput v8, v7, LA0/t;->k:F

    iget v8, v9, LA0/t;->l:F

    iput v8, v7, LA0/t;->l:F

    iget v8, v9, LA0/t;->o:F

    iput v8, v7, LA0/t;->o:F

    iget v8, v9, LA0/t;->q:I

    iput v8, v7, LA0/t;->q:I

    iget-boolean v8, v9, LA0/t;->r:Z

    iput-boolean v8, v7, LA0/t;->r:Z

    iget-boolean v8, v9, LA0/t;->s:Z

    iput-boolean v8, v7, LA0/t;->s:Z

    iget v8, v9, LA0/t;->p:F

    iput v8, v7, LA0/t;->p:F

    iput-object v7, v0, LA0/t;->t:LA0/t;

    move-object v0, v7

    move-object v7, v10

    goto :goto_7

    :cond_9
    move-object v5, v0

    move-object v0, v7

    iget-object v7, v2, LA0/u;->f:LA0/u;

    if-nez v7, :cond_a

    sget-object v0, LA0/x;->g:LA0/a;

    new-instance v1, LA0/q;

    invoke-direct {v1, p0, p1, v2, v4}, LA0/q;-><init>(Ljava/lang/Object;LA0/u;LA0/u;I)V

    invoke-virtual {v0, v1}, LA0/a;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, LA0/w;->j:[LA0/t;

    iget p0, p0, LA0/w;->g:I

    aput-object v3, p1, p0

    return-void

    :cond_a
    move-object v2, v7

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
