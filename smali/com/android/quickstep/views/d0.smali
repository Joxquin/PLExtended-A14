.class public final synthetic Lcom/android/quickstep/views/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/d0;->a:Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/d0;->a:Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->g(Lcom/android/quickstep/util/TaskRemovedDuringLaunchListener;J)V

    return-void
.end method
