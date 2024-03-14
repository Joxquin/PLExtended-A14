.class public final LU1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/window/TransitionInfo$Change;

.field public final b:Landroid/window/TransitionInfo$Change;

.field public final c:Landroid/window/TransitionInfo$Change;

.field public final d:Landroid/window/IRemoteTransitionFinishedCallback;


# direct methods
.method public constructor <init>(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo$Change;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    const-string p3, "finishCB"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU1/l;->a:Landroid/window/TransitionInfo$Change;

    iput-object p2, p0, LU1/l;->b:Landroid/window/TransitionInfo$Change;

    iput-object p4, p0, LU1/l;->c:Landroid/window/TransitionInfo$Change;

    iput-object p5, p0, LU1/l;->d:Landroid/window/IRemoteTransitionFinishedCallback;

    return-void
.end method
