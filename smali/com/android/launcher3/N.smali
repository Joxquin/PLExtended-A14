.class public final synthetic Lcom/android/launcher3/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/Launcher;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Landroid/content/Intent;

.field public final synthetic g:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic h:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/N;->d:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/N;->e:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/N;->f:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/launcher3/N;->g:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p5, p0, Lcom/android/launcher3/N;->h:Lcom/android/launcher3/util/RunnableList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/N;->d:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/N;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/N;->f:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/launcher3/N;->g:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p0, p0, Lcom/android/launcher3/N;->h:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/X;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/android/launcher3/X;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    :goto_0
    return-void
.end method
