.class public final synthetic Lcom/android/launcher3/touch/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/Launcher;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/i;->d:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/touch/i;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/touch/i;->f:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/touch/i;->d:Lcom/android/launcher3/Launcher;

    iget-object p2, p0, Lcom/android/launcher3/touch/i;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/touch/i;->f:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    sget v0, Lcom/android/launcher3/util/ItemInfoMatcher;->a:I

    new-instance v0, Lcom/android/launcher3/util/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/android/launcher3/util/o;-><init>(Landroid/os/UserHandle;Ljava/util/Set;I)V

    const-string p0, "user explicitly removes the promise app icon"

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/Workspace;->persistRemoveItemsByMatcher(Ljava/util/function/Predicate;Ljava/lang/String;)V

    return-void
.end method
