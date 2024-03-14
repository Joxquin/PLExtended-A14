.class public final synthetic Lcom/android/quickstep/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/icons/IconCache;

.field public final synthetic b:Lcom/android/launcher3/model/data/FolderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/icons/IconCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/util/b;->a:Lcom/android/launcher3/icons/IconCache;

    iput-object p1, p0, Lcom/android/quickstep/util/b;->b:Lcom/android/launcher3/model/data/FolderInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/b;->a:Lcom/android/launcher3/icons/IconCache;

    iget-object p0, p0, Lcom/android/quickstep/util/b;->b:Lcom/android/launcher3/model/data/FolderInfo;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/util/AppPairsController;->a(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
