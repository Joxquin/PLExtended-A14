.class public final synthetic Lcom/android/quickstep/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/e2;->a:I

    iput p1, p0, Lcom/android/quickstep/e2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/e2;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p0, p0, Lcom/android/quickstep/e2;->b:I

    check-cast p1, Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->x(ILcom/android/quickstep/TouchInteractionService;)V

    return-void

    :goto_0
    iget p0, p0, Lcom/android/quickstep/e2;->b:I

    check-cast p1, Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->s(ILcom/android/quickstep/TouchInteractionService;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
