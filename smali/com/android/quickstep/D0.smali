.class public final synthetic Lcom/android/quickstep/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/RecentsAnimationController;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/D0;->d:Lcom/android/quickstep/RecentsAnimationController;

    iput p2, p0, Lcom/android/quickstep/D0;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/D0;->d:Lcom/android/quickstep/RecentsAnimationController;

    iget p0, p0, Lcom/android/quickstep/D0;->e:I

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationController;->f(Lcom/android/quickstep/RecentsAnimationController;I)V

    return-void
.end method
