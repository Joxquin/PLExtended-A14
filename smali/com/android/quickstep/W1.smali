.class public final synthetic Lcom/android/quickstep/W1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(FI)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/W1;->a:I

    iput p1, p0, Lcom/android/quickstep/W1;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/W1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p0, p0, Lcom/android/quickstep/W1;->b:F

    check-cast p1, Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->w(FLcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void

    :goto_0
    iget p0, p0, Lcom/android/quickstep/W1;->b:F

    check-cast p1, Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->q(FLcom/android/quickstep/TouchInteractionService;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
