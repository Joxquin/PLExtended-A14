.class public final synthetic LY1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LY1/y;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(LY1/y;III)V
    .locals 0

    iput p4, p0, LY1/v;->d:I

    iput-object p1, p0, LY1/v;->e:LY1/y;

    iput p2, p0, LY1/v;->f:I

    iput p3, p0, LY1/v;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LY1/v;->d:I

    iget-object v1, p0, LY1/v;->e:LY1/y;

    iget v2, p0, LY1/v;->g:I

    iget p0, p0, LY1/v;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1, p0, v2}, LY1/y;->e(LY1/y;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {v1, p0, v2}, LY1/y;->b(LY1/y;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {v1, p0, v2}, LY1/y;->d(LY1/y;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
