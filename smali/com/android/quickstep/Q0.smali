.class public final synthetic Lcom/android/quickstep/Q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/RemoteAnimationTargets;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RemoteAnimationTargets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/Q0;->a:Lcom/android/quickstep/RemoteAnimationTargets;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/Q0;->a:Lcom/android/quickstep/RemoteAnimationTargets;

    check-cast p1, Landroid/view/RemoteAnimationTarget;

    invoke-static {p0, p1}, Lcom/android/quickstep/RemoteTargetGluer;->b(Lcom/android/quickstep/RemoteAnimationTargets;Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method
