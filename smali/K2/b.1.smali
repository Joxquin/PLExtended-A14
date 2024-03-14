.class public final synthetic LK2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:LL2/d;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/app/smartspace/uitemplatedata/TapAction;

.field public final synthetic h:Z

.field public final synthetic i:Landroid/view/View$OnClickListener;

.field public final synthetic j:Ln1/d;

.field public final synthetic k:Landroid/app/smartspace/SmartspaceTarget;


# direct methods
.method public synthetic constructor <init>(LL2/d;ILjava/lang/String;Landroid/app/smartspace/uitemplatedata/TapAction;ZLn1/d;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/b;->d:LL2/d;

    iput p2, p0, LK2/b;->e:I

    iput-object p3, p0, LK2/b;->f:Ljava/lang/String;

    iput-object p4, p0, LK2/b;->g:Landroid/app/smartspace/uitemplatedata/TapAction;

    iput-boolean p5, p0, LK2/b;->h:Z

    const/4 p1, 0x0

    iput-object p1, p0, LK2/b;->i:Landroid/view/View$OnClickListener;

    iput-object p6, p0, LK2/b;->j:Ln1/d;

    iput-object p7, p0, LK2/b;->k:Landroid/app/smartspace/SmartspaceTarget;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, LK2/b;->d:LL2/d;

    iget v1, p0, LK2/b;->e:I

    iget-object v2, p0, LK2/b;->f:Ljava/lang/String;

    iget-object v3, p0, LK2/b;->g:Landroid/app/smartspace/uitemplatedata/TapAction;

    iget-object v4, p0, LK2/b;->i:Landroid/view/View$OnClickListener;

    iget-object v5, p0, LK2/b;->j:Ln1/d;

    iget-object p0, p0, LK2/b;->k:Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v0, :cond_1

    iget-object v6, v0, LL2/d;->h:LL2/h;

    if-eqz v6, :cond_0

    iput v1, v6, LL2/h;->b:I

    :cond_0
    sget-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-static {v1, v0}, LL2/a;->a(LK2/G;LL2/d;)V

    :cond_1
    sget-object v0, LK2/e;->a:Ln1/c;

    if-nez v0, :cond_2

    new-instance v0, LK2/d;

    invoke-direct {v0, v2}, LK2/d;-><init>(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/app/smartspace/uitemplatedata/TapAction;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Landroid/app/smartspace/uitemplatedata/TapAction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move v6, v1

    :goto_1
    if-nez v6, :cond_6

    :try_start_0
    invoke-virtual {v3}, Landroid/app/smartspace/uitemplatedata/TapAction;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/app/smartspace/uitemplatedata/TapAction;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v0, p1, v6}, Ln1/c;->b(Landroid/view/View;Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroid/app/smartspace/uitemplatedata/TapAction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Landroid/app/smartspace/uitemplatedata/TapAction;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-interface {v0, p1, v6}, Ln1/c;->a(Landroid/view/View;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not launch intent for action: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BcSmartspaceDataPlugin"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    invoke-interface {v4, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_7
    if-nez v5, :cond_8

    const-string p0, "Cannot notify target interaction smartspace event: event notifier null."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    new-instance p1, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    invoke-direct {p1, v1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    invoke-virtual {p1, p0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    move-result-object p0

    invoke-virtual {v3}, Landroid/app/smartspace/uitemplatedata/TapAction;->getId()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object p0

    invoke-interface {v5, p0}, Ln1/d;->a(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :goto_3
    return-void
.end method
