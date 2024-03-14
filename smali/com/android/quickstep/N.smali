.class public final synthetic Lcom/android/quickstep/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/statemanager/StateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/N;->d:Lcom/android/launcher3/statemanager/StateManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/N;->d:Lcom/android/launcher3/statemanager/StateManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState(Z)V

    return-void
.end method
