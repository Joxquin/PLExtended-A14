.class public final LK2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/j;


# instance fields
.field public final synthetic a:Lcom/google/android/systemui/smartspace/BcSmartspaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V
    .locals 0

    iput-object p1, p0, LK2/w;->a:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget-object p0, p0, LK2/w;->a:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->n:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->o:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object p0, p0, LK2/w;->a:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->j:I

    invoke-virtual {v0, v1}, LK2/C;->d(I)Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v0

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->j:I

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    invoke-virtual {v1, p1}, LK2/C;->d(I)Landroid/app/smartspace/SmartspaceTarget;

    move-result-object p1

    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->j:I

    sget-object v2, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->g:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d:Ln1/f;

    const-string v2, "BcSmartspaceView"

    if-nez v1, :cond_0

    const-string p0, "Cannot notify target hidden/shown smartspace events: data provider null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "Cannot notify target hidden smartspace event: previous target is null."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d:Ln1/f;

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ln1/f;->a(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :goto_0
    new-instance v0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    :cond_3
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->d:Ln1/f;

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ln1/f;->a(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void
.end method

.method public final c(IF)V
    .locals 0

    iget-object p0, p0, LK2/w;->a:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->i:Lcom/google/android/systemui/smartspace/PageIndicator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->b(FI)V

    :cond_0
    return-void
.end method
