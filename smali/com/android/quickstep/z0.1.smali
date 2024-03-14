.class public final synthetic Lcom/android/quickstep/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/RecentsAnimationController;

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/z0;->d:Lcom/android/quickstep/RecentsAnimationController;

    iput-boolean p2, p0, Lcom/android/quickstep/z0;->e:Z

    iput-boolean p3, p0, Lcom/android/quickstep/z0;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/z0;->d:Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean v1, p0, Lcom/android/quickstep/z0;->e:Z

    iget-boolean p0, p0, Lcom/android/quickstep/z0;->f:Z

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/RecentsAnimationController;->a(Lcom/android/quickstep/RecentsAnimationController;ZZ)V

    return-void
.end method
