.class public final synthetic Lcom/android/quickstep/views/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/util/BorderAnimator$BorderBoundsBuilder;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/views/X;->a:I

    iput-object p1, p0, Lcom/android/quickstep/views/X;->b:Lcom/android/quickstep/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateBorderBounds(Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/X;->a:I

    iget-object p0, p0, Lcom/android/quickstep/views/X;->b:Lcom/android/quickstep/views/TaskView;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->updateBorderBounds(Landroid/graphics/Rect;)V

    return-void

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->updateBorderBounds(Landroid/graphics/Rect;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
