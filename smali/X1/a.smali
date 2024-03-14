.class public final synthetic LX1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LX1/f;

.field public final synthetic f:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(LX1/f;Landroid/graphics/Rect;I)V
    .locals 0

    iput p3, p0, LX1/a;->d:I

    iput-object p1, p0, LX1/a;->e:LX1/f;

    iput-object p2, p0, LX1/a;->f:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LX1/a;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LX1/a;->e:LX1/f;

    iget-object p0, p0, LX1/a;->f:Landroid/graphics/Rect;

    invoke-static {v0, p0}, LX1/f;->g(LX1/f;Landroid/graphics/Rect;)V

    return-void

    :goto_0
    iget-object v0, p0, LX1/a;->e:LX1/f;

    iget-object p0, p0, LX1/a;->f:Landroid/graphics/Rect;

    invoke-static {v0, p0}, LX1/f;->e(LX1/f;Landroid/graphics/Rect;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
