.class public final synthetic Lcom/android/quickstep/views/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/views/a0;->a:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/quickstep/views/a0;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onAnimationStarted(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/a0;->a:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/quickstep/views/a0;->b:Landroid/os/Handler;

    invoke-static {v0, p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->l(Ljava/lang/Runnable;Landroid/os/Handler;J)V

    return-void
.end method
