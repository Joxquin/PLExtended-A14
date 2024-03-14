.class public final synthetic LP1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LP1/f;


# direct methods
.method public synthetic constructor <init>(LP1/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP1/b;->d:LP1/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, LP1/b;->d:LP1/f;

    iget-boolean v0, p0, LP1/f;->q:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, LP1/f;->p:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, LP1/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, LP1/f;->q:Z

    iget v0, p0, LP1/f;->r:I

    add-int/2addr v0, v1

    iget-object v3, p0, LP1/f;->f:Lz3/c;

    invoke-virtual {v3}, Lz3/c;->j()Lz3/f;

    move-result-object v3

    invoke-virtual {v3}, Lz3/f;->c()I

    move-result v3

    if-le v0, v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;->d:Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    iget-object v3, p0, LP1/f;->f:Lz3/c;

    invoke-virtual {v3}, Lz3/c;->j()Lz3/f;

    move-result-object v3

    invoke-virtual {v3}, Lz3/f;->e()Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    move-result-object v3

    if-ne v3, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v0, p0, LP1/f;->u:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, LP1/f;->u:Z

    iget v0, p0, LP1/f;->r:I

    iget v3, p0, LP1/f;->s:I

    add-int/2addr v0, v3

    iget-object v3, p0, LP1/f;->f:Lz3/c;

    invoke-virtual {v3}, Lz3/c;->j()Lz3/f;

    move-result-object v3

    invoke-virtual {v3}, Lz3/f;->d()I

    move-result v3

    rem-int/2addr v0, v3

    if-eqz v0, :cond_4

    iget v0, p0, LP1/f;->s:I

    add-int/2addr v0, v1

    iput v0, p0, LP1/f;->s:I

    goto :goto_1

    :cond_4
    move v2, v1

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    iput-boolean v1, p0, LP1/f;->p:Z

    iget v0, p0, LP1/f;->r:I

    add-int/2addr v0, v1

    iput v0, p0, LP1/f;->r:I

    iget-object v0, p0, LP1/f;->x:LP1/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, LP1/a;->b:J

    iget-object p0, p0, LP1/f;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    return-void
.end method
