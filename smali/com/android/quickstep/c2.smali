.class public final synthetic Lcom/android/quickstep/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/TouchInteractionService$TISBinder;

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/c2;->d:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iput p2, p0, Lcom/android/quickstep/c2;->e:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/c2;->d:Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget p0, p0, Lcom/android/quickstep/c2;->e:F

    invoke-static {v0, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->o(Lcom/android/quickstep/TouchInteractionService$TISBinder;F)V

    return-void
.end method
