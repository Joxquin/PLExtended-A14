.class public final synthetic Lcom/android/launcher3/statehandlers/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;

.field public final synthetic f:I

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;IZI)V
    .locals 0

    iput p4, p0, Lcom/android/launcher3/statehandlers/a;->d:I

    iput-object p1, p0, Lcom/android/launcher3/statehandlers/a;->e:Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;

    iput p2, p0, Lcom/android/launcher3/statehandlers/a;->f:I

    iput-boolean p3, p0, Lcom/android/launcher3/statehandlers/a;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/statehandlers/a;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/a;->e:Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;

    iget v1, p0, Lcom/android/launcher3/statehandlers/a;->f:I

    iget-boolean p0, p0, Lcom/android/launcher3/statehandlers/a;->g:Z

    iget-object v2, v0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;->this$0:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    invoke-static {v2}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->b(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getDisplayId()I

    move-result v2

    if-ne v1, v2, :cond_1

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;->this$0:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    invoke-static {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->d(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)V

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;->this$0:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    invoke-static {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->c(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)V

    :cond_1
    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/a;->e:Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;

    iget v1, p0, Lcom/android/launcher3/statehandlers/a;->f:I

    iget-boolean p0, p0, Lcom/android/launcher3/statehandlers/a;->g:Z

    iget-object v2, v0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;->this$0:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    invoke-static {v2}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->b(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getDisplayId()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController$1;->this$0:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->setFreeformTasksVisible(Z)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
