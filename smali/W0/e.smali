.class public final synthetic LW0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW0/e;->d:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, LW0/e;->d:Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    invoke-static {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->a(Lcom/android/launcher3/statehandlers/DesktopVisibilityController;)V

    return-void
.end method
