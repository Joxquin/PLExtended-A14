.class public final synthetic LT1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LT1/g;


# direct methods
.method public synthetic constructor <init>(LT1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT1/d;->d:LT1/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, LT1/d;->d:LT1/g;

    invoke-virtual {p0}, LT1/g;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LT1/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    new-instance v2, LT1/f;

    invoke-direct {v2, p0, v0}, LT1/f;-><init>(LT1/g;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method
