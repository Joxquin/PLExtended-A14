.class public final synthetic LK2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:LL2/d;

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Ln1/c;

.field public final synthetic h:Landroid/app/smartspace/SmartspaceAction;

.field public final synthetic i:Z

.field public final synthetic j:Landroid/view/View$OnClickListener;

.field public final synthetic k:Ln1/d;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Landroid/app/smartspace/SmartspaceTarget;


# direct methods
.method public synthetic constructor <init>(LL2/d;IZLn1/c;Landroid/app/smartspace/SmartspaceAction;ZLn1/d;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/c;->d:LL2/d;

    iput p2, p0, LK2/c;->e:I

    iput-boolean p3, p0, LK2/c;->f:Z

    iput-object p4, p0, LK2/c;->g:Ln1/c;

    iput-object p5, p0, LK2/c;->h:Landroid/app/smartspace/SmartspaceAction;

    iput-boolean p6, p0, LK2/c;->i:Z

    const/4 p1, 0x0

    iput-object p1, p0, LK2/c;->j:Landroid/view/View$OnClickListener;

    iput-object p7, p0, LK2/c;->k:Ln1/d;

    iput-object p8, p0, LK2/c;->l:Ljava/lang/String;

    iput-object p9, p0, LK2/c;->m:Landroid/app/smartspace/SmartspaceTarget;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, LK2/c;->d:LL2/d;

    iget v1, p0, LK2/c;->e:I

    iget-boolean v2, p0, LK2/c;->f:Z

    iget-object v3, p0, LK2/c;->g:Ln1/c;

    iget-object v4, p0, LK2/c;->h:Landroid/app/smartspace/SmartspaceAction;

    iget-object v5, p0, LK2/c;->j:Landroid/view/View$OnClickListener;

    iget-object v6, p0, LK2/c;->k:Ln1/d;

    iget-object v7, p0, LK2/c;->l:Ljava/lang/String;

    iget-object p0, p0, LK2/c;->m:Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v0, :cond_1

    iget-object v8, v0, LL2/d;->h:LL2/h;

    if-eqz v8, :cond_0

    iput v1, v8, LL2/h;->b:I

    :cond_0
    sget-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-static {v1, v0}, LL2/a;->a(LK2/G;LL2/d;)V

    :cond_1
    if-nez v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceAction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Ln1/c;->b(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceAction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceAction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Ln1/c;->a(Landroid/view/View;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not launch intent for action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BcSmartspaceDataPlugin"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    invoke-interface {v5, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_4
    if-nez v6, :cond_5

    const-string p0, "Cannot notify target interaction smartspace event: event notifier null."

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    new-instance p1, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    invoke-virtual {p1, p0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    move-result-object p0

    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object p0

    invoke-interface {v6, p0}, Ln1/d;->a(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :goto_1
    return-void
.end method
