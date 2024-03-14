.class public final synthetic LY1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LY1/y;

.field public final synthetic f:Ljava/lang/CharSequence;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(LY1/y;Ljava/lang/CharSequence;II)V
    .locals 0

    iput p4, p0, LY1/x;->d:I

    iput-object p1, p0, LY1/x;->e:LY1/y;

    iput-object p2, p0, LY1/x;->f:Ljava/lang/CharSequence;

    iput p3, p0, LY1/x;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LY1/x;->d:I

    iget-object v1, p0, LY1/x;->e:LY1/y;

    iget v2, p0, LY1/x;->g:I

    iget-object p0, p0, LY1/x;->f:Ljava/lang/CharSequence;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1, p0, v2}, LY1/y;->a(LY1/y;Ljava/lang/CharSequence;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {v1, p0, v2}, LY1/y;->c(LY1/y;Ljava/lang/CharSequence;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
