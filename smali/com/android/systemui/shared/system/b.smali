.class public final synthetic Lcom/android/systemui/shared/system/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LH1/a;

.field public final synthetic e:LH1/a;

.field public final synthetic f:Landroid/window/TransitionInfo;

.field public final synthetic g:Landroid/util/ArrayMap;

.field public final synthetic h:Landroid/window/IRemoteTransitionFinishedCallback;


# direct methods
.method public synthetic constructor <init>(LH1/a;LH1/a;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/b;->d:LH1/a;

    iput-object p2, p0, Lcom/android/systemui/shared/system/b;->e:LH1/a;

    iput-object p3, p0, Lcom/android/systemui/shared/system/b;->f:Landroid/window/TransitionInfo;

    iput-object p4, p0, Lcom/android/systemui/shared/system/b;->g:Landroid/util/ArrayMap;

    iput-object p5, p0, Lcom/android/systemui/shared/system/b;->h:Landroid/window/IRemoteTransitionFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shared/system/b;->d:LH1/a;

    iget-object v1, p0, Lcom/android/systemui/shared/system/b;->e:LH1/a;

    iget-object v2, p0, Lcom/android/systemui/shared/system/b;->f:Landroid/window/TransitionInfo;

    iget-object v3, p0, Lcom/android/systemui/shared/system/b;->g:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/systemui/shared/system/b;->h:Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat$1;->a(LH1/a;LH1/a;Landroid/window/TransitionInfo;Landroid/util/ArrayMap;Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void
.end method
