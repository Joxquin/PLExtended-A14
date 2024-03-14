.class public final LU1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;)V
    .locals 0

    iput-object p1, p0, LU1/i;->a:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/launcher3/Launcher;

    check-cast p2, Ljava/lang/Boolean;

    iget-object p0, p0, LU1/i;->a:Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/overlay/SwipeTransition;->setCallbacks(Lcom/android/launcher3/Workspace;)V

    const/4 p0, 0x1

    return p0
.end method
