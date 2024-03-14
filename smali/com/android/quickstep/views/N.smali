.class public final synthetic Lcom/android/quickstep/views/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/N;->d:I

    iput-object p2, p0, Lcom/android/quickstep/views/N;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/N;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/views/N;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/TaskMenuView;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/TaskMenuView;->b(Lcom/android/quickstep/views/TaskMenuView;Landroid/view/View;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/views/N;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
