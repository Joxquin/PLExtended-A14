.class public final synthetic Lcom/android/quickstep/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/f2;->a:I

    iput-boolean p2, p0, Lcom/android/quickstep/f2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/f2;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean p0, p0, Lcom/android/quickstep/f2;->b:Z

    check-cast p1, Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->b(ZLcom/android/quickstep/TouchInteractionService;)V

    return-void

    :pswitch_1
    iget-boolean p0, p0, Lcom/android/quickstep/f2;->b:Z

    check-cast p1, Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->r(ZLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void

    :goto_0
    iget-boolean p0, p0, Lcom/android/quickstep/f2;->b:Z

    check-cast p1, Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->f(ZLcom/android/quickstep/TouchInteractionService;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
