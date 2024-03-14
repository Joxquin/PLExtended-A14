.class public final synthetic Lcom/android/quickstep/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic b:Z

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/g2;->a:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput-boolean p2, p0, Lcom/android/quickstep/g2;->b:Z

    iput-boolean p3, p0, Lcom/android/quickstep/g2;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/g2;->a:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget-boolean v1, p0, Lcom/android/quickstep/g2;->b:Z

    iget-boolean p0, p0, Lcom/android/quickstep/g2;->c:Z

    check-cast p1, Lcom/android/quickstep/TouchInteractionService;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->c(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZLcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method
