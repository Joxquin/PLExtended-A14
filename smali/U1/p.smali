.class public final LU1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

.field public final synthetic e:LU1/l;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;LU1/l;)V
    .locals 0

    iput-object p1, p0, LU1/p;->d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    iput-object p2, p0, LU1/p;->e:LU1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LU1/p;->d:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    iget-object p0, p0, LU1/p;->e:LU1/l;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->onTargetReceived(LU1/l;)V

    return-void
.end method
