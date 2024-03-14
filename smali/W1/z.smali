.class public final synthetic LW1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LW1/z;->d:I

    iput-object p2, p0, LW1/z;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    iget v0, p0, LW1/z;->d:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LW1/z;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    sget v0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->g:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :pswitch_1
    iget-object p0, p0, LW1/z;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    sget v0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->g:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :goto_0
    iget-object p0, p0, LW1/z;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    iget v0, v0, Lj0/n;->i:I

    iget-object v2, v2, LK2/C;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK2/A;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, LK2/A;->b:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    goto :goto_1

    :cond_0
    move-object v0, v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->e:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iget-object v4, v3, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->r:LK2/C;

    iget-object v3, v3, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->h:Lj0/n;

    iget v3, v3, Lj0/n;->i:I

    iget-object v4, v4, LK2/C;->d:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK2/A;

    if-eqz v3, :cond_1

    iget-object v2, v3, LK2/A;->d:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    :cond_1
    const/4 v3, 0x0

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cannot handle long click for: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartspaceViewContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_5

    iget-object p1, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->t:LL2/d;

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    new-instance v2, LL2/c;

    invoke-direct {v2}, LL2/c;-><init>()V

    iget-object v4, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->u:Ljava/lang/String;

    iget v5, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->v:F

    invoke-static {v4, v5}, LK2/e;->d(Ljava/lang/String;F)I

    move-result v4

    iput v4, v2, LL2/c;->b:I

    iget-object v4, v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v3

    :goto_2
    iput v3, v2, LL2/c;->e:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const/4 v3, -0x1

    iput v3, v2, LL2/c;->g:I

    new-instance v3, LL2/d;

    invoke-direct {v3, v2}, LL2/d;-><init>(LL2/c;)V

    move-object v2, v3

    :goto_3
    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->b(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/app/smartspace/SmartspaceTarget;LL2/d;)V

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_6

    iget-object p1, v2, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->e:Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {v2}, Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;->r()LL2/d;

    move-result-object v0

    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/SmartspaceViewContainer;->b(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/app/smartspace/SmartspaceTarget;LL2/d;)V

    :cond_6
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
