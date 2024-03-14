.class public final synthetic Lcom/android/quickstep/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/util/AppPairsController;

.field public final synthetic e:Lcom/android/launcher3/model/data/FolderInfo;

.field public final synthetic f:Lcom/android/launcher3/icons/IconCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/icons/IconCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/d;->d:Lcom/android/quickstep/util/AppPairsController;

    iput-object p2, p0, Lcom/android/quickstep/util/d;->e:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object p3, p0, Lcom/android/quickstep/util/d;->f:Lcom/android/launcher3/icons/IconCache;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/d;->d:Lcom/android/quickstep/util/AppPairsController;

    iget-object v1, p0, Lcom/android/quickstep/util/d;->e:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/quickstep/util/d;->f:Lcom/android/launcher3/icons/IconCache;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/util/AppPairsController;->c(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/icons/IconCache;)V

    return-void
.end method
