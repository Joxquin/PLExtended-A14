.class public final synthetic Landroidx/fragment/app/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/P;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/P;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/M;->a:I

    iput-object p1, p0, Landroidx/fragment/app/M;->b:Landroidx/fragment/app/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/M;->a:I

    iget-object p0, p0, Landroidx/fragment/app/M;->b:Landroidx/fragment/app/P;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/content/res/Configuration;

    invoke-static {p0, p1}, Landroidx/fragment/app/P;->h(Landroidx/fragment/app/P;Landroid/content/res/Configuration;)V

    return-void

    :goto_0
    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Landroidx/fragment/app/P;->g(Landroidx/fragment/app/P;Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
