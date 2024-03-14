.class public final synthetic Lcom/android/quickstep/N1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/AbsSwipeUpHandler$Factory;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/N1;->a:I

    iput-object p2, p0, Lcom/android/quickstep/N1;->b:Lcom/android/quickstep/TouchInteractionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .locals 1

    iget v0, p0, Lcom/android/quickstep/N1;->a:I

    iget-object p0, p0, Lcom/android/quickstep/N1;->b:Lcom/android/quickstep/TouchInteractionService;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/TouchInteractionService;->a(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/TouchInteractionService;->d(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
