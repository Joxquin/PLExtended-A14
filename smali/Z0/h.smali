.class public final synthetic LZ0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;I)V
    .locals 0

    iput p2, p0, LZ0/h;->d:I

    iput-object p1, p0, LZ0/h;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, LZ0/h;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LZ0/h;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->b(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;Landroid/view/View;)V

    return-void

    :goto_0
    iget-object p0, p0, LZ0/h;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setExpanded(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
