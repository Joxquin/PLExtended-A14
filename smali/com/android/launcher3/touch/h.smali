.class public final synthetic Lcom/android/launcher3/touch/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/touch/h;->d:I

    iput-object p2, p0, Lcom/android/launcher3/touch/h;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/touch/h;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/android/launcher3/touch/h;->d:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/launcher3/touch/h;->e:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/touch/h;->f:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/launcher3/touch/h;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    iget-object p0, p0, Lcom/android/launcher3/touch/h;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/touch/h;->e:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/touch/h;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-static {p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    sget p2, Lcom/android/launcher3/util/ItemInfoMatcher;->a:I

    new-instance p2, Lcom/android/launcher3/util/n;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/android/launcher3/util/n;-><init>(ILjava/lang/Object;)V

    const-string p0, "user explicitly removes disabled shortcut"

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/Workspace;->persistRemoveItemsByMatcher(Ljava/util/function/Predicate;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
