.class public final synthetic Lcom/android/quickstep/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/b0;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/quickstep/b0;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/b0;->a:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/quickstep/b0;->b:Ljava/util/concurrent/CountDownLatch;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->x(Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method
