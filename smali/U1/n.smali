.class public final LU1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;Z)V
    .locals 0

    iput-object p1, p0, LU1/n;->d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    iput-boolean p2, p0, LU1/n;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LU1/n;->d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    iget-boolean p0, p0, LU1/n;->e:Z

    invoke-static {v0, p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->access$onAnimationFinished(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;Z)V

    return-void
.end method
