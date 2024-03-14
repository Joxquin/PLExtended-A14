.class public final synthetic Lc1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX/v;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lc1/e;->a:I

    iput-object p1, p0, Lc1/e;->b:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

    iput-object p2, p0, Lc1/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/Preference;)V
    .locals 7

    iget p1, p0, Lc1/e;->a:I

    const-string v0, "OVERVIEW_NAVIGATION"

    const-string v1, "BACK_NAVIGATION"

    const-string v2, "HOME_NAVIGATION"

    const-string v3, "tutorial_steps"

    const/4 v4, 0x0

    const-string v5, "use_tutorial_menu"

    iget-object v6, p0, Lc1/e;->b:Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;

    iget-object p0, p0, Lc1/e;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroid/content/Intent;

    sget p1, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->d:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroidx/fragment/app/K;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/content/Intent;

    sget p1, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->d:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroidx/fragment/app/K;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    check-cast p0, Landroid/content/Intent;

    sget p1, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->d:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroidx/fragment/app/K;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_3
    check-cast p0, Landroid/content/Intent;

    sget p1, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->d:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroidx/fragment/app/K;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_4
    check-cast p0, Landroid/content/Intent;

    sget p1, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->d:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-virtual {p0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroidx/fragment/app/K;->startActivity(Landroid/content/Intent;)V

    return-void

    :goto_0
    check-cast p0, Landroid/content/Context;

    sget p1, Lcom/android/launcher3/uioverrides/flags/DeveloperOptionsFragment;->d:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, p1}, Landroidx/fragment/app/K;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
