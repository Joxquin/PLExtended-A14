.class public final Landroidx/fragment/app/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroidx/fragment/app/K;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/K;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/y;->d:I

    iput-object p1, p0, Landroidx/fragment/app/y;->e:Landroidx/fragment/app/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/y;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/y;->e:Landroidx/fragment/app/K;

    invoke-virtual {p0}, Landroidx/fragment/app/K;->startPostponedEnterTransition()V

    return-void

    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/y;->e:Landroidx/fragment/app/K;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/K;->callStartTransitionListener(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
