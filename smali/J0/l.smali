.class public final synthetic LJ0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/graphics/Picture;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Picture;I)V
    .locals 0

    iput p2, p0, LJ0/l;->a:I

    iput-object p1, p0, LJ0/l;->b:Landroid/graphics/Picture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget v0, p0, LJ0/l;->a:I

    iget-object p0, p0, LJ0/l;->b:Landroid/graphics/Picture;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    return-void

    :goto_0
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
