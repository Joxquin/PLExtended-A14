.class public final synthetic Lcom/android/launcher3/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/LauncherAnimationRunner;

.field public final synthetic e:Ljava/lang/Runnable;

.field public final synthetic f:I

.field public final synthetic g:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic h:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic i:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAnimationRunner;Ljava/lang/Runnable;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Y;->d:Lcom/android/launcher3/LauncherAnimationRunner;

    iput-object p2, p0, Lcom/android/launcher3/Y;->e:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/launcher3/Y;->f:I

    iput-object p4, p0, Lcom/android/launcher3/Y;->g:[Landroid/view/RemoteAnimationTarget;

    iput-object p5, p0, Lcom/android/launcher3/Y;->h:[Landroid/view/RemoteAnimationTarget;

    iput-object p6, p0, Lcom/android/launcher3/Y;->i:[Landroid/view/RemoteAnimationTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/Y;->d:Lcom/android/launcher3/LauncherAnimationRunner;

    iget-object v1, p0, Lcom/android/launcher3/Y;->e:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/launcher3/Y;->f:I

    iget-object v3, p0, Lcom/android/launcher3/Y;->g:[Landroid/view/RemoteAnimationTarget;

    iget-object v4, p0, Lcom/android/launcher3/Y;->h:[Landroid/view/RemoteAnimationTarget;

    iget-object v5, p0, Lcom/android/launcher3/Y;->i:[Landroid/view/RemoteAnimationTarget;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/LauncherAnimationRunner;->b(Lcom/android/launcher3/LauncherAnimationRunner;Ljava/lang/Runnable;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method
