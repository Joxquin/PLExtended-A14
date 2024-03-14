.class public final Lq/b;
.super Lq/i;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public final synthetic h:Lq/f;


# direct methods
.method public constructor <init>(Lq/f;I)V
    .locals 1

    iput p2, p0, Lq/b;->g:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    iput-object p1, p0, Lq/b;->h:Lq/f;

    iget p1, p1, Lq/m;->f:I

    invoke-direct {p0, p1}, Lq/i;-><init>(I)V

    return-void

    :cond_0
    iput-object p1, p0, Lq/b;->h:Lq/f;

    iget p1, p1, Lq/m;->f:I

    invoke-direct {p0, p1}, Lq/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lq/b;->g:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lq/b;->h:Lq/f;

    invoke-virtual {p0, p1}, Lq/m;->g(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Lq/b;->h:Lq/f;

    invoke-virtual {p0, p1}, Lq/m;->j(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Lq/b;->g:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lq/b;->h:Lq/f;

    invoke-virtual {p0, p1}, Lq/m;->h(I)Ljava/lang/Object;

    return-void

    :goto_0
    iget-object p0, p0, Lq/b;->h:Lq/f;

    invoke-virtual {p0, p1}, Lq/m;->h(I)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
