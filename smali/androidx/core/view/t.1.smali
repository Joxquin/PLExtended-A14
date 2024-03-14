.class public final Landroidx/core/view/t;
.super Landroidx/core/view/v;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    iput p2, p0, Landroidx/core/view/t;->e:I

    const/4 p2, 0x0

    .line 2
    const-class v0, Ljava/lang/Boolean;

    const/16 v1, 0x1c

    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/core/view/v;-><init>(ILjava/lang/Class;II)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Class;III)V
    .locals 0

    .line 3
    iput p5, p0, Landroidx/core/view/t;->e:I

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/view/v;-><init>(ILjava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 0

    iget p0, p0, Landroidx/core/view/t;->e:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Landroidx/core/view/G;->c(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {p1}, Landroidx/core/view/G;->b(Landroid/view/View;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
