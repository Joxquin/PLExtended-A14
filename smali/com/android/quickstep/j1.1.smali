.class public final synthetic Lcom/android/quickstep/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/TaskAnimationManager;

.field public final synthetic e:Landroid/content/Intent;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TaskAnimationManager;Landroid/content/Intent;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/j1;->d:Lcom/android/quickstep/TaskAnimationManager;

    iput-object p2, p0, Lcom/android/quickstep/j1;->e:Landroid/content/Intent;

    iput-wide p3, p0, Lcom/android/quickstep/j1;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/j1;->d:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v1, p0, Lcom/android/quickstep/j1;->e:Landroid/content/Intent;

    iget-wide v2, p0, Lcom/android/quickstep/j1;->f:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/quickstep/TaskAnimationManager;->c(Lcom/android/quickstep/TaskAnimationManager;Landroid/content/Intent;J)V

    return-void
.end method
