.class public final synthetic Landroidx/fragment/app/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/p0;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/p0;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/b0;->a:I

    iput-object p1, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/b0;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/fragment/app/b0;->b:Landroidx/fragment/app/p0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, LB/g;

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, LB/g;->a:Z

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/p0;->m(ZZ)V

    :cond_0
    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/p0;->l(Z)V

    :cond_1
    return-void

    :pswitch_2
    check-cast p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/p0;->h(ZLandroid/content/res/Configuration;)V

    :cond_2
    return-void

    :goto_0
    check-cast p1, LB/k;

    invoke-virtual {p0}, Landroidx/fragment/app/p0;->J()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p1, p1, LB/k;->a:Z

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/p0;->r(ZZ)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
