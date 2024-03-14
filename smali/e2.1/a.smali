.class public final synthetic Le2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le2/a;->d:I

    iput-object p2, p0, Le2/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Le2/a;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Le2/a;->e:Ljava/lang/Object;

    check-cast p0, Le2/h;

    iget-object v0, p0, Le2/h;->f:Landroid/app/search/SearchSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/search/SearchSession;->destroy()V

    iput-object v1, p0, Le2/h;->f:Landroid/app/search/SearchSession;

    :cond_0
    iget-object v0, p0, Le2/h;->a:Landroid/content/Context;

    const-class v1, Landroid/app/search/SearchUiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchUiManager;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "launcher.gridSize"

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Landroid/app/search/SearchContext;

    const v3, 0x8081

    const/16 v4, 0xc8

    invoke-direct {v2, v3, v4, v1}, Landroid/app/search/SearchContext;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/app/search/SearchUiManager;->createSearchSession(Landroid/app/search/SearchContext;)Landroid/app/search/SearchSession;

    move-result-object v0

    iput-object v0, p0, Le2/h;->f:Landroid/app/search/SearchSession;

    iget-object v1, p0, Le2/h;->c:Landroid/os/Handler;

    new-instance v2, Le2/b;

    invoke-direct {v2, p0, v0}, Le2/b;-><init>(Le2/h;Landroid/app/search/SearchSession;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    iget-object p0, p0, Le2/a;->e:Ljava/lang/Object;

    check-cast p0, Le2/h;

    iget-object v0, p0, Le2/h;->f:Landroid/app/search/SearchSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/search/SearchSession;->destroy()V

    iput-object v1, p0, Le2/h;->f:Landroid/app/search/SearchSession;

    :cond_1
    return-void

    :goto_0
    iget-object p0, p0, Le2/a;->e:Ljava/lang/Object;

    check-cast p0, Le2/g;

    invoke-virtual {p0}, Le2/g;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
