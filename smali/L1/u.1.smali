.class public final synthetic LL1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LL1/w;


# direct methods
.method public synthetic constructor <init>(LL1/w;I)V
    .locals 0

    iput p2, p0, LL1/u;->d:I

    iput-object p1, p0, LL1/u;->e:LL1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, LL1/u;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LL1/u;->e:LL1/w;

    iget-object v0, p0, LL1/w;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, LL1/w;->r:LL1/n;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, LL1/w;->r:LL1/n;

    const/4 v0, 0x0

    iput-boolean v0, p0, LL1/w;->n:Z

    return-void

    :goto_0
    iget-object p0, p0, LL1/u;->e:LL1/w;

    invoke-virtual {p0}, LL1/w;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
