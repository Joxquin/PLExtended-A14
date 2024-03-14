.class public final synthetic Lcom/android/launcher3/statemanager/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/statemanager/StateManager;

.field public final synthetic e:I

.field public final synthetic f:Lcom/android/launcher3/statemanager/BaseState;

.field public final synthetic g:Lcom/android/launcher3/statemanager/BaseState;

.field public final synthetic h:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/statemanager/StateManager;ILcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/statemanager/a;->d:Lcom/android/launcher3/statemanager/StateManager;

    iput p2, p0, Lcom/android/launcher3/statemanager/a;->e:I

    iput-object p3, p0, Lcom/android/launcher3/statemanager/a;->f:Lcom/android/launcher3/statemanager/BaseState;

    iput-object p4, p0, Lcom/android/launcher3/statemanager/a;->g:Lcom/android/launcher3/statemanager/BaseState;

    iput-object p5, p0, Lcom/android/launcher3/statemanager/a;->h:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/statemanager/a;->d:Lcom/android/launcher3/statemanager/StateManager;

    iget v1, p0, Lcom/android/launcher3/statemanager/a;->e:I

    iget-object v2, p0, Lcom/android/launcher3/statemanager/a;->f:Lcom/android/launcher3/statemanager/BaseState;

    iget-object v3, p0, Lcom/android/launcher3/statemanager/a;->g:Lcom/android/launcher3/statemanager/BaseState;

    iget-object p0, p0, Lcom/android/launcher3/statemanager/a;->h:Landroid/animation/Animator$AnimatorListener;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/launcher3/statemanager/StateManager;->a(Lcom/android/launcher3/statemanager/StateManager;ILcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
