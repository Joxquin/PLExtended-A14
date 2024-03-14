.class public final synthetic Lcom/android/quickstep/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/util/AppPairsController;

.field public final synthetic e:Lcom/android/launcher3/model/data/FolderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/c;->d:Lcom/android/quickstep/util/AppPairsController;

    iput-object p2, p0, Lcom/android/quickstep/util/c;->e:Lcom/android/launcher3/model/data/FolderInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/c;->d:Lcom/android/quickstep/util/AppPairsController;

    iget-object p0, p0, Lcom/android/quickstep/util/c;->e:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/AppPairsController;->b(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method
