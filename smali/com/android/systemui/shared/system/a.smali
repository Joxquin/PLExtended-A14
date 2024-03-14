.class public final synthetic Lcom/android/systemui/shared/system/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/a;->d:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/system/a;->d:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-static {p0}, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->a(Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
